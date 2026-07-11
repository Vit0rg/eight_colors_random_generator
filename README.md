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

![#B9E77D](https://img.shields.io/badge/-%23B9E77D?style=flat&logo=none) ![#CD3BCE](https://img.shields.io/badge/-%23CD3BCE?style=flat&logo=none) ![#F92492](https://img.shields.io/badge/-%23F92492?style=flat&logo=none) ![#929419](https://img.shields.io/badge/-%23929419?style=flat&logo=none) ![#CC6AAB](https://img.shields.io/badge/-%23CC6AAB?style=flat&logo=none) ![#DAA42E](https://img.shields.io/badge/-%23DAA42E?style=flat&logo=none) ![#602CB8](https://img.shields.io/badge/-%23602CB8?style=flat&logo=none) ![#244784](https://img.shields.io/badge/-%23244784?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-11 09:17:43
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(86, 69%, 70%)  | rgb(185, 231, 125) | #B9E77D |192 |
| 2 | hsl(300, 60%, 52%) | rgb(205, 59, 206)  | #CD3BCE |170 |
| 3 | hsl(329, 95%, 56%) | rgb(249, 36, 146)  | #F92492 |205 |
| 4 | hsl(61, 71%, 34%)  | rgb(146, 148, 25)  | #929419 |142 |
| 5 | hsl(320, 49%, 61%) | rgb(204, 106, 171) | #CC6AAB |175 |
| 6 | hsl(41, 70%, 52%)  | rgb(218, 164, 46)  | #DAA42E |179 |
| 7 | hsl(262, 61%, 45%) |  rgb(96, 44, 184)  | #602CB8 | 98 |
| 8 | hsl(218, 57%, 33%) |  rgb(36, 71, 132)  | #244784 | 61 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(86, 69%, 70%),rgb(185, 231, 125),192
hsl(300, 60%, 52%),rgb(205, 59, 206),170
hsl(329, 95%, 56%),rgb(249, 36, 146),205
hsl(61, 71%, 34%),rgb(146, 148, 25),142
hsl(320, 49%, 61%),rgb(204, 106, 171),175
hsl(41, 70%, 52%),rgb(218, 164, 46),179
hsl(262, 61%, 45%),rgb(96, 44, 184),98
hsl(218, 57%, 33%),rgb(36, 71, 132),61

Generated: 2026-07-11 09:17:43
```
