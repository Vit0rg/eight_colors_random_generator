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

![#1A3B88](https://img.shields.io/badge/-%231A3B88?style=flat&logo=none) ![#57BABC](https://img.shields.io/badge/-%2357BABC?style=flat&logo=none) ![#307761](https://img.shields.io/badge/-%23307761?style=flat&logo=none) ![#1D1ACF](https://img.shields.io/badge/-%231D1ACF?style=flat&logo=none) ![#86DE8C](https://img.shields.io/badge/-%2386DE8C?style=flat&logo=none) ![#854432](https://img.shields.io/badge/-%23854432?style=flat&logo=none) ![#78E799](https://img.shields.io/badge/-%2378E799?style=flat&logo=none) ![#B65270](https://img.shields.io/badge/-%23B65270?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-03 17:13:38
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(222, 67%, 32%) |  rgb(26, 59, 136)  | #1A3B88 | 61 |
| 2 | hsl(181, 43%, 54%) | rgb(87, 186, 188)  | #57BABC |116 |
| 3 | hsl(161, 42%, 33%) |  rgb(48, 119, 97)  | #307761 | 66 |
| 4 | hsl(241, 77%, 46%) |  rgb(29, 26, 207)  | #1D1ACF | 62 |
| 5 | hsl(124, 57%, 70%) | rgb(134, 222, 140) | #86DE8C |151 |
| 6 | hsl(13, 45%, 36%)  |  rgb(133, 68, 50)  | #854432 |131 |
| 7 | hsl(138, 70%, 69%) | rgb(120, 231, 153) | #78E799 |121 |
| 8 | hsl(342, 41%, 52%) | rgb(182, 82, 112)  | #B65270 |174 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(222, 67%, 32%),rgb(26, 59, 136),61
hsl(181, 43%, 54%),rgb(87, 186, 188),116
hsl(161, 42%, 33%),rgb(48, 119, 97),66
hsl(241, 77%, 46%),rgb(29, 26, 207),62
hsl(124, 57%, 70%),rgb(134, 222, 140),151
hsl(13, 45%, 36%),rgb(133, 68, 50),131
hsl(138, 70%, 69%),rgb(120, 231, 153),121
hsl(342, 41%, 52%),rgb(182, 82, 112),174

Generated: 2026-07-03 17:13:38
```
