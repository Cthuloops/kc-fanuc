class FanucException(Exception):
    """Base Fanuc Error Exception."""
    ...

class SectionNotFoundError(FanucException):
    """A required heading was not found."""
    ...