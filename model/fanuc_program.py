from dataclasses import dataclass

from .weld_block import WeldBlock


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
