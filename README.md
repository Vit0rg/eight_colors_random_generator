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

![#F66E79](https://img.shields.io/badge/-%23F66E79?style=flat&logo=none) ![#716D27](https://img.shields.io/badge/-%23716D27?style=flat&logo=none) ![#2ED91A](https://img.shields.io/badge/-%232ED91A?style=flat&logo=none) ![#284570](https://img.shields.io/badge/-%23284570?style=flat&logo=none) ![#55E155](https://img.shields.io/badge/-%2355E155?style=flat&logo=none) ![#803E37](https://img.shields.io/badge/-%23803E37?style=flat&logo=none) ![#1343C7](https://img.shields.io/badge/-%231343C7?style=flat&logo=none) ![#932E85](https://img.shields.io/badge/-%23932E85?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-05 17:48:18
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(355, 89%, 70%) | rgb(246, 110, 121) | #F66E79 |210 |
| 2 | hsl(56, 49%, 30%)  | rgb(113, 109, 39)  | #716D27 |101 |
| 3 | hsl(114, 78%, 48%) |  rgb(46, 217, 26)  | #2ED91A | 77 |
| 4 | hsl(216, 47%, 30%) |  rgb(40, 69, 112)  | #284570 | 60 |
| 5 | hsl(120, 70%, 61%) |  rgb(85, 225, 85)  | #55E155 |114 |
| 6 |  hsl(6, 40%, 36%)  |  rgb(128, 62, 55)  | #803E37 |131 |
| 7 | hsl(224, 82%, 43%) |  rgb(19, 67, 199)  | #1343C7 | 26 |
| 8 | hsl(308, 52%, 38%) | rgb(147, 46, 133)  | #932E85 |133 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(355, 89%, 70%),rgb(246, 110, 121),210
hsl(56, 49%, 30%),rgb(113, 109, 39),101
hsl(114, 78%, 48%),rgb(46, 217, 26),77
hsl(216, 47%, 30%),rgb(40, 69, 112),60
hsl(120, 70%, 61%),rgb(85, 225, 85),114
hsl(6, 40%, 36%),rgb(128, 62, 55),131
hsl(224, 82%, 43%),rgb(19, 67, 199),26
hsl(308, 52%, 38%),rgb(147, 46, 133),133

Generated: 2026-09-05 17:48:18
```
