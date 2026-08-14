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

![#CC9F51](https://img.shields.io/badge/-%23CC9F51?style=flat&logo=none) ![#1CF636](https://img.shields.io/badge/-%231CF636?style=flat&logo=none) ![#A3C477](https://img.shields.io/badge/-%23A3C477?style=flat&logo=none) ![#D1B27E](https://img.shields.io/badge/-%23D1B27E?style=flat&logo=none) ![#61FF4C](https://img.shields.io/badge/-%2361FF4C?style=flat&logo=none) ![#435FAC](https://img.shields.io/badge/-%23435FAC?style=flat&logo=none) ![#0D0DC8](https://img.shields.io/badge/-%230D0DC8?style=flat&logo=none) ![#628825](https://img.shields.io/badge/-%23628825?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-14 08:58:32
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(38, 55%, 56%)  | rgb(204, 159, 81)  | #CC9F51 |180 |
| 2 | hsl(127, 93%, 54%) |  rgb(28, 246, 54)  | #1CF636 | 83 |
| 3 | hsl(86, 40%, 62%)  | rgb(163, 196, 119) | #A3C477 |150 |
| 4 | hsl(37, 48%, 66%)  | rgb(209, 178, 126) | #D1B27E |180 |
| 5 |hsl(113, 100%, 65%) |  rgb(97, 255, 76)  | #61FF4C |119 |
| 6 | hsl(224, 44%, 47%) |  rgb(67, 95, 172)  | #435FAC | 67 |
| 7 | hsl(240, 87%, 42%) |  rgb(13, 13, 200)  | #0D0DC8 | 20 |
| 8 | hsl(83, 57%, 34%)  |  rgb(98, 136, 37)  | #628825 |107 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(38, 55%, 56%),rgb(204, 159, 81),180
hsl(127, 93%, 54%),rgb(28, 246, 54),83
hsl(86, 40%, 62%),rgb(163, 196, 119),150
hsl(37, 48%, 66%),rgb(209, 178, 126),180
hsl(113, 100%, 65%),rgb(97, 255, 76),119
hsl(224, 44%, 47%),rgb(67, 95, 172),67
hsl(240, 87%, 42%),rgb(13, 13, 200),20
hsl(83, 57%, 34%),rgb(98, 136, 37),107

Generated: 2026-08-14 08:58:32
```
