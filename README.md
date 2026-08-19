# Eight Colors Random Generator

Generates 8 random colors with HSL, RGB, Hex, and ANSI values every 8 hours via GitHub Actions.

## How It Works

A shell script (`generate_colors.sh`) generates 8 random colors by:

1. Picking random HSL values (H: 0–359, S: 40–100%, L: 30–70%)
2. Converting HSL → RGB using `awk`
3. Calculating the closest ANSI 256 color code

## Output

The current palette is stored in `current_colors`, containing:

- **Table** — centered columns showing Num, HSL, RGB, Hex, and ANSI
- **CSV** — machine-readable list of HSL, RGB, and ANSI values

The README is automatically updated with the latest palette on each run.

## Usage

### Manual

```bash
bash generate_colors.sh
```

### Automatic (GitHub Actions)

The workflow runs every 8 hours and commits the output file to the repository.

To trigger manually: **Actions → Generate Eight Colors → Run workflow**.

## Files

| File | Description |
|---|---|
| `generate_colors.sh` | Main script |
| `current_colors` | Current color palette |
| `.github/workflows/generate_colors.yml` | CI workflow |















































































































































































































































































































































































































## Latest Palette

![#48C920](https://img.shields.io/badge/-%2348C920?style=flat&logo=none) ![#CD88AB](https://img.shields.io/badge/-%23CD88AB?style=flat&logo=none) ![#CF4D81](https://img.shields.io/badge/-%23CF4D81?style=flat&logo=none) ![#AE9A2C](https://img.shields.io/badge/-%23AE9A2C?style=flat&logo=none) ![#104288](https://img.shields.io/badge/-%23104288?style=flat&logo=none) ![#268C4F](https://img.shields.io/badge/-%23268C4F?style=flat&logo=none) ![#06D981](https://img.shields.io/badge/-%2306D981?style=flat&logo=none) ![#9BEF42](https://img.shields.io/badge/-%239BEF42?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-19 00:40:45
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(106, 72%, 46%) |  rgb(72, 201, 32)  | #48C920 | 77 |
| 2 | hsl(329, 41%, 67%) | rgb(205, 136, 171) | #CD88AB |181 |
| 3 | hsl(336, 58%, 56%) | rgb(207, 77, 129)  | #CF4D81 |175 |
| 4 | hsl(51, 59%, 43%)  | rgb(174, 154, 44)  | #AE9A2C |143 |
| 5 | hsl(215, 79%, 30%) |  rgb(16, 66, 136)  | #104288 | 25 |
| 6 | hsl(144, 57%, 35%) |  rgb(38, 140, 79)  | #268C4F | 72 |
| 7 | hsl(155, 94%, 44%) |  rgb(6, 217, 129)  | #06D981 | 43 |
| 8 | hsl(89, 85%, 60%)  | rgb(155, 239, 66)  | #9BEF42 |155 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(106, 72%, 46%),rgb(72, 201, 32),77
hsl(329, 41%, 67%),rgb(205, 136, 171),181
hsl(336, 58%, 56%),rgb(207, 77, 129),175
hsl(51, 59%, 43%),rgb(174, 154, 44),143
hsl(215, 79%, 30%),rgb(16, 66, 136),25
hsl(144, 57%, 35%),rgb(38, 140, 79),72
hsl(155, 94%, 44%),rgb(6, 217, 129),43
hsl(89, 85%, 60%),rgb(155, 239, 66),155

Generated: 2026-08-19 00:40:45
```
