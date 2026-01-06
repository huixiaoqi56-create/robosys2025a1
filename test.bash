#!/bin/bash
# SPDX-FileCopyrightText: 2025 hakozaki teruki
# SPDX-License-Identifier: BSD-3-Clause

ng (){
    echo "${1}行目が違うよ"
    res=1
}

res=0

out=$(echo monday | ./skj)
expected=$'1限: a\n2限: a\n3限: a\n4限: a\n5限: a\n6限: a\nメモ: a'
[ "${out}" = "${expected}" ] || ng "$LINENO"

out=$(echo tuesday | ./skj)
expected=$'1限: b\n2限: a\n3限: a\n4限: a\n5限: a\n6限: a\nメモ: a'
[ "${out}" = "${expected}" ] || ng "$LINENO"

out=$(echo saturday | ./skj)
expected=$'1限: f\n2限: a\n3限: a\n4限: a\n5限: a\n6限: a\nメモ: a'
[ "${out}" = "${expected}" ] || ng "$LINENO"

out=$(echo sunday | ./skj)
expected=$'1限: g\n2限: a\n3限: a\n4限: a\n5限: a\n6限: a\nメモ: a'
[ "${out}" = "${expected}" ] || ng "$LINENO"

out=$(echo holiday | ./skj 2>/dev/null)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

./skj >/dev/null 2>&1
[ "$?" = 0 ] || ng "$LINENO"

out=$(echo week | ./skj)

count=$(echo "$out" | grep -c '^[a-z]')
[ "${count}" = 7 ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
