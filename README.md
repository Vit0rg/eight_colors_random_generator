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

![#6031B9](https://img.shields.io/badge/-%236031B9?style=flat&logo=none) ![#F02D95](https://img.shields.io/badge/-%23F02D95?style=flat&logo=none) ![#16DEB9](https://img.shields.io/badge/-%2316DEB9?style=flat&logo=none) ![#378F77](https://img.shields.io/badge/-%23378F77?style=flat&logo=none) ![#14A0A3](https://img.shields.io/badge/-%2314A0A3?style=flat&logo=none) ![#307523](https://img.shields.io/badge/-%23307523?style=flat&logo=none) ![#4892F3](https://img.shields.io/badge/-%234892F3?style=flat&logo=none) ![#4C65C1](https://img.shields.io/badge/-%234C65C1?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-20 16:55:57
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(261, 58%, 46%) |  rgb(96, 49, 185)  | #6031B9 | 98 |
| 2 | hsl(328, 87%, 56%) | rgb(240, 45, 149)  | #F02D95 |205 |
| 3 | hsl(169, 82%, 48%) | rgb(22, 222, 185)  | #16DEB9 | 44 |
| 4 | hsl(164, 44%, 39%) | rgb(55, 143, 119)  | #378F77 | 72 |
| 5 | hsl(181, 78%, 36%) | rgb(20, 160, 163)  | #14A0A3 | 37 |
| 6 | hsl(111, 53%, 30%) |  rgb(48, 117, 35)  | #307523 | 65 |
| 7 | hsl(214, 88%, 62%) | rgb(72, 146, 243)  | #4892F3 | 75 |
| 8 | hsl(227, 49%, 53%) | rgb(76, 101, 193)  | #4C65C1 | 68 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(261, 58%, 46%),rgb(96, 49, 185),98
hsl(328, 87%, 56%),rgb(240, 45, 149),205
hsl(169, 82%, 48%),rgb(22, 222, 185),44
hsl(164, 44%, 39%),rgb(55, 143, 119),72
hsl(181, 78%, 36%),rgb(20, 160, 163),37
hsl(111, 53%, 30%),rgb(48, 117, 35),65
hsl(214, 88%, 62%),rgb(72, 146, 243),75
hsl(227, 49%, 53%),rgb(76, 101, 193),68

Generated: 2026-04-20 16:55:57
```
