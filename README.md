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

![#F457E4](https://img.shields.io/badge/-%23F457E4?style=flat&logo=none) ![#279030](https://img.shields.io/badge/-%23279030?style=flat&logo=none) ![#42D193](https://img.shields.io/badge/-%2342D193?style=flat&logo=none) ![#48920B](https://img.shields.io/badge/-%2348920B?style=flat&logo=none) ![#0F88FA](https://img.shields.io/badge/-%230F88FA?style=flat&logo=none) ![#14CC3F](https://img.shields.io/badge/-%2314CC3F?style=flat&logo=none) ![#D1E079](https://img.shields.io/badge/-%23D1E079?style=flat&logo=none) ![#5EE2D7](https://img.shields.io/badge/-%235EE2D7?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-10 00:07:39
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(306, 88%, 65%) | rgb(244, 87, 228)  | #F457E4 |212 |
| 2 | hsl(125, 57%, 36%) |  rgb(39, 144, 48)  | #279030 | 71 |
| 3 | hsl(154, 61%, 54%) | rgb(66, 209, 147)  | #42D193 | 79 |
| 4 | hsl(93, 85%, 31%)  |  rgb(72, 146, 11)  | #48920B | 70 |
| 5 | hsl(209, 96%, 52%) | rgb(15, 136, 250)  | #0F88FA | 39 |
| 6 | hsl(134, 82%, 44%) |  rgb(20, 204, 63)  | #14CC3F | 41 |
| 7 | hsl(69, 63%, 68%)  | rgb(209, 224, 121) | #D1E079 |186 |
| 8 | hsl(175, 70%, 63%) | rgb(94, 226, 215)  | #5EE2D7 |116 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(306, 88%, 65%),rgb(244, 87, 228),212
hsl(125, 57%, 36%),rgb(39, 144, 48),71
hsl(154, 61%, 54%),rgb(66, 209, 147),79
hsl(93, 85%, 31%),rgb(72, 146, 11),70
hsl(209, 96%, 52%),rgb(15, 136, 250),39
hsl(134, 82%, 44%),rgb(20, 204, 63),41
hsl(69, 63%, 68%),rgb(209, 224, 121),186
hsl(175, 70%, 63%),rgb(94, 226, 215),116

Generated: 2026-04-10 00:07:39
```
