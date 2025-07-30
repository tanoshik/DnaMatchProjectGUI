# DnaMatchProject (DMP) v1.0.0 — ベータ版

本プロジェクトは、GlobalFilerに基づく法医学STRプロファイルの比較・マッチングを行うShiny GUIツール「DnaMatchProject (DMP)」のベータ版です。

---

## 📦 フォルダ構成

```
DnaMatchProject_v1.0.0/
├── data/
│   ├── database_profile.csv       # DBプロファイル（検索対象）
│   ├── freq_table.rds             # アレル頻度テーブル
│   ├── locus_order.rds            # ローカス順序ファイル
│   ├── query_profile.csv          # クエリ例
│   └── Allele-count_GF_Japanese.csv # 生データカウント（オプション）
├── output/                        # 出力フォルダ（空で同梱）
├── scripts/
│   ├── matcher.R
│   ├── scoring.R
│   ├── utils_freq.R
│   ├── utils_profile.R
│   ├── io_profiles.R
│   └── gui/
│       ├── ui_input_tab.R
│       ├── ui_confirm_tab.R
│       ├── ui_result_tab.R
│       ├── server_input_logic.R
│       ├── server_match_logic.R
│       └── query_gui_app.R
├── run_app.R                      # GUI起動スクリプト
├── README_DMP_v1.0.0.md           # 英語版README
└── README_DMP_v1.0.0_ja.md        # 日本語版README（本ファイル）
```

---

## 🚀 実行方法

### 必須環境

- R 4.2以上
- 必要なRパッケージ：
  - `shiny`, `dplyr`, `readr`, `tibble` など

### 起動手順

1. R または RStudio を開く
2. 作業ディレクトリをこのフォルダに設定：

```r
setwd("C:/パス/DnaMatchProject_v1.0.0")
source("run_app.R")
```

3. GUIがブラウザまたはViewerで立ち上がります

---

## 📤 出力ファイル

マッチ処理後、以下のCSVが `output/` に保存されます：

- `match_scores.csv`（スコア合計）
- `match_log.csv`（詳細マッチログ）

※ `output/` フォルダは初期状態で空ですが、存在している必要があります。

---

## 📝 備考

- 入力CSVは列名をすべて **小文字** にしてください：
  - `sample_id`, `locus`, `allele1`, `allele2`
- `any` はワイルドカードとして扱われます
- 本バージョンはベータ版です。フィードバック歓迎

---

## 📖 データ出典とライセンスについて

本プロジェクトには、[Kongohプロジェクト](https://github.com/forensic-kongoh/Kongoh) にて公開された  
`data/Allele-count_GF_Japanese.csv` を含みます（ファイル元：`inst/extdata/example/`）。

このファイルは **GNU GPL v3** ライセンスで配布されているため、  
本プロジェクト全体も同ライセンスで公開されます。


## 🧬 開発者

本ツールは法医学STRマッチング支援の一環として開発されました。
質問や改善提案は管理者までご連絡ください。

## ライセンス

本プロジェクトは GPL-3ライセンスの下で公開されています。詳細は `LICENSE` ファイルをご覧ください。

