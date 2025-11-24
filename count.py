#!/usr/bin/python3
# spdx-FileCopyrightText: 2025 hakozaki teruki
import sys


def main():
    for line in sys.stdin:
        stripped = line.rstrip("\n")
        count = sum(1 for ch in stripped if not ch.isspace())
        print(count)

if __name__ == "__main__":
    main()
