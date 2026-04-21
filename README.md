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

![#A7C83C](https://img.shields.io/badge/-%23A7C83C?style=flat&logo=none) ![#D8EE34](https://img.shields.io/badge/-%23D8EE34?style=flat&logo=none) ![#FC35CE](https://img.shields.io/badge/-%23FC35CE?style=flat&logo=none) ![#0BBAA3](https://img.shields.io/badge/-%230BBAA3?style=flat&logo=none) ![#94AA1C](https://img.shields.io/badge/-%2394AA1C?style=flat&logo=none) ![#44AB89](https://img.shields.io/badge/-%2344AB89?style=flat&logo=none) ![#E8633F](https://img.shields.io/badge/-%23E8633F?style=flat&logo=none) ![#FB6480](https://img.shields.io/badge/-%23FB6480?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-21 09:17:44
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(74, 56%, 51%)  | rgb(167, 200, 60)  | #A7C83C |149 |
| 2 | hsl(67, 85%, 57%)  | rgb(216, 238, 52)  | #D8EE34 |191 |
| 3 | hsl(314, 98%, 60%) | rgb(252, 53, 206)  | #FC35CE |206 |
| 4 | hsl(172, 88%, 39%) | rgb(11, 186, 163)  | #0BBAA3 | 43 |
| 5 | hsl(69, 71%, 39%)  | rgb(148, 170, 28)  | #94AA1C |143 |
| 6 | hsl(160, 43%, 47%) | rgb(68, 171, 137)  | #44AB89 | 73 |
| 7 | hsl(13, 79%, 58%)  |  rgb(232, 99, 63)  | #E8633F |209 |
| 8 | hsl(349, 95%, 69%) | rgb(251, 100, 128) | #FB6480 |211 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(74, 56%, 51%),rgb(167, 200, 60),149
hsl(67, 85%, 57%),rgb(216, 238, 52),191
hsl(314, 98%, 60%),rgb(252, 53, 206),206
hsl(172, 88%, 39%),rgb(11, 186, 163),43
hsl(69, 71%, 39%),rgb(148, 170, 28),143
hsl(160, 43%, 47%),rgb(68, 171, 137),73
hsl(13, 79%, 58%),rgb(232, 99, 63),209
hsl(349, 95%, 69%),rgb(251, 100, 128),211

Generated: 2026-04-21 09:17:44
```
