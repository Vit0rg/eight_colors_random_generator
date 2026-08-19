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

![#6696C0](https://img.shields.io/badge/-%236696C0?style=flat&logo=none) ![#169512](https://img.shields.io/badge/-%23169512?style=flat&logo=none) ![#B33798](https://img.shields.io/badge/-%23B33798?style=flat&logo=none) ![#A88AD5](https://img.shields.io/badge/-%23A88AD5?style=flat&logo=none) ![#E4292C](https://img.shields.io/badge/-%23E4292C?style=flat&logo=none) ![#28BDEB](https://img.shields.io/badge/-%2328BDEB?style=flat&logo=none) ![#C82288](https://img.shields.io/badge/-%23C82288?style=flat&logo=none) ![#67C5A6](https://img.shields.io/badge/-%2367C5A6?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-19 08:24:43
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(208, 42%, 58%) | rgb(102, 150, 192) | #6696C0 |110 |
| 2 | hsl(118, 78%, 33%) |  rgb(22, 149, 18)  | #169512 | 34 |
| 3 | hsl(313, 53%, 46%) | rgb(179, 55, 152)  | #B33798 |133 |
| 4 | hsl(264, 48%, 69%) | rgb(168, 138, 213) | #A88AD5 |146 |
| 5 | hsl(359, 78%, 53%) |  rgb(228, 41, 44)  | #E4292C |167 |
| 6 | hsl(194, 83%, 54%) | rgb(40, 189, 235)  | #28BDEB | 81 |
| 7 | hsl(323, 71%, 46%) | rgb(200, 34, 136)  | #C82288 |169 |
| 8 | hsl(160, 45%, 59%) | rgb(103, 197, 166) | #67C5A6 |115 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(208, 42%, 58%),rgb(102, 150, 192),110
hsl(118, 78%, 33%),rgb(22, 149, 18),34
hsl(313, 53%, 46%),rgb(179, 55, 152),133
hsl(264, 48%, 69%),rgb(168, 138, 213),146
hsl(359, 78%, 53%),rgb(228, 41, 44),167
hsl(194, 83%, 54%),rgb(40, 189, 235),81
hsl(323, 71%, 46%),rgb(200, 34, 136),169
hsl(160, 45%, 59%),rgb(103, 197, 166),115

Generated: 2026-08-19 08:24:43
```
