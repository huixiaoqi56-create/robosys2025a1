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
1限: 数学
2限: 英語
メモ: レポート提出

tuesday
1限: 物理
メモ: 実験あり

sunday
メモ: 休み
EOF

out=$(./skj monday < schedule.txt)
expected=$'1限: 数学\n2限: 英語\nメモ: レポート提出'
[ "$out" = "$expected" ] || ng "$LINENO"

out=$(./skj tuesday < schedule.txt)
expected=$'1限: 物理\nメモ: 実験あり'
[ "$out" = "$expected" ] || ng "$LINENO"

out=$(./skj sunday < schedule.txt)
expected=$'メモ: 休み'
[ "$out" = "$expected" ] || ng "$LINENO"

out=$(./skj week < schedule.txt)

count=$(echo "$out" | grep -cE '^(monday|tuesday|wednesday|thursday|friday|saturday|sunday)$')
[ "$count" = 7 ] || ng "$LINENO"

bad=$(echo "$out" | grep -vE '^([a-z]+|  .*)$')
[ "$bad" = "" ] || ng "$LINENO"

./skj holiday < schedule.txt >/dev/null 2>&1
[ "$?" = 1 ] || ng "$LINENO"

./skj < schedule.txt >/dev/null 2>&1
[ "$?" = 0 ] || ng "$LINENO"

rm -f schedule.txt

[ "$res" = 0 ] && echo OK
exit $res
