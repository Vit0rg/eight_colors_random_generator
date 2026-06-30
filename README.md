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

![#F2674E](https://img.shields.io/badge/-%23F2674E?style=flat&logo=none) ![#13A892](https://img.shields.io/badge/-%2313A892?style=flat&logo=none) ![#2D526B](https://img.shields.io/badge/-%232D526B?style=flat&logo=none) ![#2D01DF](https://img.shields.io/badge/-%232D01DF?style=flat&logo=none) ![#1FAE1D](https://img.shields.io/badge/-%231FAE1D?style=flat&logo=none) ![#48D01F](https://img.shields.io/badge/-%2348D01F?style=flat&logo=none) ![#8E0D90](https://img.shields.io/badge/-%238E0D90?style=flat&logo=none) ![#0DB4AE](https://img.shields.io/badge/-%230DB4AE?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-30 10:48:33
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 |  hsl(9, 87%, 63%)  | rgb(242, 103, 78)  | #F2674E |210 |
| 2 | hsl(171, 79%, 37%) | rgb(19, 168, 146)  | #13A892 | 37 |
| 3 | hsl(204, 41%, 30%) |  rgb(45, 82, 107)  | #2D526B | 66 |
| 4 | hsl(252, 99%, 44%) |  rgb(45, 1, 223)   | #2D01DF | 56 |
| 5 | hsl(119, 71%, 40%) |  rgb(31, 174, 29)  | #1FAE1D | 71 |
| 6 | hsl(106, 74%, 47%) |  rgb(72, 208, 31)  | #48D01F | 77 |
| 7 | hsl(299, 83%, 31%) | rgb(142, 13, 144)  | #8E0D90 |127 |
| 8 | hsl(178, 86%, 38%) | rgb(13, 180, 174)  | #0DB4AE | 43 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(9, 87%, 63%),rgb(242, 103, 78),210
hsl(171, 79%, 37%),rgb(19, 168, 146),37
hsl(204, 41%, 30%),rgb(45, 82, 107),66
hsl(252, 99%, 44%),rgb(45, 1, 223),56
hsl(119, 71%, 40%),rgb(31, 174, 29),71
hsl(106, 74%, 47%),rgb(72, 208, 31),77
hsl(299, 83%, 31%),rgb(142, 13, 144),127
hsl(178, 86%, 38%),rgb(13, 180, 174),43

Generated: 2026-06-30 10:48:33
```
