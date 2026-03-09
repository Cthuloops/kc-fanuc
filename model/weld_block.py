from dataclasses import dataclass


@dataclass
class WeldBlock():
    id: str
    lines: list[str]

    def __str__(self):
        return ''.join(line for line in self.lines)