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

![#48E9B1](https://img.shields.io/badge/-%2348E9B1?style=flat&logo=none) ![#1F8473](https://img.shields.io/badge/-%231F8473?style=flat&logo=none) ![#AF2F12](https://img.shields.io/badge/-%23AF2F12?style=flat&logo=none) ![#11BF48](https://img.shields.io/badge/-%2311BF48?style=flat&logo=none) ![#2DB412](https://img.shields.io/badge/-%232DB412?style=flat&logo=none) ![#B25C00](https://img.shields.io/badge/-%23B25C00?style=flat&logo=none) ![#F14AE9](https://img.shields.io/badge/-%23F14AE9?style=flat&logo=none) ![#C34F4B](https://img.shields.io/badge/-%23C34F4B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-01 02:08:11
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(159, 79%, 60%) | rgb(72, 233, 177)  | #48E9B1 | 85 |
| 2 | hsl(170, 62%, 32%) | rgb(31, 132, 115)  | #1F8473 | 72 |
| 3 | hsl(11, 81%, 38%)  |  rgb(175, 47, 18)  | #AF2F12 |130 |
| 4 | hsl(139, 83%, 41%) |  rgb(17, 191, 72)  | #11BF48 | 41 |
| 5 | hsl(110, 81%, 39%) |  rgb(45, 180, 18)  | #2DB412 | 76 |
| 6 | hsl(31, 100%, 35%) |  rgb(178, 92, 0)   | #B25C00 |136 |
| 7 | hsl(303, 86%, 62%) | rgb(241, 74, 233)  | #F14AE9 |207 |
| 8 |  hsl(2, 50%, 53%)  |  rgb(195, 79, 75)  | #C34F4B |173 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(159, 79%, 60%),rgb(72, 233, 177),85
hsl(170, 62%, 32%),rgb(31, 132, 115),72
hsl(11, 81%, 38%),rgb(175, 47, 18),130
hsl(139, 83%, 41%),rgb(17, 191, 72),41
hsl(110, 81%, 39%),rgb(45, 180, 18),76
hsl(31, 100%, 35%),rgb(178, 92, 0),136
hsl(303, 86%, 62%),rgb(241, 74, 233),207
hsl(2, 50%, 53%),rgb(195, 79, 75),173

Generated: 2026-05-01 02:08:11
```
