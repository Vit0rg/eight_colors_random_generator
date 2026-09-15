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

![#0DEC9E](https://img.shields.io/badge/-%230DEC9E?style=flat&logo=none) ![#9F3650](https://img.shields.io/badge/-%239F3650?style=flat&logo=none) ![#862730](https://img.shields.io/badge/-%23862730?style=flat&logo=none) ![#631A8E](https://img.shields.io/badge/-%23631A8E?style=flat&logo=none) ![#0A668E](https://img.shields.io/badge/-%230A668E?style=flat&logo=none) ![#1265C3](https://img.shields.io/badge/-%231265C3?style=flat&logo=none) ![#1089DE](https://img.shields.io/badge/-%231089DE?style=flat&logo=none) ![#69EC6B](https://img.shields.io/badge/-%2369EC6B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-15 12:59:35
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(159, 89%, 49%) | rgb(13, 236, 158)  | #0DEC9E | 49 |
| 2 | hsl(345, 49%, 42%) |  rgb(159, 54, 80)  | #9F3650 |132 |
| 3 | hsl(354, 55%, 34%) |  rgb(134, 39, 48)  | #862730 |131 |
| 4 | hsl(278, 69%, 33%) |  rgb(99, 26, 142)  | #631A8E | 97 |
| 5 | hsl(198, 86%, 30%) | rgb(10, 102, 142)  | #0A668E | 31 |
| 6 | hsl(212, 83%, 42%) | rgb(18, 101, 195)  | #1265C3 | 32 |
| 7 | hsl(205, 86%, 47%) | rgb(16, 137, 222)  | #1089DE | 38 |
| 8 | hsl(121, 78%, 67%) | rgb(105, 236, 107) | #69EC6B |120 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(159, 89%, 49%),rgb(13, 236, 158),49
hsl(345, 49%, 42%),rgb(159, 54, 80),132
hsl(354, 55%, 34%),rgb(134, 39, 48),131
hsl(278, 69%, 33%),rgb(99, 26, 142),97
hsl(198, 86%, 30%),rgb(10, 102, 142),31
hsl(212, 83%, 42%),rgb(18, 101, 195),32
hsl(205, 86%, 47%),rgb(16, 137, 222),38
hsl(121, 78%, 67%),rgb(105, 236, 107),120

Generated: 2026-09-15 12:59:35
```
