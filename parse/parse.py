from enum import (Enum, auto)
import re

from model.fanuc_program import *
from error.fanuc_errors import *

def parse_prog(line: str) -> str:
    if not line.startswith("/PROG"):
        raise FanucException("/PROG not found")
    return line.strip().split()[1]


def _parse_tcd(lines: list[str]) -> TCD:
    if not lines[0].startswith("TCD:"):
        raise FanucException("TCD not in TCD start line")
    members = {}
    for line in lines:
        results = re.search(r"(?P<key>\w+)\s= (?P<value>\d+)", line)
        if results is not None:
            members[results.group("key")] = int(results.group("value"))
        else:
            raise FanucException(f"Error parsing TCD line: {line}")

    return TCD(stack_size=members[eTCD.STACK_SIZE],
               task_priority=members[eTCD.TASK_PRIORITY],
               time_slice=members[eTCD.TIME_SLICE],
               busy_lamp_off=members[eTCD.BUSY_LAMP_OFF],
               abort_request=members[eTCD.ABORT_REQUEST],
               pause_request=members[eTCD.PAUSE_REQUEST])


def _find_tcd_end(lines: list[str], start: int) -> int:
    end = start
    while not lines[end].startswith("DEFAULT_GROUP") and end < len(lines):
        end += 1

    return end


def parse_attributes(lines: list[str]) -> Attributes:
    if not lines[0].startswith("/ATTR"):
        raise FanucException("Bad /ATTR section")

    attributes = {}
    int_attributes = ["PROG_SIZE", "VERSION", "LINE_COUNT", "MEMORY_SIZE"]
    search_pattern = r"(?P<key>\w+)\s+= \"?(?P<value>[^;\n\"]+)"

    i = 1
    lines_len = len(lines)
    while i < lines_len:
        line = lines[i]
        if line.startswith("TCD:"):
            tcd_length = _find_tcd_end(lines, i)
            attributes["TCD"] = _parse_tcd(lines[i:tcd_length])
            i += tcd_length - i
            continue

        result = re.search(search_pattern, line)
        if result is None:
            raise FanucException(f"Failed search in attributes: {line}")

        if result.group("key") in int_attributes:
            attributes[result.group("key")] = int(result.group("value"))
        else:
            attributes[result.group("key")] = result.group("value")

        i += 1

    return Attributes(owner=attributes[eAttributes.OWNER],
                      comment=attributes[eAttributes.COMMENT],
                      program_size=attributes[eAttributes.PROG_SIZE],
                      date_created=attributes[eAttributes.DATE_CREATED],
                      date_modified=attributes[eAttributes.DATE_MODIFIED],
                      file_name=attributes[eAttributes.FILE_NAME],
                      version=attributes[eAttributes.VERSION],
                      line_count=attributes[eAttributes.LINE_COUNT],
                      memory_size=attributes[eAttributes.MEMORY_SIZE],
                      protect_status=attributes[eAttributes.PROTECT_STATUS],
                      tcd=attributes[eAttributes.TCD],
                      default_group=attributes[eAttributes.DEFAULT_GROUP],
                      control_node=attributes[eAttributes.CONTROL_NODE])


def parse_application(lines: list[str]) -> Application:
    members = {}
    pattern = re.compile(r"(?P<key>\w+? ?\w+? ?\w+)\s+:\s+(?P<value>[^;\n]+)")

    for line in lines:
        result = re.search(pattern, line)
        if result is not None:
            if result.group("key") == eApplication.WELDING_EQUIPMENT:
                members[result.group("key")] = result.group("value")
            else:
                members[result.group("key")] = int(result.group("value"))

    return Application(members[eApplication.WELDING_EQUIPMENT],
                       MPAS(num_passes=members[eMPAS.NUM_PASSES],
                            last_pass=members[eMPAS.LAST_PASS],
                            current_pass=members[eMPAS.CURRENT_PASS],
                            status_pass=members[eMPAS.STATUS_PASS])
                            )


def _find_weld_id(lines: list[str], start: int, amount: int) -> str | None:
    """Search *amount* lines above current index for weld ID.

    Parameters
    ----------
    lines: list[str]
        - Lines of the file to search.
    start: int
        - Index of the starting line.
    amount: int
        - The amount of lines to search.

    Returns
    -------
    str | None
        str if the pattern is found.
        None otherwise.
    """
    id_pattern = re.compile(r"!([FLATWRE]{2,3}\d{2}[LMXZ]\d{4})\b",
                            flags=re.IGNORECASE)

    for i in range(start - amount, start):
        result = re.search(id_pattern, lines[i])
        if result is not None:
            return result.group(1)

    return None


