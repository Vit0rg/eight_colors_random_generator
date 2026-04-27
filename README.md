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

![#678F09](https://img.shields.io/badge/-%23678F09?style=flat&logo=none) ![#E45529](https://img.shields.io/badge/-%23E45529?style=flat&logo=none) ![#4FB3F1](https://img.shields.io/badge/-%234FB3F1?style=flat&logo=none) ![#6AAD38](https://img.shields.io/badge/-%236AAD38?style=flat&logo=none) ![#A2D783](https://img.shields.io/badge/-%23A2D783?style=flat&logo=none) ![#D9A47C](https://img.shields.io/badge/-%23D9A47C?style=flat&logo=none) ![#1FA6EA](https://img.shields.io/badge/-%231FA6EA?style=flat&logo=none) ![#F01867](https://img.shields.io/badge/-%23F01867?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-27 17:15:03
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(78, 87%, 30%)  |  rgb(103, 143, 9)  | #678F09 |106 |
| 2 | hsl(14, 78%, 53%)  |  rgb(228, 85, 41)  | #E45529 |173 |
| 3 | hsl(203, 86%, 63%) | rgb(79, 179, 241)  | #4FB3F1 |111 |
| 4 | hsl(94, 51%, 45%)  | rgb(106, 173, 56)  | #6AAD38 |107 |
| 5 | hsl(98, 51%, 68%)  | rgb(162, 215, 131) | #A2D783 |151 |
| 6 | hsl(26, 55%, 67%)  | rgb(217, 164, 124) | #D9A47C |180 |
| 7 | hsl(200, 83%, 52%) | rgb(31, 166, 234)  | #1FA6EA | 75 |
| 8 | hsl(338, 88%, 52%) | rgb(240, 24, 103)  | #F01867 |198 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(78, 87%, 30%),rgb(103, 143, 9),106
hsl(14, 78%, 53%),rgb(228, 85, 41),173
hsl(203, 86%, 63%),rgb(79, 179, 241),111
hsl(94, 51%, 45%),rgb(106, 173, 56),107
hsl(98, 51%, 68%),rgb(162, 215, 131),151
hsl(26, 55%, 67%),rgb(217, 164, 124),180
hsl(200, 83%, 52%),rgb(31, 166, 234),75
hsl(338, 88%, 52%),rgb(240, 24, 103),198

Generated: 2026-04-27 17:15:03
```
