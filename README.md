# Eight Colors Random Generator

Generates 8 random colors with HSL, RGB, Hex, and ANSI values every 4 hours via GitHub Actions.

## How It Works

A shell script (`generate_colors.sh`) generates 8 random colors by:

1. Picking random HSL values (H: 0–359, S: 40–100%, L: 30–70%)
2. Converting HSL → RGB using `awk`
3. Calculating the closest ANSI 256 color code

## Output

Each run creates a file named `MM_DD_YYYY_HH_MM_colors` containing:

- **Table** — centered columns showing Num, HSL, RGB, Hex, and ANSI
- **CSV** — machine-readable list of HSL, RGB, and ANSI values

The README is automatically updated with the latest palette on each run.

## Usage

### Manual

```bash
bash generate_colors.sh
```

### Automatic (GitHub Actions)

The workflow runs every 4 hours and commits the output file to the repository.

To trigger manually: **Actions → Generate Eight Colors → Run workflow**.

## Files

| File | Description |
|---|---|
| `generate_colors.sh` | Main script |
| `*_*_*_*_*_colors` | Generated color files |
| `.github/workflows/generate_colors.yml` | CI workflow |








## Latest Palette

![#833285](https://img.shields.io/badge/-%23833285?style=flat&logo=none) ![#F54E3C](https://img.shields.io/badge/-%23F54E3C?style=flat&logo=none) ![#1518D5](https://img.shields.io/badge/-%231518D5?style=flat&logo=none) ![#D47949](https://img.shields.io/badge/-%23D47949?style=flat&logo=none) ![#762772](https://img.shields.io/badge/-%23762772?style=flat&logo=none) ![#CA7E44](https://img.shields.io/badge/-%23CA7E44?style=flat&logo=none) ![#B59E1B](https://img.shields.io/badge/-%23B59E1B?style=flat&logo=none) ![#9DDF57](https://img.shields.io/badge/-%239DDF57?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-10 09:17:27
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(299, 45%, 36%) | rgb(131, 50, 133)  | #833285 |133 |
| 2 |  hsl(6, 91%, 60%)  |  rgb(245, 78, 60)  | #F54E3C |209 |
| 3 | hsl(239, 82%, 46%) |  rgb(21, 24, 213)  | #1518D5 | 20 |
| 4 | hsl(21, 62%, 56%)  | rgb(212, 121, 73)  | #D47949 |173 |
| 5 | hsl(303, 50%, 31%) | rgb(118, 39, 114)  | #762772 | 96 |
| 6 | hsl(26, 56%, 53%)  | rgb(202, 126, 68)  | #CA7E44 |173 |
| 7 | hsl(51, 74%, 41%)  | rgb(181, 158, 27)  | #B59E1B |179 |
| 8 | hsl(89, 68%, 61%)  | rgb(157, 223, 87)  | #9DDF57 |150 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(299, 45%, 36%),rgb(131, 50, 133),133
hsl(6, 91%, 60%),rgb(245, 78, 60),209
hsl(239, 82%, 46%),rgb(21, 24, 213),20
hsl(21, 62%, 56%),rgb(212, 121, 73),173
hsl(303, 50%, 31%),rgb(118, 39, 114),96
hsl(26, 56%, 53%),rgb(202, 126, 68),173
hsl(51, 74%, 41%),rgb(181, 158, 27),179
hsl(89, 68%, 61%),rgb(157, 223, 87),150

Generated: 2026-04-10 09:17:27
```
