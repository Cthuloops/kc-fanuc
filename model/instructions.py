from dataclasses import dataclass


@dataclass
class Instruction():
    line_number: int
    opcode: str
    args: list[str]
    raw: str