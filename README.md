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

![#10B563](https://img.shields.io/badge/-%2310B563?style=flat&logo=none) ![#EE1401](https://img.shields.io/badge/-%23EE1401?style=flat&logo=none) ![#E37CCB](https://img.shields.io/badge/-%23E37CCB?style=flat&logo=none) ![#279079](https://img.shields.io/badge/-%23279079?style=flat&logo=none) ![#B345A8](https://img.shields.io/badge/-%23B345A8?style=flat&logo=none) ![#8156CC](https://img.shields.io/badge/-%238156CC?style=flat&logo=none) ![#48B179](https://img.shields.io/badge/-%2348B179?style=flat&logo=none) ![#CD1316](https://img.shields.io/badge/-%23CD1316?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-09 17:53:03
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(150, 83%, 39%) |  rgb(16, 181, 99)  | #10B563 | 42 |
| 2 |  hsl(5, 99%, 47%)  |  rgb(238, 20, 1)   | #EE1401 |196 |
| 3 | hsl(314, 65%, 69%) | rgb(227, 124, 203) | #E37CCB |176 |
| 4 | hsl(167, 57%, 36%) | rgb(39, 144, 121)  | #279079 | 72 |
| 5 | hsl(306, 44%, 49%) | rgb(179, 69, 168)  | #B345A8 |133 |
| 6 | hsl(262, 54%, 57%) | rgb(129, 86, 204)  | #8156CC |140 |
| 7 | hsl(148, 42%, 49%) | rgb(72, 177, 121)  | #48B179 | 72 |
| 8 | hsl(359, 83%, 44%) |  rgb(205, 19, 22)  | #CD1316 |160 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(150, 83%, 39%),rgb(16, 181, 99),42
hsl(5, 99%, 47%),rgb(238, 20, 1),196
hsl(314, 65%, 69%),rgb(227, 124, 203),176
hsl(167, 57%, 36%),rgb(39, 144, 121),72
hsl(306, 44%, 49%),rgb(179, 69, 168),133
hsl(262, 54%, 57%),rgb(129, 86, 204),140
hsl(148, 42%, 49%),rgb(72, 177, 121),72
hsl(359, 83%, 44%),rgb(205, 19, 22),160

Generated: 2026-06-09 17:53:03
```
