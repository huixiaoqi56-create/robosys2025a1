# スケジュール表示コマンド



## 概要

- 指定された曜日と実行した日の曜日に対応する、または1週間のスケジュールとメモを表示する。
- 標準入力あり：指定曜日を表示
- 標準入力なし：今日の曜日を自動判定し表示
- `week` 指定：1週間（月〜日）の一覧を表示

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
./skj
```

#### 曜日を指定して表示

```bash
echo monday | ./skj
```

#### 1週間の一覧を表示

```bash
echo week | ./skj
```

#### スケジュールの変更方法

使用する際に表示内容を変更する場合は、`skj` の`SCHEDULE`内部の`"　"`内を書き換えてください。

```python
SCHEDULE = {
    "monday": [
        "1限: a",
        "2限: a",
        "メモ: a"
    ],
```
## 必要なソフトウェア

- Python 3

  - 動作確認済み: Python 3.8〜3.10

## テスト環境

- Ubuntu 22.04 LTS

## ライセンス

- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
- 本プログラムの設計方針やテスト方法については，Ryuichi Ueda 氏による（slidesrobosys2025）の講義、資料を参考にしました。
 - Ryuichi Ueda
  - 〔slidesrobosys2025〕(https://github.com/ryuichiueda/slides_marp/tree/master/robosys2025)

© 2025 hakozaki teruki

