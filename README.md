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

![#0F47A7](https://img.shields.io/badge/-%230F47A7?style=flat&logo=none) ![#68D4F2](https://img.shields.io/badge/-%2368D4F2?style=flat&logo=none) ![#1B2AC9](https://img.shields.io/badge/-%231B2AC9?style=flat&logo=none) ![#933845](https://img.shields.io/badge/-%23933845?style=flat&logo=none) ![#A8285B](https://img.shields.io/badge/-%23A8285B?style=flat&logo=none) ![#C61000](https://img.shields.io/badge/-%23C61000?style=flat&logo=none) ![#5B08B4](https://img.shields.io/badge/-%235B08B4?style=flat&logo=none) ![#0BA3C5](https://img.shields.io/badge/-%230BA3C5?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-06 02:13:20
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(218, 83%, 36%) |  rgb(15, 71, 167)  | #0F47A7 | 25 |
| 2 | hsl(193, 85%, 68%) | rgb(104, 212, 242) | #68D4F2 |117 |
| 3 | hsl(235, 76%, 45%) |  rgb(27, 42, 201)  | #1B2AC9 | 62 |
| 4 | hsl(351, 45%, 40%) |  rgb(147, 56, 69)  | #933845 |131 |
| 5 | hsl(336, 61%, 41%) |  rgb(168, 40, 91)  | #A8285B |132 |
| 6 | hsl(5, 100%, 39%)  |  rgb(198, 16, 0)   | #C61000 |160 |
| 7 | hsl(269, 91%, 37%) |  rgb(91, 8, 180)   | #5B08B4 | 92 |
| 8 | hsl(191, 89%, 41%) | rgb(11, 163, 197)  | #0BA3C5 | 38 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(218, 83%, 36%),rgb(15, 71, 167),25
hsl(193, 85%, 68%),rgb(104, 212, 242),117
hsl(235, 76%, 45%),rgb(27, 42, 201),62
hsl(351, 45%, 40%),rgb(147, 56, 69),131
hsl(336, 61%, 41%),rgb(168, 40, 91),132
hsl(5, 100%, 39%),rgb(198, 16, 0),160
hsl(269, 91%, 37%),rgb(91, 8, 180),92
hsl(191, 89%, 41%),rgb(11, 163, 197),38

Generated: 2026-07-06 02:13:20
```
