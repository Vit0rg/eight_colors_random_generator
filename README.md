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

![#E49B71](https://img.shields.io/badge/-%23E49B71?style=flat&logo=none) ![#7519D0](https://img.shields.io/badge/-%237519D0?style=flat&logo=none) ![#7D4F1B](https://img.shields.io/badge/-%237D4F1B?style=flat&logo=none) ![#089F45](https://img.shields.io/badge/-%23089F45?style=flat&logo=none) ![#C83C27](https://img.shields.io/badge/-%23C83C27?style=flat&logo=none) ![#51E5BD](https://img.shields.io/badge/-%2351E5BD?style=flat&logo=none) ![#4577F6](https://img.shields.io/badge/-%234577F6?style=flat&logo=none) ![#6899E3](https://img.shields.io/badge/-%236899E3?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-15 17:05:51
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(22, 68%, 67%)  | rgb(228, 155, 113) | #E49B71 |180 |
| 2 | hsl(270, 78%, 46%) | rgb(117, 25, 208)  | #7519D0 | 92 |
| 3 | hsl(32, 64%, 30%)  |  rgb(125, 79, 27)  | #7D4F1B |101 |
| 4 | hsl(144, 90%, 33%) |  rgb(8, 159, 69)   | #089F45 | 35 |
| 5 |  hsl(8, 67%, 47%)  |  rgb(200, 60, 39)  | #C83C27 |167 |
| 6 | hsl(164, 74%, 61%) | rgb(81, 229, 189)  | #51E5BD |116 |
| 7 | hsl(223, 91%, 62%) | rgb(69, 119, 246)  | #4577F6 | 69 |
| 8 | hsl(216, 69%, 65%) | rgb(104, 153, 227) | #6899E3 |110 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(22, 68%, 67%),rgb(228, 155, 113),180
hsl(270, 78%, 46%),rgb(117, 25, 208),92
hsl(32, 64%, 30%),rgb(125, 79, 27),101
hsl(144, 90%, 33%),rgb(8, 159, 69),35
hsl(8, 67%, 47%),rgb(200, 60, 39),167
hsl(164, 74%, 61%),rgb(81, 229, 189),116
hsl(223, 91%, 62%),rgb(69, 119, 246),69
hsl(216, 69%, 65%),rgb(104, 153, 227),110

Generated: 2026-07-15 17:05:51
```
