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

![#00C090](https://img.shields.io/badge/-%2300C090?style=flat&logo=none) ![#07960E](https://img.shields.io/badge/-%2307960E?style=flat&logo=none) ![#763AAA](https://img.shields.io/badge/-%23763AAA?style=flat&logo=none) ![#AD42EF](https://img.shields.io/badge/-%23AD42EF?style=flat&logo=none) ![#5BF834](https://img.shields.io/badge/-%235BF834?style=flat&logo=none) ![#3BCAF1](https://img.shields.io/badge/-%233BCAF1?style=flat&logo=none) ![#FF5B74](https://img.shields.io/badge/-%23FF5B74?style=flat&logo=none) ![#F61CEF](https://img.shields.io/badge/-%23F61CEF?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-13 10:49:59
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(165, 99%, 38%) |  rgb(0, 192, 144)  | #00C090 | 43 |
| 2 | hsl(123, 91%, 31%) |  rgb(7, 150, 14)   | #07960E | 34 |
| 3 | hsl(272, 49%, 45%) | rgb(118, 58, 170)  | #763AAA | 97 |
| 4 | hsl(277, 85%, 60%) | rgb(173, 66, 239)  | #AD42EF |135 |
| 5 | hsl(108, 94%, 59%) |  rgb(91, 248, 52)  | #5BF834 |119 |
| 6 | hsl(193, 87%, 59%) | rgb(59, 202, 241)  | #3BCAF1 | 81 |
| 7 |hsl(351, 100%, 68%) | rgb(255, 91, 116)  | #FF5B74 |210 |
| 8 | hsl(302, 93%, 54%) | rgb(246, 28, 239)  | #F61CEF |207 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(165, 99%, 38%),rgb(0, 192, 144),43
hsl(123, 91%, 31%),rgb(7, 150, 14),34
hsl(272, 49%, 45%),rgb(118, 58, 170),97
hsl(277, 85%, 60%),rgb(173, 66, 239),135
hsl(108, 94%, 59%),rgb(91, 248, 52),119
hsl(193, 87%, 59%),rgb(59, 202, 241),81
hsl(351, 100%, 68%),rgb(255, 91, 116),210
hsl(302, 93%, 54%),rgb(246, 28, 239),207

Generated: 2026-07-13 10:49:59
```
