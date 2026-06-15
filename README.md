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

![#35D4A1](https://img.shields.io/badge/-%2335D4A1?style=flat&logo=none) ![#59D39C](https://img.shields.io/badge/-%2359D39C?style=flat&logo=none) ![#A11EAD](https://img.shields.io/badge/-%23A11EAD?style=flat&logo=none) ![#F0BB50](https://img.shields.io/badge/-%23F0BB50?style=flat&logo=none) ![#2076AB](https://img.shields.io/badge/-%232076AB?style=flat&logo=none) ![#C9DC36](https://img.shields.io/badge/-%23C9DC36?style=flat&logo=none) ![#0AD803](https://img.shields.io/badge/-%230AD803?style=flat&logo=none) ![#246284](https://img.shields.io/badge/-%23246284?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-15 02:48:36
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(161, 65%, 52%) | rgb(53, 212, 161)  | #35D4A1 | 79 |
| 2 | hsl(153, 58%, 59%) | rgb(89, 211, 156)  | #59D39C |115 |
| 3 | hsl(295, 70%, 40%) | rgb(161, 30, 173)  | #A11EAD |133 |
| 4 | hsl(40, 85%, 63%)  | rgb(240, 187, 80)  | #F0BB50 |222 |
| 5 | hsl(203, 68%, 40%) | rgb(32, 118, 171)  | #2076AB | 67 |
| 6 | hsl(67, 71%, 54%)  | rgb(201, 220, 54)  | #C9DC36 |185 |
| 7 | hsl(118, 97%, 43%) |  rgb(10, 216, 3)   | #0AD803 | 40 |
| 8 | hsl(201, 57%, 33%) |  rgb(36, 98, 132)  | #246284 | 67 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(161, 65%, 52%),rgb(53, 212, 161),79
hsl(153, 58%, 59%),rgb(89, 211, 156),115
hsl(295, 70%, 40%),rgb(161, 30, 173),133
hsl(40, 85%, 63%),rgb(240, 187, 80),222
hsl(203, 68%, 40%),rgb(32, 118, 171),67
hsl(67, 71%, 54%),rgb(201, 220, 54),185
hsl(118, 97%, 43%),rgb(10, 216, 3),40
hsl(201, 57%, 33%),rgb(36, 98, 132),67

Generated: 2026-06-15 02:48:36
```
