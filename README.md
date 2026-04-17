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

![#EEE53E](https://img.shields.io/badge/-%23EEE53E?style=flat&logo=none) ![#831F5B](https://img.shields.io/badge/-%23831F5B?style=flat&logo=none) ![#27B3A8](https://img.shields.io/badge/-%2327B3A8?style=flat&logo=none) ![#3117D7](https://img.shields.io/badge/-%233117D7?style=flat&logo=none) ![#14DF29](https://img.shields.io/badge/-%2314DF29?style=flat&logo=none) ![#DD6E7E](https://img.shields.io/badge/-%23DD6E7E?style=flat&logo=none) ![#A64011](https://img.shields.io/badge/-%23A64011?style=flat&logo=none) ![#327FFA](https://img.shields.io/badge/-%23327FFA?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-17 16:44:28
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(57, 84%, 59%)  | rgb(238, 229, 62)  | #EEE53E |221 |
| 2 | hsl(324, 61%, 32%) |  rgb(131, 31, 91)  | #831F5B |132 |
| 3 | hsl(175, 64%, 43%) | rgb(39, 179, 168)  | #27B3A8 | 73 |
| 4 | hsl(248, 80%, 47%) |  rgb(49, 23, 215)  | #3117D7 | 56 |
| 5 | hsl(126, 83%, 48%) |  rgb(20, 223, 41)  | #14DF29 | 41 |
| 6 | hsl(351, 62%, 65%) | rgb(221, 110, 126) | #DD6E7E |174 |
| 7 | hsl(19, 81%, 36%)  |  rgb(166, 64, 17)  | #A64011 |130 |
| 8 | hsl(217, 96%, 59%) | rgb(50, 127, 250)  | #327FFA | 69 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(57, 84%, 59%),rgb(238, 229, 62),221
hsl(324, 61%, 32%),rgb(131, 31, 91),132
hsl(175, 64%, 43%),rgb(39, 179, 168),73
hsl(248, 80%, 47%),rgb(49, 23, 215),56
hsl(126, 83%, 48%),rgb(20, 223, 41),41
hsl(351, 62%, 65%),rgb(221, 110, 126),174
hsl(19, 81%, 36%),rgb(166, 64, 17),130
hsl(217, 96%, 59%),rgb(50, 127, 250),69

Generated: 2026-04-17 16:44:28
```
