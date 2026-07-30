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

![#AF672B](https://img.shields.io/badge/-%23AF672B?style=flat&logo=none) ![#9F0341](https://img.shields.io/badge/-%239F0341?style=flat&logo=none) ![#3633E4](https://img.shields.io/badge/-%233633E4?style=flat&logo=none) ![#0CB9B1](https://img.shields.io/badge/-%230CB9B1?style=flat&logo=none) ![#37A431](https://img.shields.io/badge/-%2337A431?style=flat&logo=none) ![#1B962A](https://img.shields.io/badge/-%231B962A?style=flat&logo=none) ![#11B4A7](https://img.shields.io/badge/-%2311B4A7?style=flat&logo=none) ![#1DB847](https://img.shields.io/badge/-%231DB847?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-30 17:15:22
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(27, 60%, 43%)  | rgb(175, 103, 43)  | #AF672B |137 |
| 2 | hsl(336, 96%, 32%) |  rgb(159, 3, 65)   | #9F0341 |125 |
| 3 | hsl(241, 77%, 55%) |  rgb(54, 51, 228)  | #3633E4 | 62 |
| 4 | hsl(177, 87%, 39%) | rgb(12, 185, 177)  | #0CB9B1 | 43 |
| 5 | hsl(117, 54%, 42%) |  rgb(55, 164, 49)  | #37A431 | 71 |
| 6 | hsl(127, 69%, 35%) |  rgb(27, 150, 42)  | #1B962A | 71 |
| 7 | hsl(175, 82%, 39%) | rgb(17, 180, 167)  | #11B4A7 | 43 |
| 8 | hsl(136, 72%, 42%) |  rgb(29, 184, 71)  | #1DB847 | 77 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(27, 60%, 43%),rgb(175, 103, 43),137
hsl(336, 96%, 32%),rgb(159, 3, 65),125
hsl(241, 77%, 55%),rgb(54, 51, 228),62
hsl(177, 87%, 39%),rgb(12, 185, 177),43
hsl(117, 54%, 42%),rgb(55, 164, 49),71
hsl(127, 69%, 35%),rgb(27, 150, 42),71
hsl(175, 82%, 39%),rgb(17, 180, 167),43
hsl(136, 72%, 42%),rgb(29, 184, 71),77

Generated: 2026-07-30 17:15:22
```
