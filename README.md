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

![#BEE307](https://img.shields.io/badge/-%23BEE307?style=flat&logo=none) ![#37F586](https://img.shields.io/badge/-%2337F586?style=flat&logo=none) ![#7E45CD](https://img.shields.io/badge/-%237E45CD?style=flat&logo=none) ![#16BCBF](https://img.shields.io/badge/-%2316BCBF?style=flat&logo=none) ![#57CB66](https://img.shields.io/badge/-%2357CB66?style=flat&logo=none) ![#801895](https://img.shields.io/badge/-%23801895?style=flat&logo=none) ![#F1035E](https://img.shields.io/badge/-%23F1035E?style=flat&logo=none) ![#7E55E6](https://img.shields.io/badge/-%237E55E6?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-24 01:49:49
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(70, 94%, 46%)  |  rgb(190, 227, 7)  | #BEE307 |184 |
| 2 | hsl(145, 91%, 59%) | rgb(55, 245, 134)  | #37F586 | 85 |
| 3 | hsl(265, 58%, 54%) | rgb(126, 69, 205)  | #7E45CD | 98 |
| 4 | hsl(181, 79%, 42%) | rgb(22, 188, 191)  | #16BCBF | 44 |
| 5 | hsl(128, 53%, 57%) | rgb(87, 203, 102)  | #57CB66 |114 |
| 6 | hsl(290, 72%, 34%) | rgb(128, 24, 149)  | #801895 |127 |
| 7 | hsl(337, 97%, 48%) |  rgb(241, 3, 94)   | #F1035E |198 |
| 8 | hsl(257, 75%, 62%) | rgb(126, 85, 230)  | #7E55E6 |104 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(70, 94%, 46%),rgb(190, 227, 7),184
hsl(145, 91%, 59%),rgb(55, 245, 134),85
hsl(265, 58%, 54%),rgb(126, 69, 205),98
hsl(181, 79%, 42%),rgb(22, 188, 191),44
hsl(128, 53%, 57%),rgb(87, 203, 102),114
hsl(290, 72%, 34%),rgb(128, 24, 149),127
hsl(337, 97%, 48%),rgb(241, 3, 94),198
hsl(257, 75%, 62%),rgb(126, 85, 230),104

Generated: 2026-04-24 01:49:49
```
