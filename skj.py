#!/usr/bin/env python3
# SPDX-FileCopyrightText: 2025 hakozaki teruki
# SPDX-License-Identifier: BSD-3-Clause
import sys
import datetime

SCHEDULE = {
    "monday": [
        "1限: a",
        "2限: a",
        "メモ: a"
    ],
    "tuesday": [
        "1限: a",
        "メモ: a"
    ],
    "wednesday": [
        "3限: a",
        "メモ: a"
    ],
    "thursday": [
        "2限: a",
        "メモ: a"
    ],
    "friday": [
        "1限: a",
        "メモ: a"
    ],
    "saturday": [
        "メモ: a"
    ],
    "sunday": [
        "メモ: a"
    ]
}

WEEKDAYS = [
    "monday",
    "tuesday",
    "wednesday",
    "thursday",
    "friday",
    "saturday",
    "sunday"
]

def today_weekday():
    return WEEKDAYS[datetime.date.today().weekday()]

def print_day(day):
    for line in SCHEDULE[day]:
        print(line)

def print_week():
    for day in WEEKDAYS:
        print(day)
        for line in SCHEDULE[day]:
            print("  " + line)

def main():
    if sys.stdin.isatty():
        key = today_weekday()
    else:
        key = sys.stdin.read().strip().lower()

    if key == "week":
        print_week()
    elif key in SCHEDULE:
        print_day(key)
    else:
        print("Invalid input", file=sys.stderr)
        sys.exit(1)

if __name__ == "__main__":
    main()

