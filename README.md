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

![#9514DF](https://img.shields.io/badge/-%239514DF?style=flat&logo=none) ![#168275](https://img.shields.io/badge/-%23168275?style=flat&logo=none) ![#CFC239](https://img.shields.io/badge/-%23CFC239?style=flat&logo=none) ![#A82E42](https://img.shields.io/badge/-%23A82E42?style=flat&logo=none) ![#FD679E](https://img.shields.io/badge/-%23FD679E?style=flat&logo=none) ![#F9804C](https://img.shields.io/badge/-%23F9804C?style=flat&logo=none) ![#D7A978](https://img.shields.io/badge/-%23D7A978?style=flat&logo=none) ![#82C9BF](https://img.shields.io/badge/-%2382C9BF?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-23 17:10:56
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(278, 83%, 48%) | rgb(149, 20, 223)  | #9514DF |128 |
| 2 | hsl(173, 70%, 30%) | rgb(22, 130, 117)  | #168275 | 36 |
| 3 | hsl(55, 61%, 52%)  | rgb(207, 194, 57)  | #CFC239 |185 |
| 4 | hsl(350, 57%, 42%) |  rgb(168, 46, 66)  | #A82E42 |131 |
| 5 | hsl(338, 98%, 70%) | rgb(253, 103, 158) | #FD679E |211 |
| 6 | hsl(18, 94%, 64%)  | rgb(249, 128, 76)  | #F9804C |215 |
| 7 | hsl(31, 55%, 66%)  | rgb(215, 169, 120) | #D7A978 |180 |
| 8 | hsl(172, 40%, 65%) | rgb(130, 201, 191) | #82C9BF |152 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(278, 83%, 48%),rgb(149, 20, 223),128
hsl(173, 70%, 30%),rgb(22, 130, 117),36
hsl(55, 61%, 52%),rgb(207, 194, 57),185
hsl(350, 57%, 42%),rgb(168, 46, 66),131
hsl(338, 98%, 70%),rgb(253, 103, 158),211
hsl(18, 94%, 64%),rgb(249, 128, 76),215
hsl(31, 55%, 66%),rgb(215, 169, 120),180
hsl(172, 40%, 65%),rgb(130, 201, 191),152

Generated: 2026-04-23 17:10:56
```
