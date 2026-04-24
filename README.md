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

![#057993](https://img.shields.io/badge/-%23057993?style=flat&logo=none) ![#7132E5](https://img.shields.io/badge/-%237132E5?style=flat&logo=none) ![#DB661D](https://img.shields.io/badge/-%23DB661D?style=flat&logo=none) ![#3EDA62](https://img.shields.io/badge/-%233EDA62?style=flat&logo=none) ![#F9BE29](https://img.shields.io/badge/-%23F9BE29?style=flat&logo=none) ![#BC2957](https://img.shields.io/badge/-%23BC2957?style=flat&logo=none) ![#B7C00B](https://img.shields.io/badge/-%23B7C00B?style=flat&logo=none) ![#38C198](https://img.shields.io/badge/-%2338C198?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-24 16:45:06
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(191, 93%, 30%) |  rgb(5, 121, 147)  | #057993 | 31 |
| 2 | hsl(261, 78%, 55%) | rgb(113, 50, 229)  | #7132E5 | 98 |
| 3 | hsl(23, 76%, 49%)  | rgb(219, 102, 29)  | #DB661D |173 |
| 4 | hsl(134, 68%, 55%) |  rgb(62, 218, 98)  | #3EDA62 | 78 |
| 5 | hsl(43, 95%, 57%)  | rgb(249, 190, 41)  | #F9BE29 |221 |
| 6 | hsl(341, 64%, 45%) |  rgb(188, 41, 87)  | #BC2957 |168 |
| 7 | hsl(63, 89%, 40%)  | rgb(183, 192, 11)  | #B7C00B |184 |
| 8 | hsl(162, 55%, 49%) | rgb(56, 193, 152)  | #38C198 | 79 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(191, 93%, 30%),rgb(5, 121, 147),31
hsl(261, 78%, 55%),rgb(113, 50, 229),98
hsl(23, 76%, 49%),rgb(219, 102, 29),173
hsl(134, 68%, 55%),rgb(62, 218, 98),78
hsl(43, 95%, 57%),rgb(249, 190, 41),221
hsl(341, 64%, 45%),rgb(188, 41, 87),168
hsl(63, 89%, 40%),rgb(183, 192, 11),184
hsl(162, 55%, 49%),rgb(56, 193, 152),79

Generated: 2026-04-24 16:45:06
```
