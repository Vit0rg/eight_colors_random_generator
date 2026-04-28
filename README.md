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

![#3D227B](https://img.shields.io/badge/-%233D227B?style=flat&logo=none) ![#2734EC](https://img.shields.io/badge/-%232734EC?style=flat&logo=none) ![#41B5C7](https://img.shields.io/badge/-%2341B5C7?style=flat&logo=none) ![#C81F1C](https://img.shields.io/badge/-%23C81F1C?style=flat&logo=none) ![#F0D24B](https://img.shields.io/badge/-%23F0D24B?style=flat&logo=none) ![#86218B](https://img.shields.io/badge/-%2386218B?style=flat&logo=none) ![#9FD38C](https://img.shields.io/badge/-%239FD38C?style=flat&logo=none) ![#2BA5A3](https://img.shields.io/badge/-%232BA5A3?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-28 17:30:20
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(258, 56%, 31%) |  rgb(61, 34, 123)  | #3D227B | 60 |
| 2 | hsl(236, 84%, 54%) |  rgb(39, 52, 236)  | #2734EC | 63 |
| 3 | hsl(188, 55%, 52%) | rgb(65, 181, 199)  | #41B5C7 | 80 |
| 4 |  hsl(1, 75%, 45%)  |  rgb(200, 31, 28)  | #C81F1C |167 |
| 5 | hsl(49, 85%, 62%)  | rgb(240, 210, 75)  | #F0D24B |221 |
| 6 | hsl(297, 61%, 34%) | rgb(134, 33, 139)  | #86218B |133 |
| 7 | hsl(104, 45%, 69%) | rgb(159, 211, 140) | #9FD38C |151 |
| 8 | hsl(179, 58%, 41%) | rgb(43, 165, 163)  | #2BA5A3 | 73 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(258, 56%, 31%),rgb(61, 34, 123),60
hsl(236, 84%, 54%),rgb(39, 52, 236),63
hsl(188, 55%, 52%),rgb(65, 181, 199),80
hsl(1, 75%, 45%),rgb(200, 31, 28),167
hsl(49, 85%, 62%),rgb(240, 210, 75),221
hsl(297, 61%, 34%),rgb(134, 33, 139),133
hsl(104, 45%, 69%),rgb(159, 211, 140),151
hsl(179, 58%, 41%),rgb(43, 165, 163),73

Generated: 2026-04-28 17:30:20
```
