# DnaMatchProject (DMP) v1.0.0 — Beta Version

This is a beta release of **DnaMatchProject (DMP)**, a Shiny GUI tool for forensic STR profile comparison and matching based on GlobalFiler markers.

---

## 📦 Folder Structure

```
DnaMatchProject_v1.0.0/
├── data/
│   ├── database_profile.csv
│   ├── freq_table.rds
│   ├── locus_order.rds
│   ├── query_profile.csv
│   └── Allele-count_GF_Japanese.csv
├── output/
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
├── run_app.R
├── README_DMP_v1.0.0.md
└── README_DMP_v1.0.0_ja.md  # See this file for full Japanese documentation
```

---

## 🚀 How to Run

### Requirements

- R 4.2 or later
- Required R packages:
  - `shiny`, `dplyr`, `readr`, `tibble`

### Launching the App

1. Open R or RStudio
2. Set working directory to the extracted folder:

```r
setwd("C:/path/to/DnaMatchProject_v1.0.0")
source("run_app.R")
```

3. The GUI should launch in your browser or viewer

---

## 📤 Output

After running a match, results are saved to:

- `output/match_scores.csv`
- `output/match_log.csv`

The `output/` folder is included and must be present.

---

## 📝 Notes

- Column names must be lowercase: `sample_id`, `locus`, `allele1`, `allele2`
- `any` is treated as a wildcard allele
- This is a beta version for testing and feedback

---

## 📖 Data Attribution

This project includes the file `data/Allele-count_GF_Japanese.csv`,  
which is derived from the [Kongoh project](https://github.com/forensic-kongoh/Kongoh)  
and is distributed under the terms of the GNU General Public License v3 (GPL-3).

Therefore, this project is released under GPL-3.  
If you wish to use the project under a different license, please remove this file and replace it with your own dataset.

---

## 🧬 Author

This project is part of a forensic STR matching toolchain.
For documentation in Japanese, see `README_ja.md`.

## License

This project is licensed under the GPL-3 License. See the LICENSE file for details.
