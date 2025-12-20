# 授業スケジュール表示コマンド



## 概要

- 指定された曜日、または実行した日の曜日に対応する授業スケジュールとメモを表示する。

- 標準入力あり：指定曜日を表示
- 標準入力なし：今日の曜日を自動判定
- `week` 指定：1週間（月〜日）の一覧を表示

## 使用方法
### インストール方法

- 以下の手順でインストールしてください。

### 1. リポジトリの取得

```bash
git clone https://github.com/huixiaoqi56-create/robosys2025a1.git
cd robosys2025a1
```

### 2. 実行権限の付与

```bash
chmod +x skj
```

### 今日の授業を表示

```bash
./skj
```

### 曜日を指定して表示

```bash
echo monday | ./skj
```

### 1週間の一覧を表示

```bash
echo week | ./skj
```

### リダイレクト入力の例

```bash
printf "tuesday" > day.txt
./skj < day.txt
```

## 動作の仕様

- 入力は英語小文字（monday〜sunday, week）

## 必要なソフトウェア

- Python 3

  - 動作確認済み: Python 3.7〜3.10

## テスト環境

- Ubuntu 22.04 LTS

## ライセンス

- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
 - Ryuichi Ueda〔slidesrobosys2025〕(https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)

© 2025 hakozaki teruki

