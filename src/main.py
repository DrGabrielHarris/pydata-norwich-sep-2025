import logging
from datetime import datetime

logging.basicConfig(
    level=logging.INFO,
    format="[%(asctime)s] %(message)s",
    datefmt="%d/%m/%y %H:%M:%S",
)

logger = logging.getLogger(__name__)


def format_day_with_suffix(
    day_number: int,
) -> str:
    """Formats day number with ordinal suffix."""
    if 11 <= day_number % 100 <= 13:
        suffix_text = "th"
    else:
        suffix_map = {
            1: "st",
            2: "nd",
            3: "rd",
        }
        suffix_text = suffix_map.get(day_number % 10, "th")
    return f"{day_number}{suffix_text}"


def show_current_datetime() -> None:
    """Prints current time, weekday, month, date, and year."""
    now = datetime.now()
    date_with_suffix = format_day_with_suffix(now.day)

    logger.info(f"Current time: {now.strftime('%H:%M:%S')}")
    logger.info(f"Day of the week: {now.strftime('%A')}")
    logger.info(f"Date: {date_with_suffix}")
    logger.info(f"Month: {now.strftime('%B')}")
    logger.info(f"Year: {now.strftime('%Y')}")


def main() -> None:
    show_current_datetime()


if __name__ == "__main__":
    main()
