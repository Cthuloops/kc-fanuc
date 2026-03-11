from dataclasses import dataclass
from enum import (StrEnum, auto)


class eTCD(StrEnum):
    STACK_SIZE      = "STACK_SIZE"
    TASK_PRIORITY   = "TASK_PRIORITY"
    TIME_SLICE      = "TIME_SLICE"
    BUSY_LAMP_OFF   = "BUSY_LAMP_OFF"
    ABORT_REQUEST   = "ABORT_REQUEST"
    PAUSE_REQUEST   = "PAUSE_REQUEST"


@dataclass
class TCD():
    stack_size: int
    task_priority: int
    time_slice: int
    busy_lamp_off: int
    abort_request: int
    pause_request: int

    def __str__(self):
        return f"""TCD:  STACK_SIZE	= {self.stack_size},
      TASK_PRIORITY	= {self.task_priority},
      TIME_SLICE	= {self.time_slice},
      BUSY_LAMP_OFF	= {self.busy_lamp_off},
      ABORT_REQUEST	= {self.abort_request},
      PAUSE_REQUEST	= {self.pause_request};"""


class eAttributes(StrEnum):
    OWNER           = "OWNER"
    COMMENT         = "COMMENT"
    PROG_SIZE       = "PROG_SIZE"
    DATE_CREATED    = "CREATE"
    DATE_MODIFIED   = "MODIFIED"
    FILE_NAME       = "FILE_NAME"
    VERSION         = "VERSION"
    LINE_COUNT      = "LINE_COUNT"
    MEMORY_SIZE     = "MEMORY_SIZE"
    PROTECT_STATUS  = "PROTECT"
    TCD             = "TCD"
    DEFAULT_GROUP   = "DEFAULT_GROUP"
    CONTROL_NODE    = "CONTROL_CODE"


@dataclass
class Attributes():
    owner: str
    comment: str
    program_size: int
    date_created: str
    date_modified: str
    file_name: str
    version: int
    line_count: int
    memory_size: int
    protect_status: str
    tcd: TCD
    default_group: str
    control_node: str

    def __str__(self):
        return f"""/ATTR
OWNER		= {self.owner};
COMMENT		= "{self.comment}";
PROG_SIZE	= {self.program_size};
CREATE		= {self.date_created};
MODIFIED	= {self.date_modified};
FILE_NAME	= {self.file_name};
VERSION		= {self.version};
LINE_COUNT	= {self.line_count};
MEMORY_SIZE	= {self.memory_size};
PROTECT		= {self.protect_status};
{self.tcd}
DEFAULT_GROUP	= {self.default_group};
CONTROL_CODE	= {self.control_node};"""


class eMPAS(StrEnum):
    NUM_PASSES   = "MPAS_NUM_PASSES"
    LAST_PASS    = "MPAS_LAST_PASS"
    CURRENT_PASS = "MPAS_CURRENT_PASS"
    STATUS_PASS  = "MPAS_STATUS_PASS"


@dataclass
class MPAS():
    num_passes: int
    last_pass: int
    current_pass: int
    status_pass: int

    def __str__(self):
        return f"""MPAS ;
MPAS_NUM_PASSES        : {self.num_passes};
MPAS_LAST_PASS         : {self.last_pass};
MPAS_CURRENT_PASS      : {self.current_pass};
MPAS_STATUS_PASS       : {self.status_pass};"""


class eApplication(StrEnum):
    WELDING_EQUIPMENT = "ARC Welding Equipment"


@dataclass
class Application():
    welding_equipment: str
    mpas: MPAS

    def __str__(self):
        return f"""/APPL
  ARC Welding Equipment : {self.welding_equipment};

{self.mpas}
"""


@dataclass
class Weld():
    string: str
    position: int = -1


class WeldBlock():
    def __init__(self, id: str, lines: list[str]):
        self.id = id
        self.lines = self._welds(lines)

    def __str__(self):
        return ''.join(line.string for line in self.lines)

    def _welds(self, lines: list[str]):
        return [Weld(line) for line in lines]


@dataclass
class FanucProgram():
    name: str
    attr: Attributes
    appl: Application 
    motn: list[str | WeldBlock]
    pstn: list[str]

    def __motn_str(self):
        print_lines = []
        for line in self.motn:
            if isinstance(line, WeldBlock):
                print_lines.extend(line.lines)
            else:
                print_lines.append(line)

        return ''.join(print_lines)

    def __pstn_str(self):
        return ''.join(line for line in self.pstn)

    def __str__(self):
        return f"""/PROG  {self.name}
{self.attr}
{self.appl}
{self.__motn_str()}
{self.__pstn_str()}"""
