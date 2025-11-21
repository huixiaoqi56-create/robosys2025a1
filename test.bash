#!/bin/bash
# spdx-FileCopyrightText: 2025 hakozaki teruki

output = $(echo "abc def" | ./count.py)
expected = "6"
if [ "$output" != "$expected" ]; then
    echo "Test 1 failed: expected $expected, got $output"
    exit 1
fi
output = $(echo -e " 12 34 " | ./count.py)
expected = "4"
if [ "$output" != "$expected" ]; then
    echo "Test 2 failed: expected $expected, got $output"
    exit 1
fi
output = $(echo -e "abc\ndef ghi" | ./count.py)
expected = "3
6"
if [ "$output" != "$expected" ]; then
    echo "Test 3 failed: expected '$expected', got '$output'"
    exit 1
fi

echo "All bash tests passed."
exit 0
