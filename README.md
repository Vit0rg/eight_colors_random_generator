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

![#6A61EF](https://img.shields.io/badge/-%236A61EF?style=flat&logo=none) ![#539CCA](https://img.shields.io/badge/-%23539CCA?style=flat&logo=none) ![#CF490C](https://img.shields.io/badge/-%23CF490C?style=flat&logo=none) ![#734BF5](https://img.shields.io/badge/-%23734BF5?style=flat&logo=none) ![#4749B7](https://img.shields.io/badge/-%234749B7?style=flat&logo=none) ![#2E87DA](https://img.shields.io/badge/-%232E87DA?style=flat&logo=none) ![#89F056](https://img.shields.io/badge/-%2389F056?style=flat&logo=none) ![#C95EA3](https://img.shields.io/badge/-%23C95EA3?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-19 16:44:55
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(244, 82%, 66%) | rgb(106, 97, 239)  | #6A61EF |105 |
| 2 | hsl(203, 53%, 56%) | rgb(83, 156, 202)  | #539CCA |110 |
| 3 | hsl(19, 89%, 43%)  |  rgb(207, 73, 12)  | #CF490C |166 |
| 4 | hsl(254, 90%, 63%) | rgb(115, 75, 245)  | #734BF5 | 99 |
| 5 | hsl(239, 44%, 50%) |  rgb(71, 73, 183)  | #4749B7 | 62 |
| 6 | hsl(209, 70%, 52%) | rgb(46, 135, 218)  | #2E87DA | 74 |
| 7 | hsl(100, 84%, 64%) | rgb(137, 240, 86)  | #89F056 |156 |
| 8 | hsl(321, 50%, 58%) | rgb(201, 94, 163)  | #C95EA3 |175 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(244, 82%, 66%),rgb(106, 97, 239),105
hsl(203, 53%, 56%),rgb(83, 156, 202),110
hsl(19, 89%, 43%),rgb(207, 73, 12),166
hsl(254, 90%, 63%),rgb(115, 75, 245),99
hsl(239, 44%, 50%),rgb(71, 73, 183),62
hsl(209, 70%, 52%),rgb(46, 135, 218),74
hsl(100, 84%, 64%),rgb(137, 240, 86),156
hsl(321, 50%, 58%),rgb(201, 94, 163),175

Generated: 2026-07-19 16:44:55
```
