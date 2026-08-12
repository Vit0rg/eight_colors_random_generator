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

![#FDC829](https://img.shields.io/badge/-%23FDC829?style=flat&logo=none) ![#A83C54](https://img.shields.io/badge/-%23A83C54?style=flat&logo=none) ![#6BDF96](https://img.shields.io/badge/-%236BDF96?style=flat&logo=none) ![#42B6D1](https://img.shields.io/badge/-%2342B6D1?style=flat&logo=none) ![#E10BF8](https://img.shields.io/badge/-%23E10BF8?style=flat&logo=none) ![#310B93](https://img.shields.io/badge/-%23310B93?style=flat&logo=none) ![#2AB025](https://img.shields.io/badge/-%232AB025?style=flat&logo=none) ![#1768BE](https://img.shields.io/badge/-%231768BE?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-12 01:07:00
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(45, 99%, 58%)  | rgb(253, 200, 41)  | #FDC829 |221 |
| 2 | hsl(347, 47%, 45%) |  rgb(168, 60, 84)  | #A83C54 |132 |
| 3 | hsl(142, 65%, 65%) | rgb(107, 223, 150) | #6BDF96 |115 |
| 4 | hsl(191, 61%, 54%) | rgb(66, 182, 209)  | #42B6D1 | 80 |
| 5 | hsl(294, 95%, 51%) | rgb(225, 11, 248)  | #E10BF8 |165 |
| 6 | hsl(257, 86%, 31%) |  rgb(49, 11, 147)  | #310B93 | 55 |
| 7 | hsl(118, 65%, 42%) |  rgb(42, 176, 37)  | #2AB025 | 71 |
| 8 | hsl(211, 78%, 42%) | rgb(23, 104, 190)  | #1768BE | 32 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(45, 99%, 58%),rgb(253, 200, 41),221
hsl(347, 47%, 45%),rgb(168, 60, 84),132
hsl(142, 65%, 65%),rgb(107, 223, 150),115
hsl(191, 61%, 54%),rgb(66, 182, 209),80
hsl(294, 95%, 51%),rgb(225, 11, 248),165
hsl(257, 86%, 31%),rgb(49, 11, 147),55
hsl(118, 65%, 42%),rgb(42, 176, 37),71
hsl(211, 78%, 42%),rgb(23, 104, 190),32

Generated: 2026-08-12 01:07:00
```
