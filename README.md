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

![#27557C](https://img.shields.io/badge/-%2327557C?style=flat&logo=none) ![#BD5541](https://img.shields.io/badge/-%23BD5541?style=flat&logo=none) ![#2F9C76](https://img.shields.io/badge/-%232F9C76?style=flat&logo=none) ![#891E8F](https://img.shields.io/badge/-%23891E8F?style=flat&logo=none) ![#EB8164](https://img.shields.io/badge/-%23EB8164?style=flat&logo=none) ![#11ED57](https://img.shields.io/badge/-%2311ED57?style=flat&logo=none) ![#5CBBE4](https://img.shields.io/badge/-%235CBBE4?style=flat&logo=none) ![#72FC63](https://img.shields.io/badge/-%2372FC63?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-22 17:07:28
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(207, 52%, 32%) |  rgb(39, 85, 124)  | #27557C | 66 |
| 2 | hsl(10, 49%, 50%)  |  rgb(189, 85, 65)  | #BD5541 |173 |
| 3 | hsl(159, 53%, 40%) | rgb(47, 156, 118)  | #2F9C76 | 72 |
| 4 | hsl(297, 65%, 34%) | rgb(137, 30, 143)  | #891E8F |133 |
| 5 | hsl(13, 78%, 66%)  | rgb(235, 129, 100) | #EB8164 |216 |
| 6 | hsl(139, 86%, 50%) |  rgb(17, 237, 87)  | #11ED57 | 48 |
| 7 | hsl(198, 72%, 63%) | rgb(92, 187, 228)  | #5CBBE4 |116 |
| 8 | hsl(114, 97%, 69%) | rgb(114, 252, 99)  | #72FC63 |120 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(207, 52%, 32%),rgb(39, 85, 124),66
hsl(10, 49%, 50%),rgb(189, 85, 65),173
hsl(159, 53%, 40%),rgb(47, 156, 118),72
hsl(297, 65%, 34%),rgb(137, 30, 143),133
hsl(13, 78%, 66%),rgb(235, 129, 100),216
hsl(139, 86%, 50%),rgb(17, 237, 87),48
hsl(198, 72%, 63%),rgb(92, 187, 228),116
hsl(114, 97%, 69%),rgb(114, 252, 99),120

Generated: 2026-07-22 17:07:28
```
