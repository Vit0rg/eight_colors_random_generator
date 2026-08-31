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

![#CD43E9](https://img.shields.io/badge/-%23CD43E9?style=flat&logo=none) ![#7030DD](https://img.shields.io/badge/-%237030DD?style=flat&logo=none) ![#A54088](https://img.shields.io/badge/-%23A54088?style=flat&logo=none) ![#06459C](https://img.shields.io/badge/-%2306459C?style=flat&logo=none) ![#762C51](https://img.shields.io/badge/-%23762C51?style=flat&logo=none) ![#920632](https://img.shields.io/badge/-%23920632?style=flat&logo=none) ![#8140F1](https://img.shields.io/badge/-%238140F1?style=flat&logo=none) ![#F6EC69](https://img.shields.io/badge/-%23F6EC69?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-31 15:40:54
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(290, 79%, 59%) | rgb(205, 67, 233)  | #CD43E9 |171 |
| 2 | hsl(262, 72%, 53%) | rgb(112, 48, 221)  | #7030DD | 98 |
| 3 | hsl(317, 44%, 45%) | rgb(165, 64, 136)  | #A54088 |133 |
| 4 | hsl(215, 92%, 32%) |  rgb(6, 69, 156)   | #06459C | 25 |
| 5 | hsl(330, 45%, 32%) |  rgb(118, 44, 81)  | #762C51 | 96 |
| 6 | hsl(341, 92%, 30%) |  rgb(146, 6, 50)   | #920632 |125 |
| 7 | hsl(262, 87%, 60%) | rgb(129, 64, 241)  | #8140F1 |135 |
| 8 | hsl(56, 89%, 69%)  | rgb(246, 236, 105) | #F6EC69 |228 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(290, 79%, 59%),rgb(205, 67, 233),171
hsl(262, 72%, 53%),rgb(112, 48, 221),98
hsl(317, 44%, 45%),rgb(165, 64, 136),133
hsl(215, 92%, 32%),rgb(6, 69, 156),25
hsl(330, 45%, 32%),rgb(118, 44, 81),96
hsl(341, 92%, 30%),rgb(146, 6, 50),125
hsl(262, 87%, 60%),rgb(129, 64, 241),135
hsl(56, 89%, 69%),rgb(246, 236, 105),228

Generated: 2026-08-31 15:40:54
```
