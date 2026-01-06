#!/bin/bash
# SPDX-FileCopyrightText: 2025 hakozaki teruki
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

cat > schedule.txt << 'EOF'
monday
1限: a
2限: a
3限: a
4限: a
5限: a
6限: a
メモ: a

tuesday
1限: b
2限: a
3限: a
4限: a
5限: a
6限: a
メモ: a

wednesday
1限: c
2限: a
3限: a
4限: a
5限: a
6限: a
メモ: a

thursday
1限: d
2限: a
3限: a
4限: a
5限: a
6限: a
メモ: a

friday
1限: e
2限: a
3限: a
4限: a
5限: a
6限: a
メモ: a

saturday
1限: f
2限: a
3限: a
4限: a
5限: a
6限: a
メモ: a

sunday
1限: g
2限: a
3限: a
4限: a
5限: a
6限: a
メモ: a
EOF

out=$(./skj < schedule.txt)
[ -n "$out" ] || ng "$LINENO"

echo monday | ./skj < schedule.txt >/dev/null 2>&1
[ "$?" = 0 ] || ng "$LINENO"

echo tuesday | ./skj < schedule.txt >/dev/null 2>&1
[ "$?" = 0 ] || ng "$LINENO"

echo sunday | ./skj < schedule.txt >/dev/null 2>&1
[ "$?" = 0 ] || ng "$LINENO"

echo holiday | ./skj < schedule.txt >/dev/null 2>&1
[ "$?" = 0 ] || ng "$LINENO"

echo week | ./skj < schedule.txt >/dev/null 2>&1
[ "$?" = 0 ] || ng "$LINENO"

./skj < schedule.txt >/dev/null 2>&1
[ "$?" = 0 ] || ng "$LINENO"


[ "$res" = 0 ] && echo OK
exit $res

