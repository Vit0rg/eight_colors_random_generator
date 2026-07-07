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

![#B37D3B](https://img.shields.io/badge/-%23B37D3B?style=flat&logo=none) ![#A045AF](https://img.shields.io/badge/-%23A045AF?style=flat&logo=none) ![#265072](https://img.shields.io/badge/-%23265072?style=flat&logo=none) ![#C961D5](https://img.shields.io/badge/-%23C961D5?style=flat&logo=none) ![#DB9846](https://img.shields.io/badge/-%23DB9846?style=flat&logo=none) ![#F8B706](https://img.shields.io/badge/-%23F8B706?style=flat&logo=none) ![#953736](https://img.shields.io/badge/-%23953736?style=flat&logo=none) ![#8FEB56](https://img.shields.io/badge/-%238FEB56?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-07 10:46:05
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(33, 50%, 47%)  | rgb(179, 125, 59)  | #B37D3B |137 |
| 2 | hsl(292, 43%, 48%) | rgb(160, 69, 175)  | #A045AF |133 |
| 3 | hsl(207, 50%, 30%) |  rgb(38, 80, 114)  | #265072 | 66 |
| 4 | hsl(294, 58%, 61%) | rgb(201, 97, 213)  | #C961D5 |176 |
| 5 | hsl(33, 68%, 57%)  | rgb(219, 152, 70)  | #DB9846 |179 |
| 6 | hsl(44, 95%, 50%)  |  rgb(248, 183, 6)  | #F8B706 |220 |
| 7 |  hsl(1, 47%, 40%)  |  rgb(149, 55, 54)  | #953736 |131 |
| 8 | hsl(97, 79%, 63%)  | rgb(143, 235, 86)  | #8FEB56 |156 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(33, 50%, 47%),rgb(179, 125, 59),137
hsl(292, 43%, 48%),rgb(160, 69, 175),133
hsl(207, 50%, 30%),rgb(38, 80, 114),66
hsl(294, 58%, 61%),rgb(201, 97, 213),176
hsl(33, 68%, 57%),rgb(219, 152, 70),179
hsl(44, 95%, 50%),rgb(248, 183, 6),220
hsl(1, 47%, 40%),rgb(149, 55, 54),131
hsl(97, 79%, 63%),rgb(143, 235, 86),156

Generated: 2026-07-07 10:46:05
```
