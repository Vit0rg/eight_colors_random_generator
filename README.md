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

![#19CCBD](https://img.shields.io/badge/-%2319CCBD?style=flat&logo=none) ![#1F2A8E](https://img.shields.io/badge/-%231F2A8E?style=flat&logo=none) ![#A73986](https://img.shields.io/badge/-%23A73986?style=flat&logo=none) ![#DD4B0C](https://img.shields.io/badge/-%23DD4B0C?style=flat&logo=none) ![#0BCAC4](https://img.shields.io/badge/-%230BCAC4?style=flat&logo=none) ![#908AD5](https://img.shields.io/badge/-%23908AD5?style=flat&logo=none) ![#28E56A](https://img.shields.io/badge/-%2328E56A?style=flat&logo=none) ![#43A4B1](https://img.shields.io/badge/-%2343A4B1?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-03 01:55:12
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(175, 78%, 45%) | rgb(25, 204, 189)  | #19CCBD | 44 |
| 2 | hsl(234, 64%, 34%) |  rgb(31, 42, 142)  | #1F2A8E | 61 |
| 3 | hsl(318, 49%, 44%) | rgb(167, 57, 134)  | #A73986 |133 |
| 4 | hsl(18, 89%, 46%)  |  rgb(221, 75, 12)  | #DD4B0C |166 |
| 5 | hsl(178, 89%, 42%) | rgb(11, 202, 196)  | #0BCAC4 | 44 |
| 6 | hsl(245, 47%, 69%) | rgb(144, 138, 213) | #908AD5 |146 |
| 7 | hsl(141, 79%, 53%) | rgb(40, 229, 106)  | #28E56A | 78 |
| 8 | hsl(187, 45%, 48%) | rgb(67, 164, 177)  | #43A4B1 | 73 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(175, 78%, 45%),rgb(25, 204, 189),44
hsl(234, 64%, 34%),rgb(31, 42, 142),61
hsl(318, 49%, 44%),rgb(167, 57, 134),133
hsl(18, 89%, 46%),rgb(221, 75, 12),166
hsl(178, 89%, 42%),rgb(11, 202, 196),44
hsl(245, 47%, 69%),rgb(144, 138, 213),146
hsl(141, 79%, 53%),rgb(40, 229, 106),78
hsl(187, 45%, 48%),rgb(67, 164, 177),73

Generated: 2026-08-03 01:55:12
```
