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

![#B2934C](https://img.shields.io/badge/-%23B2934C?style=flat&logo=none) ![#83AE0E](https://img.shields.io/badge/-%2383AE0E?style=flat&logo=none) ![#EDF339](https://img.shields.io/badge/-%23EDF339?style=flat&logo=none) ![#C9EC2B](https://img.shields.io/badge/-%23C9EC2B?style=flat&logo=none) ![#338835](https://img.shields.io/badge/-%23338835?style=flat&logo=none) ![#D0EC69](https://img.shields.io/badge/-%23D0EC69?style=flat&logo=none) ![#2FDED0](https://img.shields.io/badge/-%232FDED0?style=flat&logo=none) ![#B20F55](https://img.shields.io/badge/-%23B20F55?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-19 16:29:18
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(42, 40%, 50%)  | rgb(178, 147, 76)  | #B2934C |143 |
| 2 | hsl(76, 85%, 37%)  | rgb(131, 174, 14)  | #83AE0E |142 |
| 3 | hsl(62, 89%, 59%)  | rgb(237, 243, 57)  | #EDF339 |227 |
| 4 | hsl(71, 84%, 55%)  | rgb(201, 236, 43)  | #C9EC2B |191 |
| 5 | hsl(121, 45%, 37%) |  rgb(51, 136, 53)  | #338835 | 71 |
| 6 | hsl(73, 78%, 67%)  | rgb(208, 236, 105) | #D0EC69 |192 |
| 7 | hsl(175, 73%, 53%) | rgb(47, 222, 208)  | #2FDED0 | 80 |
| 8 | hsl(334, 84%, 38%) |  rgb(178, 15, 85)  | #B20F55 |126 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(42, 40%, 50%),rgb(178, 147, 76),143
hsl(76, 85%, 37%),rgb(131, 174, 14),142
hsl(62, 89%, 59%),rgb(237, 243, 57),227
hsl(71, 84%, 55%),rgb(201, 236, 43),191
hsl(121, 45%, 37%),rgb(51, 136, 53),71
hsl(73, 78%, 67%),rgb(208, 236, 105),192
hsl(175, 73%, 53%),rgb(47, 222, 208),80
hsl(334, 84%, 38%),rgb(178, 15, 85),126

Generated: 2026-04-19 16:29:18
```
