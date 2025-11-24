#!/bin/bash
# spdx-FileCopyrightText: 2025 hakozaki teruki
# SPDX-License-Identifier: BSD-3-Clause
ng (){
    echo "${1}行目が違うよ"
    res=1
}

res=0

out=$(echo "abc def" | ./count.py)
[ "${out}" = 6 ] || ng "$LINENO"

out=$(echo " 12 34 " | ./count.py)
[ "${out}" = 4 ] || ng "$LINENO"

out=$(echo -e "abc\ndef ghi" | ./count.py)
[ "${out}" = $'3\n6' ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
