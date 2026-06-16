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

![#813017](https://img.shields.io/badge/-%23813017?style=flat&logo=none) ![#CC2F1E](https://img.shields.io/badge/-%23CC2F1E?style=flat&logo=none) ![#0B5193](https://img.shields.io/badge/-%230B5193?style=flat&logo=none) ![#5BE01E](https://img.shields.io/badge/-%235BE01E?style=flat&logo=none) ![#7DD8A7](https://img.shields.io/badge/-%237DD8A7?style=flat&logo=none) ![#CF7339](https://img.shields.io/badge/-%23CF7339?style=flat&logo=none) ![#A35FC8](https://img.shields.io/badge/-%23A35FC8?style=flat&logo=none) ![#E1098E](https://img.shields.io/badge/-%23E1098E?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-16 19:28:00
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(14, 69%, 30%)  |  rgb(129, 48, 23)  | #813017 |130 |
| 2 |  hsl(6, 74%, 46%)  |  rgb(204, 47, 30)  | #CC2F1E |167 |
| 3 | hsl(209, 86%, 31%) |  rgb(11, 81, 147)  | #0B5193 | 31 |
| 4 | hsl(101, 76%, 50%) |  rgb(91, 224, 30)  | #5BE01E |113 |
| 5 | hsl(148, 54%, 67%) | rgb(125, 216, 167) | #7DD8A7 |115 |
| 6 | hsl(23, 61%, 52%)  | rgb(207, 115, 57)  | #CF7339 |173 |
| 7 | hsl(279, 49%, 58%) | rgb(163, 95, 200)  | #A35FC8 |140 |
| 8 | hsl(323, 92%, 46%) |  rgb(225, 9, 142)  | #E1098E |163 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(14, 69%, 30%),rgb(129, 48, 23),130
hsl(6, 74%, 46%),rgb(204, 47, 30),167
hsl(209, 86%, 31%),rgb(11, 81, 147),31
hsl(101, 76%, 50%),rgb(91, 224, 30),113
hsl(148, 54%, 67%),rgb(125, 216, 167),115
hsl(23, 61%, 52%),rgb(207, 115, 57),173
hsl(279, 49%, 58%),rgb(163, 95, 200),140
hsl(323, 92%, 46%),rgb(225, 9, 142),163

Generated: 2026-06-16 19:28:00
```
