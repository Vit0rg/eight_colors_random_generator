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

![#F7ED5E](https://img.shields.io/badge/-%23F7ED5E?style=flat&logo=none) ![#48337A](https://img.shields.io/badge/-%2348337A?style=flat&logo=none) ![#9ADC79](https://img.shields.io/badge/-%239ADC79?style=flat&logo=none) ![#308277](https://img.shields.io/badge/-%23308277?style=flat&logo=none) ![#DD5C1C](https://img.shields.io/badge/-%23DD5C1C?style=flat&logo=none) ![#497ACA](https://img.shields.io/badge/-%23497ACA?style=flat&logo=none) ![#85DA8C](https://img.shields.io/badge/-%2385DA8C?style=flat&logo=none) ![#194A89](https://img.shields.io/badge/-%23194A89?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-16 09:57:36
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(56, 91%, 67%)  | rgb(247, 237, 94)  | #F7ED5E |228 |
| 2 | hsl(258, 41%, 34%) |  rgb(72, 51, 122)  | #48337A | 60 |
| 3 | hsl(100, 59%, 67%) | rgb(154, 220, 121) | #9ADC79 |150 |
| 4 | hsl(172, 46%, 35%) | rgb(48, 130, 119)  | #308277 | 72 |
| 5 | hsl(20, 77%, 49%)  |  rgb(221, 92, 28)  | #DD5C1C |173 |
| 6 | hsl(217, 55%, 54%) | rgb(73, 122, 202)  | #497ACA | 68 |
| 7 | hsl(125, 54%, 69%) | rgb(133, 218, 140) | #85DA8C |151 |
| 8 | hsl(214, 69%, 32%) |  rgb(25, 74, 137)  | #194A89 | 25 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(56, 91%, 67%),rgb(247, 237, 94),228
hsl(258, 41%, 34%),rgb(72, 51, 122),60
hsl(100, 59%, 67%),rgb(154, 220, 121),150
hsl(172, 46%, 35%),rgb(48, 130, 119),72
hsl(20, 77%, 49%),rgb(221, 92, 28),173
hsl(217, 55%, 54%),rgb(73, 122, 202),68
hsl(125, 54%, 69%),rgb(133, 218, 140),151
hsl(214, 69%, 32%),rgb(25, 74, 137),25

Generated: 2026-07-16 09:57:36
```
