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

![#66FFF4](https://img.shields.io/badge/-%2366FFF4?style=flat&logo=none) ![#74EBC3](https://img.shields.io/badge/-%2374EBC3?style=flat&logo=none) ![#61A1CB](https://img.shields.io/badge/-%2361A1CB?style=flat&logo=none) ![#A40603](https://img.shields.io/badge/-%23A40603?style=flat&logo=none) ![#18992E](https://img.shields.io/badge/-%2318992E?style=flat&logo=none) ![#802D36](https://img.shields.io/badge/-%23802D36?style=flat&logo=none) ![#502196](https://img.shields.io/badge/-%23502196?style=flat&logo=none) ![#BE56C2](https://img.shields.io/badge/-%23BE56C2?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-29 02:14:37
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 |hsl(176, 100%, 70%) | rgb(102, 255, 244) | #66FFF4 |123 |
| 2 | hsl(160, 75%, 69%) | rgb(116, 235, 195) | #74EBC3 |122 |
| 3 | hsl(204, 51%, 59%) | rgb(97, 161, 203)  | #61A1CB |110 |
| 4 |  hsl(1, 96%, 33%)  |   rgb(164, 6, 3)   | #A40603 |124 |
| 5 | hsl(130, 72%, 35%) |  rgb(24, 153, 46)  | #18992E | 35 |
| 6 | hsl(353, 48%, 34%) |  rgb(128, 45, 54)  | #802D36 |131 |
| 7 | hsl(264, 64%, 36%) |  rgb(80, 33, 150)  | #502196 | 97 |
| 8 | hsl(298, 47%, 55%) | rgb(190, 86, 194)  | #BE56C2 |176 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(176, 100%, 70%),rgb(102, 255, 244),123
hsl(160, 75%, 69%),rgb(116, 235, 195),122
hsl(204, 51%, 59%),rgb(97, 161, 203),110
hsl(1, 96%, 33%),rgb(164, 6, 3),124
hsl(130, 72%, 35%),rgb(24, 153, 46),35
hsl(353, 48%, 34%),rgb(128, 45, 54),131
hsl(264, 64%, 36%),rgb(80, 33, 150),97
hsl(298, 47%, 55%),rgb(190, 86, 194),176

Generated: 2026-05-29 02:14:37
```
