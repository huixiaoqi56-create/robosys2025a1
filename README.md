# スケジュール表示コマンド
[![test](https://github.com/huixiaoqi56-create/robosys2025a1/actions/workflows/test.yml/badge.svg)](https://github.com/huixiaoqi56-create/robosys2025a1/actions/workflows/test.yml)

## 概要

- 指定された曜日または実行した日の曜日に対応するスケジュールとメモもしくは1週間のスケジュールとメモの一覧を選んで表示するコマンド。
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
```

#### 曜日を指定して表示

```bash
./skj monday < schedule.txt
```

#### 1週間の一覧を表示

```bash
./skj week < schedule.txt
```

#### スケジュールの変更方法

- 使用する際に表示内容を変更、追加する場合は、を書き換えてください。

```

```
## 必要なソフトウェア

- Python

  - テスト済みバージョン: Python 3.8〜3.10

## テスト環境

- Ubuntu 22.04 LTS

## ライセンス

- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。

© 2025 hakozaki teruki

