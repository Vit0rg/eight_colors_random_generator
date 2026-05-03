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

![#51A5D6](https://img.shields.io/badge/-%2351A5D6?style=flat&logo=none) ![#2E9375](https://img.shields.io/badge/-%232E9375?style=flat&logo=none) ![#96B625](https://img.shields.io/badge/-%2396B625?style=flat&logo=none) ![#B36CC0](https://img.shields.io/badge/-%23B36CC0?style=flat&logo=none) ![#9D32F5](https://img.shields.io/badge/-%239D32F5?style=flat&logo=none) ![#15BBA5](https://img.shields.io/badge/-%2315BBA5?style=flat&logo=none) ![#7ED7CE](https://img.shields.io/badge/-%237ED7CE?style=flat&logo=none) ![#6533B6](https://img.shields.io/badge/-%236533B6?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-03 01:59:14
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(202, 62%, 58%) | rgb(81, 165, 214)  | #51A5D6 |110 |
| 2 | hsl(162, 52%, 38%) | rgb(46, 147, 117)  | #2E9375 | 72 |
| 3 | hsl(73, 66%, 43%)  | rgb(150, 182, 37)  | #96B625 |149 |
| 4 | hsl(291, 40%, 59%) | rgb(179, 108, 192) | #B36CC0 |140 |
| 5 | hsl(273, 91%, 58%) | rgb(157, 50, 245)  | #9D32F5 |135 |
| 6 | hsl(172, 79%, 41%) | rgb(21, 187, 165)  | #15BBA5 | 43 |
| 7 | hsl(174, 53%, 67%) | rgb(126, 215, 206) | #7ED7CE |116 |
| 8 | hsl(263, 56%, 46%) | rgb(101, 51, 182)  | #6533B6 | 98 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(202, 62%, 58%),rgb(81, 165, 214),110
hsl(162, 52%, 38%),rgb(46, 147, 117),72
hsl(73, 66%, 43%),rgb(150, 182, 37),149
hsl(291, 40%, 59%),rgb(179, 108, 192),140
hsl(273, 91%, 58%),rgb(157, 50, 245),135
hsl(172, 79%, 41%),rgb(21, 187, 165),43
hsl(174, 53%, 67%),rgb(126, 215, 206),116
hsl(263, 56%, 46%),rgb(101, 51, 182),98

Generated: 2026-05-03 01:59:14
```
