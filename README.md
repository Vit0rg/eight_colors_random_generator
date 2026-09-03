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

![#8E60BC](https://img.shields.io/badge/-%238E60BC?style=flat&logo=none) ![#4FF679](https://img.shields.io/badge/-%234FF679?style=flat&logo=none) ![#CC44D8](https://img.shields.io/badge/-%23CC44D8?style=flat&logo=none) ![#4B1F7E](https://img.shields.io/badge/-%234B1F7E?style=flat&logo=none) ![#64DDC6](https://img.shields.io/badge/-%2364DDC6?style=flat&logo=none) ![#3D98BC](https://img.shields.io/badge/-%233D98BC?style=flat&logo=none) ![#82932E](https://img.shields.io/badge/-%2382932E?style=flat&logo=none) ![#371DDB](https://img.shields.io/badge/-%23371DDB?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-03 12:21:40
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(270, 41%, 56%) | rgb(142, 96, 188)  | #8E60BC |140 |
| 2 | hsl(135, 91%, 64%) | rgb(79, 246, 121)  | #4FF679 |120 |
| 3 | hsl(295, 66%, 56%) | rgb(204, 68, 216)  | #CC44D8 |170 |
| 4 | hsl(268, 60%, 31%) |  rgb(75, 31, 126)  | #4B1F7E | 60 |
| 5 | hsl(169, 64%, 63%) | rgb(100, 221, 198) | #64DDC6 |116 |
| 6 | hsl(197, 51%, 49%) | rgb(61, 152, 188)  | #3D98BC | 74 |
| 7 | hsl(70, 52%, 38%)  | rgb(130, 147, 46)  | #82932E |143 |
| 8 | hsl(248, 76%, 49%) |  rgb(55, 29, 219)  | #371DDB | 62 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(270, 41%, 56%),rgb(142, 96, 188),140
hsl(135, 91%, 64%),rgb(79, 246, 121),120
hsl(295, 66%, 56%),rgb(204, 68, 216),170
hsl(268, 60%, 31%),rgb(75, 31, 126),60
hsl(169, 64%, 63%),rgb(100, 221, 198),116
hsl(197, 51%, 49%),rgb(61, 152, 188),74
hsl(70, 52%, 38%),rgb(130, 147, 46),143
hsl(248, 76%, 49%),rgb(55, 29, 219),62

Generated: 2026-09-03 12:21:40
```
