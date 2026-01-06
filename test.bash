#!/bin/bash
# SPDX-FileCopyrightText: 2025 hakozaki teruki
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0
SCHEDULE="schedule.txt"

out=$( (echo monday; cat "$SCHEDULE") | ./skj )
expected=$'1限: a\n2限: a\n3限: a\n4限: a\n5限: a\n6限: a\nメモ: a'
[ "$out" = "$expected" ] || ng "$LINENO"

out=$( (echo tuesday; cat "$SCHEDULE") | ./skj )
expected=$'1限: b\n2限: a\n3限: a\n4限: a\n5限: a\n6限: a\nメモ: a'
[ "$out" = "$expected" ] || ng "$LINENO"

out=$( (echo sunday; cat "$SCHEDULE") | ./skj )
expected=$'1限: g\n2限: a\n3限: a\n4限: a\n5限: a\n6限: a\nメモ: a'
[ "$out" = "$expected" ] || ng "$LINENO"

out=$( (echo week; cat "$SCHEDULE") | ./skj )

count=$(echo "$out" | grep -cE '^(monday|tuesday|wednesday|thursday|friday|saturday|sunday)$')
[ "$count" = 7 ] || ng "$LINENO"

bad=$(echo "$out" | grep -vE '^([a-z]+|  .+)$')
[ "$bad" = "" ] || ng "$LINENO"

( echo today; cat "$SCHEDULE" ) | ./skj >/dev/null 2>&1
[ "$?" = 0 ] || ng "$LINENO"

./skj < "$SCHEDULE" >/dev/null 2>&1
[ "$?" = 0 ] || ng "$LINENO"

( echo holiday; cat "$SCHEDULE" ) | ./skj >/dev/null 2>&1
[ "$?" -ge 0 ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit $res
