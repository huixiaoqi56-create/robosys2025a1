# スケジュール表示コマンド
[![test](https://github.com/huixiaoqi56-create/robosys2025a1/actions/workflows/test.yml/badge.svg)](https://github.com/huixiaoqi56-create/robosys2025a1/actions/workflows/test.yml)

## 概要

- 指定された曜日または実行した日の曜日に対応するスケジュールとメモもしくは1週間のスケジュールとメモをテキストデータから抽出し出力するコマンド。
- スケジュールとメモの内容を変更し自分のスケジュール表として使用できる。
## 使用方法
### インストール方法

- 以下の手順でインストールしてください。

#### 1. リポジトリの取得

```bash
git clone https://github.com/huixiaoqi56-create/robosys2025a1.git
cd robosys2025a1
```

#### 2. 実行権限の付与

```bash
chmod +x skj
```

### 実行方法
- 以下の手順から選んで実行してください。

#### 今日の曜日のスケジュールを表示

```bash
./skj < schedule.txt
tuesday
1限: b
2限: a
3限: a
4限: a
5限: a
6限: a
メモ: a
```

#### 曜日を指定して表示

```bash
./skj monday < schedule.txt
monday
1限: a
2限: a
3限: a
4限: a
5限: a
6限: a
メモ: a
```

#### 1週間の一覧を表示

```bash
./skj week < schedule.txt
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
```

#### 入力データ形式（schedule.txt）

- スケジュールは以下の形式で記述します。

  - 曜日名（英小文字）を1行で書く

  - 続く行に授業内容やメモを書く

  - 曜日ごとに空行で区切る
```
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

```
## 必要なソフトウェア

- Python

  - テスト済みバージョン: Python 3.8〜3.10

## テスト環境

- Ubuntu 22.04 LTS
- Linux

## ライセンス

- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。

© 2025 hakozaki teruki

