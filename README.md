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

![#247179](https://img.shields.io/badge/-%23247179?style=flat&logo=none) ![#ADCE35](https://img.shields.io/badge/-%23ADCE35?style=flat&logo=none) ![#42B309](https://img.shields.io/badge/-%2342B309?style=flat&logo=none) ![#25079B](https://img.shields.io/badge/-%2325079B?style=flat&logo=none) ![#A850F0](https://img.shields.io/badge/-%23A850F0?style=flat&logo=none) ![#1D5EF5](https://img.shields.io/badge/-%231D5EF5?style=flat&logo=none) ![#864927](https://img.shields.io/badge/-%23864927?style=flat&logo=none) ![#E5E53C](https://img.shields.io/badge/-%23E5E53C?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-30 17:46:40
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(186, 54%, 31%) | rgb(36, 113, 121)  | #247179 | 66 |
| 2 | hsl(73, 61%, 51%)  | rgb(173, 206, 53)  | #ADCE35 |149 |
| 3 | hsl(100, 90%, 37%) |  rgb(66, 179, 9)   | #42B309 | 70 |
| 4 | hsl(252, 91%, 32%) |  rgb(37, 7, 155)   | #25079B | 55 |
| 5 | hsl(273, 85%, 63%) | rgb(168, 80, 240)  | #A850F0 |141 |
| 6 | hsl(222, 92%, 54%) |  rgb(29, 94, 245)  | #1D5EF5 | 69 |
| 7 | hsl(22, 55%, 34%)  |  rgb(134, 73, 39)  | #864927 |131 |
| 8 | hsl(60, 77%, 57%)  | rgb(229, 229, 60)  | #E5E53C |185 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(186, 54%, 31%),rgb(36, 113, 121),66
hsl(73, 61%, 51%),rgb(173, 206, 53),149
hsl(100, 90%, 37%),rgb(66, 179, 9),70
hsl(252, 91%, 32%),rgb(37, 7, 155),55
hsl(273, 85%, 63%),rgb(168, 80, 240),141
hsl(222, 92%, 54%),rgb(29, 94, 245),69
hsl(22, 55%, 34%),rgb(134, 73, 39),131
hsl(60, 77%, 57%),rgb(229, 229, 60),185

Generated: 2026-06-30 17:46:40
```
