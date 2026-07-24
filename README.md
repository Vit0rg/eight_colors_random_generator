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

![#CD6EA5](https://img.shields.io/badge/-%23CD6EA5?style=flat&logo=none) ![#622398](https://img.shields.io/badge/-%23622398?style=flat&logo=none) ![#AF3126](https://img.shields.io/badge/-%23AF3126?style=flat&logo=none) ![#C753FD](https://img.shields.io/badge/-%23C753FD?style=flat&logo=none) ![#7E1A29](https://img.shields.io/badge/-%237E1A29?style=flat&logo=none) ![#291BBA](https://img.shields.io/badge/-%23291BBA?style=flat&logo=none) ![#1C00BC](https://img.shields.io/badge/-%231C00BC?style=flat&logo=none) ![#14AD96](https://img.shields.io/badge/-%2314AD96?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-24 10:07:44
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(325, 49%, 62%) | rgb(205, 110, 165) | #CD6EA5 |175 |
| 2 | hsl(272, 62%, 37%) |  rgb(98, 35, 152)  | #622398 | 97 |
| 3 |  hsl(5, 64%, 42%)  |  rgb(175, 49, 38)  | #AF3126 |131 |
| 4 | hsl(281, 98%, 66%) | rgb(199, 83, 253)  | #C753FD |177 |
| 5 | hsl(351, 65%, 30%) |  rgb(126, 26, 41)  | #7E1A29 | 95 |
| 6 | hsl(245, 74%, 42%) |  rgb(41, 27, 186)  | #291BBA | 62 |
| 7 |hsl(249, 100%, 37%) |  rgb(28, 0, 188)   | #1C00BC | 56 |
| 8 | hsl(171, 79%, 38%) | rgb(20, 173, 150)  | #14AD96 | 37 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(325, 49%, 62%),rgb(205, 110, 165),175
hsl(272, 62%, 37%),rgb(98, 35, 152),97
hsl(5, 64%, 42%),rgb(175, 49, 38),131
hsl(281, 98%, 66%),rgb(199, 83, 253),177
hsl(351, 65%, 30%),rgb(126, 26, 41),95
hsl(245, 74%, 42%),rgb(41, 27, 186),62
hsl(249, 100%, 37%),rgb(28, 0, 188),56
hsl(171, 79%, 38%),rgb(20, 173, 150),37

Generated: 2026-07-24 10:07:44
```
