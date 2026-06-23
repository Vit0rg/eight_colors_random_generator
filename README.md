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

![#4AF686](https://img.shields.io/badge/-%234AF686?style=flat&logo=none) ![#E924E9](https://img.shields.io/badge/-%23E924E9?style=flat&logo=none) ![#0711A0](https://img.shields.io/badge/-%230711A0?style=flat&logo=none) ![#0489DB](https://img.shields.io/badge/-%230489DB?style=flat&logo=none) ![#F74EDB](https://img.shields.io/badge/-%23F74EDB?style=flat&logo=none) ![#CB5C93](https://img.shields.io/badge/-%23CB5C93?style=flat&logo=none) ![#9141E1](https://img.shields.io/badge/-%239141E1?style=flat&logo=none) ![#4A10A2](https://img.shields.io/badge/-%234A10A2?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-23 02:25:48
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(141, 91%, 63%) | rgb(74, 246, 134)  | #4AF686 | 85 |
| 2 | hsl(300, 82%, 53%) | rgb(233, 36, 233)  | #E924E9 |207 |
| 3 | hsl(236, 91%, 33%) |  rgb(7, 17, 160)   | #0711A0 | 19 |
| 4 | hsl(203, 96%, 44%) |  rgb(4, 137, 219)  | #0489DB | 38 |
| 5 | hsl(310, 92%, 64%) | rgb(247, 78, 219)  | #F74EDB |212 |
| 6 | hsl(330, 52%, 58%) | rgb(203, 92, 147)  | #CB5C93 |175 |
| 7 | hsl(270, 73%, 57%) | rgb(145, 65, 225)  | #9141E1 |134 |
| 8 | hsl(264, 82%, 35%) |  rgb(74, 16, 162)  | #4A10A2 | 55 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(141, 91%, 63%),rgb(74, 246, 134),85
hsl(300, 82%, 53%),rgb(233, 36, 233),207
hsl(236, 91%, 33%),rgb(7, 17, 160),19
hsl(203, 96%, 44%),rgb(4, 137, 219),38
hsl(310, 92%, 64%),rgb(247, 78, 219),212
hsl(330, 52%, 58%),rgb(203, 92, 147),175
hsl(270, 73%, 57%),rgb(145, 65, 225),134
hsl(264, 82%, 35%),rgb(74, 16, 162),55

Generated: 2026-06-23 02:25:48
```
