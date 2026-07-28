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

![#FF7451](https://img.shields.io/badge/-%23FF7451?style=flat&logo=none) ![#4013BD](https://img.shields.io/badge/-%234013BD?style=flat&logo=none) ![#87BA3A](https://img.shields.io/badge/-%2387BA3A?style=flat&logo=none) ![#EE5752](https://img.shields.io/badge/-%23EE5752?style=flat&logo=none) ![#CD0303](https://img.shields.io/badge/-%23CD0303?style=flat&logo=none) ![#9C2301](https://img.shields.io/badge/-%239C2301?style=flat&logo=none) ![#0028A3](https://img.shields.io/badge/-%230028A3?style=flat&logo=none) ![#5F9EBD](https://img.shields.io/badge/-%235F9EBD?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-28 01:44:00
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(12, 100%, 66%) | rgb(255, 116, 81)  | #FF7451 |210 |
| 2 | hsl(256, 81%, 41%) |  rgb(64, 19, 189)  | #4013BD | 56 |
| 3 | hsl(84, 52%, 48%)  | rgb(135, 186, 58)  | #87BA3A |149 |
| 4 |  hsl(2, 83%, 63%)  |  rgb(238, 87, 82)  | #EE5752 |210 |
| 5 |  hsl(0, 97%, 41%)  |   rgb(205, 3, 3)   | #CD0303 |160 |
| 6 | hsl(13, 98%, 31%)  |  rgb(156, 35, 1)   | #9C2301 |130 |
| 7 |hsl(225, 100%, 32%) |  rgb(0, 40, 163)   | #0028A3 | 25 |
| 8 | hsl(200, 42%, 56%) | rgb(95, 158, 189)  | #5F9EBD |110 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(12, 100%, 66%),rgb(255, 116, 81),210
hsl(256, 81%, 41%),rgb(64, 19, 189),56
hsl(84, 52%, 48%),rgb(135, 186, 58),149
hsl(2, 83%, 63%),rgb(238, 87, 82),210
hsl(0, 97%, 41%),rgb(205, 3, 3),160
hsl(13, 98%, 31%),rgb(156, 35, 1),130
hsl(225, 100%, 32%),rgb(0, 40, 163),25
hsl(200, 42%, 56%),rgb(95, 158, 189),110

Generated: 2026-07-28 01:44:00
```
