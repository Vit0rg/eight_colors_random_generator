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

![#17249B](https://img.shields.io/badge/-%2317249B?style=flat&logo=none) ![#B74BE1](https://img.shields.io/badge/-%23B74BE1?style=flat&logo=none) ![#6D03BD](https://img.shields.io/badge/-%236D03BD?style=flat&logo=none) ![#7089C6](https://img.shields.io/badge/-%237089C6?style=flat&logo=none) ![#DD1137](https://img.shields.io/badge/-%23DD1137?style=flat&logo=none) ![#3A918A](https://img.shields.io/badge/-%233A918A?style=flat&logo=none) ![#349253](https://img.shields.io/badge/-%23349253?style=flat&logo=none) ![#40A800](https://img.shields.io/badge/-%2340A800?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-18 08:39:06
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(234, 74%, 35%) |  rgb(23, 36, 155)  | #17249B | 25 |
| 2 | hsl(283, 72%, 59%) | rgb(183, 75, 225)  | #B74BE1 |170 |
| 3 | hsl(274, 96%, 38%) |  rgb(109, 3, 189)  | #6D03BD | 92 |
| 4 | hsl(223, 43%, 61%) | rgb(112, 137, 198) | #7089C6 |110 |
| 5 | hsl(349, 85%, 47%) |  rgb(221, 17, 55)  | #DD1137 |161 |
| 6 | hsl(175, 43%, 40%) | rgb(58, 145, 138)  | #3A918A | 73 |
| 7 | hsl(140, 47%, 39%) |  rgb(52, 146, 83)  | #349253 | 72 |
| 8 | hsl(97, 100%, 33%) |  rgb(64, 168, 0)   | #40A800 | 70 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(234, 74%, 35%),rgb(23, 36, 155),25
hsl(283, 72%, 59%),rgb(183, 75, 225),170
hsl(274, 96%, 38%),rgb(109, 3, 189),92
hsl(223, 43%, 61%),rgb(112, 137, 198),110
hsl(349, 85%, 47%),rgb(221, 17, 55),161
hsl(175, 43%, 40%),rgb(58, 145, 138),73
hsl(140, 47%, 39%),rgb(52, 146, 83),72
hsl(97, 100%, 33%),rgb(64, 168, 0),70

Generated: 2026-04-18 08:39:06
```
