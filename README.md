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

![#89DB97](https://img.shields.io/badge/-%2389DB97?style=flat&logo=none) ![#A31E9D](https://img.shields.io/badge/-%23A31E9D?style=flat&logo=none) ![#2D0494](https://img.shields.io/badge/-%232D0494?style=flat&logo=none) ![#FA5061](https://img.shields.io/badge/-%23FA5061?style=flat&logo=none) ![#AA9F3A](https://img.shields.io/badge/-%23AA9F3A?style=flat&logo=none) ![#D2505B](https://img.shields.io/badge/-%23D2505B?style=flat&logo=none) ![#994153](https://img.shields.io/badge/-%23994153?style=flat&logo=none) ![#6ED76E](https://img.shields.io/badge/-%236ED76E?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-23 17:09:52
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(130, 53%, 70%) | rgb(137, 219, 151) | #89DB97 |151 |
| 2 | hsl(303, 69%, 38%) | rgb(163, 30, 157)  | #A31E9D |133 |
| 3 | hsl(257, 94%, 30%) |  rgb(45, 4, 148)   | #2D0494 | 55 |
| 4 | hsl(354, 95%, 65%) |  rgb(250, 80, 97)  | #FA5061 |210 |
| 5 | hsl(54, 49%, 45%)  | rgb(170, 159, 58)  | #AA9F3A |143 |
| 6 | hsl(355, 59%, 57%) |  rgb(210, 80, 91)  | #D2505B |174 |
| 7 | hsl(348, 40%, 43%) |  rgb(153, 65, 83)  | #994153 |132 |
| 8 | hsl(120, 57%, 64%) | rgb(110, 215, 110) | #6ED76E |114 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(130, 53%, 70%),rgb(137, 219, 151),151
hsl(303, 69%, 38%),rgb(163, 30, 157),133
hsl(257, 94%, 30%),rgb(45, 4, 148),55
hsl(354, 95%, 65%),rgb(250, 80, 97),210
hsl(54, 49%, 45%),rgb(170, 159, 58),143
hsl(355, 59%, 57%),rgb(210, 80, 91),174
hsl(348, 40%, 43%),rgb(153, 65, 83),132
hsl(120, 57%, 64%),rgb(110, 215, 110),114

Generated: 2026-07-23 17:09:52
```
