#!/bin/bash
# SPDX-FileCopyrightText: 2025 hakozaki teruki
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo "${1}行目が違うよ"
    res=1
}

res=0

# --- テスト用スケジュール ---
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

# --- スケジュール表示（最初の曜日が出る） ---
out=$(./skj < schedule.txt)
expected=$'1限: 数学\n2限: 英語\nメモ: レポート提出'
[ "$out" = "$expected" ] || ng "$LINENO"

# --- week / holiday / 曜日指定は仕様外であることを確認 ---
# → エラーにならず、同じ出力になることを確認
out=$(echo week | ./skj < schedule.txt)
[ "$out" = "$expected" ] || ng "$LINENO"

out=$(echo holiday | ./skj < schedule.txt)
[ "$out" = "$expected" ] || ng "$LINENO"

# --- 正常終了 ---
./skj < schedule.txt >/dev/null 2>&1
[ "$?" = 0 ] || ng "$LINENO"

rm -f schedule.txt

[ "$res" = 0 ] && echo OK
exit $res
