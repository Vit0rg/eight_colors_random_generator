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

![#61DFD9](https://img.shields.io/badge/-%2361DFD9?style=flat&logo=none) ![#9F0951](https://img.shields.io/badge/-%239F0951?style=flat&logo=none) ![#6AD1C3](https://img.shields.io/badge/-%236AD1C3?style=flat&logo=none) ![#441A7E](https://img.shields.io/badge/-%23441A7E?style=flat&logo=none) ![#2EDACE](https://img.shields.io/badge/-%232EDACE?style=flat&logo=none) ![#37F08A](https://img.shields.io/badge/-%2337F08A?style=flat&logo=none) ![#1423A7](https://img.shields.io/badge/-%231423A7?style=flat&logo=none) ![#3B9607](https://img.shields.io/badge/-%233B9607?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-18 16:44:25
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(177, 67%, 63%) | rgb(97, 223, 217)  | #61DFD9 |116 |
| 2 | hsl(331, 89%, 33%) |  rgb(159, 9, 81)   | #9F0951 |126 |
| 3 | hsl(172, 53%, 62%) | rgb(106, 209, 195) | #6AD1C3 |116 |
| 4 | hsl(265, 66%, 30%) |  rgb(68, 26, 126)  | #441A7E | 60 |
| 5 | hsl(176, 70%, 52%) | rgb(46, 218, 206)  | #2EDACE | 80 |
| 6 | hsl(147, 86%, 58%) | rgb(55, 240, 138)  | #37F08A | 85 |
| 7 | hsl(234, 78%, 37%) |  rgb(20, 35, 167)  | #1423A7 | 25 |
| 8 | hsl(98, 91%, 31%)  |  rgb(59, 150, 7)   | #3B9607 | 70 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(177, 67%, 63%),rgb(97, 223, 217),116
hsl(331, 89%, 33%),rgb(159, 9, 81),126
hsl(172, 53%, 62%),rgb(106, 209, 195),116
hsl(265, 66%, 30%),rgb(68, 26, 126),60
hsl(176, 70%, 52%),rgb(46, 218, 206),80
hsl(147, 86%, 58%),rgb(55, 240, 138),85
hsl(234, 78%, 37%),rgb(20, 35, 167),25
hsl(98, 91%, 31%),rgb(59, 150, 7),70

Generated: 2026-07-18 16:44:25
```