def _parse_weld_block(lines: list[str], start: int, end: int,
                      unknown_amount: int) -> tuple[WeldBlock, int]:
    empty_line = re.compile(r"^\s*\d+:\s*;$", )

    # Stacks to track what we come across
    arc = 0
    weave = 0
    track = 0

    i = start
    while i < end:
        line = lines[i]

        if "Arc Start" in line:
            arc += 1
        if "Weave Sine" in line:
            weave += 1
        if "Track TAST" in line:
            track += 1

        if "Arc End" in line:
            arc -= 1
        if "Weave End" in line:
            weave -= 1
        if "Track End" in line:
            track -= 1

        if re.search(empty_line, line):
            break

        i += 1

    
    weld_id = _find_weld_id(lines, start, 10)

    if weld_id is None:
        unknown_amount += 1
        weld_id = f"Unknown{unknown_amount}"

    weld = WeldBlock(weld_id, lines[start:i])

    if arc != 0:
        print("Too few arc ends" if arc < 0 else "Too many arc ends")
    if weave != 0:
        print("Too few weave ends" if weave < 0 else "Too many weave ends")
    if track != 0:
        print("Too few track ends" if track < 0 else "Too many track ends")

    return (weld, unknown_amount)


def parse_motion(lines: list[str], start: int, end: int):
    members = []
    unknown_amount = 0

    i = start
    while i < end:
        line = lines[i]

            
        if "Arc Start" in lines[i + 1]:
            weld_block, unknown_amount = _parse_weld_block(lines, i, end,
                                                           unknown_amount)
            if weld_block in members:
                print(f"Duplicate weld found {weld_block.id}")
                print(f"Line number {weld_block.lines[0].split(":")[0]}")

            members.append(weld_block)
            i += len(weld_block.lines)
            continue

        members.append(line)
        i += 1

    return members


def parse_positions(lines: list[str], start: int, end: int
                    ) -> dict[int, list[str]]:
    number_pattern = re.compile(r"P\[(\d+)\]{")

    positions = {}
    i = start
    while i < end:
        line = lines[i]
        number = re.search(number_pattern, line)

        if number is not None:
            j = i
            while j < end:
                if lines[j].startswith("};"):
                    j += 1
                    break
                j += 1
            positions[number] = lines[i:j]

            i += j - i
            continue

        i += 1


    return positions


class Section(Enum):
    PROG = auto()
    ATTR = auto()
    APPL = auto()
    MOTN = auto()
    PSTN = auto()
    END  = auto()


def _find_section_end(lines: list[str], start: int, next_header: str) -> int:
    """Search for the next section header and return the line before it.

    Parameters
    ----------
    lines: list[str]
        Lines of the file to search.
    start: int
        Starting index of the current section.
    next_header: str
        Next header.

    Returns
    -------
    int
        Index for the next header.

    Raises
    ------
    SectionNotFoundError
        If the next header isn't found.
    """
    lines_length = len(lines)
    end = start
    while end < lines_length:
        if next_header in lines[end]:
            return end
        end += 1
    raise SectionNotFoundError(f"Expected header {next_header!r} not found.")


def parse_ls(file_path: str):
    """Parse an LS file and return a FanucProgram object.

    Parameters
    ----------
    file_path: str
        path to the LS file to parse.

    Returns
    -------
    fp.FanucProgram
        LS file converted to FanucProgram object.

    Raises
    ------
    RuntimeError
        Malformed LS files
    FileNotFoundError
    """
    with open(file_path, "r") as f:
        lines = f.readlines()
    
    lines_length = len(lines)
    i = 0

    section = Section.PROG
    parsed = []
    while i < lines_length:
        line = lines[i].strip()

        match (section):
            case Section.PROG:
                parsed.append(parse_prog(line))
                section = Section.ATTR
                i += 1
                continue

            case Section.ATTR:
                end = _find_section_end(lines, i, "/APPL")
                parsed.append(parse_attributes(lines[i:end]))
                section = Section.APPL
                i = end + 1
                continue

            case Section.APPL:
                end = _find_section_end(lines, i, "/MN")
                parsed.append(parse_application(lines[i:end]))
                section = Section.MOTN
                i = end + 1
                continue

            case Section.MOTN:
                end = _find_section_end(lines, i, "/POS")
                motion = parse_motion(lines, i, end)
                parsed.append(motion)
                section = Section.PSTN
                continue

            case Section.PSTN:
                end = _find_section_end(lines, i, "/END")
                # TODO(hc): Handle Position
                positions = parse_positions(lines, i, end)
                parsed.append(positions)
                section = Section.END

        i += 1

    
    
    return FanucProgram(*parsed)
