#!/bin/bash
# SPDX-FileCopyrightText: 2025 hakozaki teruki
# SPDX-License-Identifier: BSD-3-Clause

ng (){
    echo "${1}行目が違うよ"
    res=1
}

res=0

out=$(echo monday | ./skj)
expected=$'1限: a\n2限: a\nメモ: a'
[ "${out}" = "${expected}" ] || ng "$LINENO"

out=$(echo saturday | ./skj)
[ "${out}" = "メモ: a" ] || ng "$LINENO"

out=$(echo sunday | ./skj)
[ "${out}" = "メモ: a" ] || ng "$LINENO"

out=$(echo holiday | ./skj 2>/dev/null)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

./skj.py >/dev/null 2>&1
[ "$?" = 0 ] || ng "$LINENO"

out=$(echo week | ./skj)

first=$(echo "$out" | head -n 1)
last=$(echo "$out" | grep -n sunday | cut -d: -f1)

[ "${first}" = "monday" ] || ng "$LINENO"
[ -n "${last}" ] || ng "$LINENO"

count=$(echo "$out" | grep -cE '^(monday|tuesday|wednesday|thursday|friday|saturday|sunday)$')
[ "${count}" = 7 ] || ng "$LINENO"

bad=$(echo "$out" | grep -vE '^([[:space:]]{2,}.*|monday|tuesday|wednesday|thursday|friday|saturday|sunday)$')
[ "${bad}" = "" ] || ng "$LINENO"

empty=$(echo "$out" | grep -n '^$')
[ "${empty}" = "" ] || ng "$LINENO"

out=$(printf "tuesday\n" | ./skj)
expected=$'1限: a\nメモ: a'
[ "${out}" = "${expected}" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res

