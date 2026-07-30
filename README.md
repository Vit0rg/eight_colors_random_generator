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

![#5BF9D7](https://img.shields.io/badge/-%235BF9D7?style=flat&logo=none) ![#A783D7](https://img.shields.io/badge/-%23A783D7?style=flat&logo=none) ![#670BE9](https://img.shields.io/badge/-%23670BE9?style=flat&logo=none) ![#45C920](https://img.shields.io/badge/-%2345C920?style=flat&logo=none) ![#1DB8F5](https://img.shields.io/badge/-%231DB8F5?style=flat&logo=none) ![#8C72E3](https://img.shields.io/badge/-%238C72E3?style=flat&logo=none) ![#6EC4EC](https://img.shields.io/badge/-%236EC4EC?style=flat&logo=none) ![#A5560D](https://img.shields.io/badge/-%23A5560D?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-30 01:28:30
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(167, 94%, 67%) | rgb(91, 249, 215)  | #5BF9D7 |122 |
| 2 | hsl(266, 51%, 68%) | rgb(167, 131, 215) | #A783D7 |146 |
| 3 | hsl(265, 91%, 48%) | rgb(103, 11, 233)  | #670BE9 | 93 |
| 4 | hsl(107, 72%, 46%) |  rgb(69, 201, 32)  | #45C920 | 77 |
| 5 | hsl(197, 92%, 54%) | rgb(29, 184, 245)  | #1DB8F5 | 81 |
| 6 | hsl(254, 67%, 67%) | rgb(140, 114, 227) | #8C72E3 |140 |
| 7 | hsl(199, 77%, 68%) | rgb(110, 196, 236) | #6EC4EC |117 |
| 8 | hsl(29, 85%, 35%)  |  rgb(165, 86, 13)  | #A5560D |136 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(167, 94%, 67%),rgb(91, 249, 215),122
hsl(266, 51%, 68%),rgb(167, 131, 215),146
hsl(265, 91%, 48%),rgb(103, 11, 233),93
hsl(107, 72%, 46%),rgb(69, 201, 32),77
hsl(197, 92%, 54%),rgb(29, 184, 245),81
hsl(254, 67%, 67%),rgb(140, 114, 227),140
hsl(199, 77%, 68%),rgb(110, 196, 236),117
hsl(29, 85%, 35%),rgb(165, 86, 13),136

Generated: 2026-07-30 01:28:30
```
