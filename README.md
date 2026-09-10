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

![#209785](https://img.shields.io/badge/-%23209785?style=flat&logo=none) ![#274B9F](https://img.shields.io/badge/-%23274B9F?style=flat&logo=none) ![#277924](https://img.shields.io/badge/-%23277924?style=flat&logo=none) ![#3324DF](https://img.shields.io/badge/-%233324DF?style=flat&logo=none) ![#0DA530](https://img.shields.io/badge/-%230DA530?style=flat&logo=none) ![#1602F2](https://img.shields.io/badge/-%231602F2?style=flat&logo=none) ![#BBBB48](https://img.shields.io/badge/-%23BBBB48?style=flat&logo=none) ![#20F346](https://img.shields.io/badge/-%2320F346?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-10 12:30:13
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(171, 65%, 36%) | rgb(32, 151, 133)  | #209785 | 73 |
| 2 | hsl(222, 60%, 39%) |  rgb(39, 75, 159)  | #274B9F | 61 |
| 3 | hsl(118, 54%, 31%) |  rgb(39, 121, 36)  | #277924 | 65 |
| 4 | hsl(245, 75%, 51%) |  rgb(51, 36, 223)  | #3324DF | 62 |
| 5 | hsl(134, 85%, 35%) |  rgb(13, 165, 48)  | #0DA530 | 35 |
| 6 | hsl(245, 98%, 48%) |  rgb(22, 2, 242)   | #1602F2 | 21 |
| 7 | hsl(60, 46%, 51%)  | rgb(187, 187, 72)  | #BBBB48 |185 |
| 8 | hsl(131, 90%, 54%) |  rgb(32, 243, 70)  | #20F346 | 83 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(171, 65%, 36%),rgb(32, 151, 133),73
hsl(222, 60%, 39%),rgb(39, 75, 159),61
hsl(118, 54%, 31%),rgb(39, 121, 36),65
hsl(245, 75%, 51%),rgb(51, 36, 223),62
hsl(134, 85%, 35%),rgb(13, 165, 48),35
hsl(245, 98%, 48%),rgb(22, 2, 242),21
hsl(60, 46%, 51%),rgb(187, 187, 72),185
hsl(131, 90%, 54%),rgb(32, 243, 70),83

Generated: 2026-09-10 12:30:13
```
