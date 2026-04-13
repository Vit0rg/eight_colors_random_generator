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

![#EE625D](https://img.shields.io/badge/-%23EE625D?style=flat&logo=none) ![#8B0D57](https://img.shields.io/badge/-%238B0D57?style=flat&logo=none) ![#F7E11B](https://img.shields.io/badge/-%23F7E11B?style=flat&logo=none) ![#907008](https://img.shields.io/badge/-%23907008?style=flat&logo=none) ![#179570](https://img.shields.io/badge/-%23179570?style=flat&logo=none) ![#38E0A8](https://img.shields.io/badge/-%2338E0A8?style=flat&logo=none) ![#209D14](https://img.shields.io/badge/-%23209D14?style=flat&logo=none) ![#828C2B](https://img.shields.io/badge/-%23828C2B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-13 16:55:01
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 |  hsl(2, 81%, 65%)  |  rgb(238, 98, 93)  | #EE625D |210 |
| 2 | hsl(325, 83%, 30%) |  rgb(139, 13, 87)  | #8B0D57 |126 |
| 3 | hsl(54, 94%, 54%)  | rgb(247, 225, 27)  | #F7E11B |221 |
| 4 | hsl(46, 89%, 30%)  |  rgb(144, 112, 8)  | #907008 |136 |
| 5 | hsl(162, 73%, 34%) | rgb(23, 149, 112)  | #179570 | 36 |
| 6 | hsl(160, 73%, 55%) | rgb(56, 224, 168)  | #38E0A8 | 79 |
| 7 | hsl(115, 77%, 35%) |  rgb(32, 157, 20)  | #209D14 | 70 |
| 8 | hsl(66, 53%, 36%)  | rgb(130, 140, 43)  | #828C2B |143 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(2, 81%, 65%),rgb(238, 98, 93),210
hsl(325, 83%, 30%),rgb(139, 13, 87),126
hsl(54, 94%, 54%),rgb(247, 225, 27),221
hsl(46, 89%, 30%),rgb(144, 112, 8),136
hsl(162, 73%, 34%),rgb(23, 149, 112),36
hsl(160, 73%, 55%),rgb(56, 224, 168),79
hsl(115, 77%, 35%),rgb(32, 157, 20),70
hsl(66, 53%, 36%),rgb(130, 140, 43),143

Generated: 2026-04-13 16:55:01
```
