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

![#D58AAE](https://img.shields.io/badge/-%23D58AAE?style=flat&logo=none) ![#0C9096](https://img.shields.io/badge/-%230C9096?style=flat&logo=none) ![#267D1B](https://img.shields.io/badge/-%23267D1B?style=flat&logo=none) ![#7AA9C6](https://img.shields.io/badge/-%237AA9C6?style=flat&logo=none) ![#118C6F](https://img.shields.io/badge/-%23118C6F?style=flat&logo=none) ![#663A9B](https://img.shields.io/badge/-%23663A9B?style=flat&logo=none) ![#742E45](https://img.shields.io/badge/-%23742E45?style=flat&logo=none) ![#2E5874](https://img.shields.io/badge/-%232E5874?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-03 10:26:35
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(331, 48%, 69%) | rgb(213, 138, 174) | #D58AAE |181 |
| 2 | hsl(183, 85%, 32%) | rgb(12, 144, 150)  | #0C9096 | 37 |
| 3 | hsl(113, 64%, 30%) |  rgb(38, 125, 27)  | #267D1B | 65 |
| 4 | hsl(203, 40%, 63%) | rgb(122, 169, 198) | #7AA9C6 |110 |
| 5 | hsl(166, 78%, 31%) | rgb(17, 140, 111)  | #118C6F | 36 |
| 6 | hsl(267, 45%, 42%) | rgb(102, 58, 155)  | #663A9B | 97 |
| 7 | hsl(340, 43%, 32%) |  rgb(116, 46, 69)  | #742E45 | 95 |
| 8 | hsl(204, 43%, 32%) |  rgb(46, 88, 116)  | #2E5874 | 66 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(331, 48%, 69%),rgb(213, 138, 174),181
hsl(183, 85%, 32%),rgb(12, 144, 150),37
hsl(113, 64%, 30%),rgb(38, 125, 27),65
hsl(203, 40%, 63%),rgb(122, 169, 198),110
hsl(166, 78%, 31%),rgb(17, 140, 111),36
hsl(267, 45%, 42%),rgb(102, 58, 155),97
hsl(340, 43%, 32%),rgb(116, 46, 69),95
hsl(204, 43%, 32%),rgb(46, 88, 116),66

Generated: 2026-07-03 10:26:35
```
