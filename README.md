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

![#CC4CD0](https://img.shields.io/badge/-%23CC4CD0?style=flat&logo=none) ![#228F4C](https://img.shields.io/badge/-%23228F4C?style=flat&logo=none) ![#39A535](https://img.shields.io/badge/-%2339A535?style=flat&logo=none) ![#1FA167](https://img.shields.io/badge/-%231FA167?style=flat&logo=none) ![#752832](https://img.shields.io/badge/-%23752832?style=flat&logo=none) ![#79D2C3](https://img.shields.io/badge/-%2379D2C3?style=flat&logo=none) ![#7C2389](https://img.shields.io/badge/-%237C2389?style=flat&logo=none) ![#E967DC](https://img.shields.io/badge/-%23E967DC?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-05 09:54:04
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(298, 59%, 56%) | rgb(204, 76, 208)  | #CC4CD0 |170 |
| 2 | hsl(143, 61%, 35%) |  rgb(34, 143, 76)  | #228F4C | 71 |
| 3 | hsl(118, 51%, 43%) |  rgb(57, 165, 53)  | #39A535 | 71 |
| 4 | hsl(153, 67%, 38%) | rgb(31, 161, 103)  | #1FA167 | 72 |
| 5 | hsl(352, 49%, 31%) |  rgb(117, 40, 50)  | #752832 | 95 |
| 6 | hsl(170, 50%, 65%) | rgb(121, 210, 195) | #79D2C3 |116 |
| 7 | hsl(292, 59%, 34%) | rgb(124, 35, 137)  | #7C2389 | 97 |
| 8 | hsl(306, 75%, 66%) | rgb(233, 103, 220) | #E967DC |212 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(298, 59%, 56%),rgb(204, 76, 208),170
hsl(143, 61%, 35%),rgb(34, 143, 76),71
hsl(118, 51%, 43%),rgb(57, 165, 53),71
hsl(153, 67%, 38%),rgb(31, 161, 103),72
hsl(352, 49%, 31%),rgb(117, 40, 50),95
hsl(170, 50%, 65%),rgb(121, 210, 195),116
hsl(292, 59%, 34%),rgb(124, 35, 137),97
hsl(306, 75%, 66%),rgb(233, 103, 220),212

Generated: 2026-05-05 09:54:04
```
