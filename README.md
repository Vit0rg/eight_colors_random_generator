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

![#410ECD](https://img.shields.io/badge/-%23410ECD?style=flat&logo=none) ![#F57418](https://img.shields.io/badge/-%23F57418?style=flat&logo=none) ![#2598A1](https://img.shields.io/badge/-%232598A1?style=flat&logo=none) ![#CA77A6](https://img.shields.io/badge/-%23CA77A6?style=flat&logo=none) ![#7A80D6](https://img.shields.io/badge/-%237A80D6?style=flat&logo=none) ![#0A4CD0](https://img.shields.io/badge/-%230A4CD0?style=flat&logo=none) ![#4B2884](https://img.shields.io/badge/-%234B2884?style=flat&logo=none) ![#B637E1](https://img.shields.io/badge/-%23B637E1?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-08 16:20:42
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(256, 87%, 43%) |  rgb(65, 14, 205)  | #410ECD | 56 |
| 2 | hsl(25, 92%, 53%)  | rgb(245, 116, 24)  | #F57418 |208 |
| 3 | hsl(184, 62%, 39%) | rgb(37, 152, 161)  | #2598A1 | 73 |
| 4 | hsl(326, 44%, 63%) | rgb(202, 119, 166) | #CA77A6 |175 |
| 5 | hsl(236, 53%, 66%) | rgb(122, 128, 214) | #7A80D6 |110 |
| 6 | hsl(220, 90%, 43%) |  rgb(10, 76, 208)  | #0A4CD0 | 26 |
| 7 | hsl(263, 53%, 34%) |  rgb(75, 40, 132)  | #4B2884 | 61 |
| 8 | hsl(285, 74%, 55%) | rgb(182, 55, 225)  | #B637E1 |170 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(256, 87%, 43%),rgb(65, 14, 205),56
hsl(25, 92%, 53%),rgb(245, 116, 24),208
hsl(184, 62%, 39%),rgb(37, 152, 161),73
hsl(326, 44%, 63%),rgb(202, 119, 166),175
hsl(236, 53%, 66%),rgb(122, 128, 214),110
hsl(220, 90%, 43%),rgb(10, 76, 208),26
hsl(263, 53%, 34%),rgb(75, 40, 132),61
hsl(285, 74%, 55%),rgb(182, 55, 225),170

Generated: 2026-08-08 16:20:42
```
