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

![#7FC157](https://img.shields.io/badge/-%237FC157?style=flat&logo=none) ![#9E652D](https://img.shields.io/badge/-%239E652D?style=flat&logo=none) ![#F3628D](https://img.shields.io/badge/-%23F3628D?style=flat&logo=none) ![#862512](https://img.shields.io/badge/-%23862512?style=flat&logo=none) ![#0FDB71](https://img.shields.io/badge/-%230FDB71?style=flat&logo=none) ![#36A93E](https://img.shields.io/badge/-%2336A93E?style=flat&logo=none) ![#BF5B25](https://img.shields.io/badge/-%23BF5B25?style=flat&logo=none) ![#5A802D](https://img.shields.io/badge/-%235A802D?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-29 00:14:56
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(97, 46%, 55%)  | rgb(127, 193, 87)  | #7FC157 |114 |
| 2 | hsl(30, 55%, 40%)  | rgb(158, 101, 45)  | #9E652D |137 |
| 3 | hsl(342, 86%, 67%) | rgb(243, 98, 141)  | #F3628D |211 |
| 4 | hsl(10, 76%, 30%)  |  rgb(134, 37, 18)  | #862512 |130 |
| 5 | hsl(149, 87%, 46%) | rgb(15, 219, 113)  | #0FDB71 | 42 |
| 6 | hsl(124, 51%, 44%) |  rgb(54, 169, 62)  | #36A93E | 71 |
| 7 | hsl(21, 67%, 45%)  |  rgb(191, 91, 37)  | #BF5B25 |173 |
| 8 | hsl(87, 48%, 34%)  |  rgb(90, 128, 45)  | #5A802D |107 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(97, 46%, 55%),rgb(127, 193, 87),114
hsl(30, 55%, 40%),rgb(158, 101, 45),137
hsl(342, 86%, 67%),rgb(243, 98, 141),211
hsl(10, 76%, 30%),rgb(134, 37, 18),130
hsl(149, 87%, 46%),rgb(15, 219, 113),42
hsl(124, 51%, 44%),rgb(54, 169, 62),71
hsl(21, 67%, 45%),rgb(191, 91, 37),173
hsl(87, 48%, 34%),rgb(90, 128, 45),107

Generated: 2026-08-29 00:14:56
```
