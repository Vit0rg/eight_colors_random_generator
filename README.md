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

![#48ADB6](https://img.shields.io/badge/-%2348ADB6?style=flat&logo=none) ![#BC734C](https://img.shields.io/badge/-%23BC734C?style=flat&logo=none) ![#7A2CCC](https://img.shields.io/badge/-%237A2CCC?style=flat&logo=none) ![#F6E855](https://img.shields.io/badge/-%23F6E855?style=flat&logo=none) ![#8A3518](https://img.shields.io/badge/-%238A3518?style=flat&logo=none) ![#5682DB](https://img.shields.io/badge/-%235682DB?style=flat&logo=none) ![#84B71F](https://img.shields.io/badge/-%2384B71F?style=flat&logo=none) ![#1E83D6](https://img.shields.io/badge/-%231E83D6?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-13 12:57:04
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(185, 43%, 50%) | rgb(72, 173, 182)  | #48ADB6 | 74 |
| 2 | hsl(21, 46%, 52%)  | rgb(188, 115, 76)  | #BC734C |173 |
| 3 | hsl(269, 64%, 49%) | rgb(122, 44, 204)  | #7A2CCC | 98 |
| 4 | hsl(55, 90%, 65%)  | rgb(246, 232, 85)  | #F6E855 |228 |
| 5 | hsl(15, 70%, 32%)  |  rgb(138, 53, 24)  | #8A3518 |130 |
| 6 | hsl(220, 65%, 60%) | rgb(86, 130, 219)  | #5682DB |110 |
| 7 | hsl(80, 71%, 42%)  | rgb(132, 183, 31)  | #84B71F |149 |
| 8 | hsl(207, 75%, 48%) | rgb(30, 131, 214)  | #1E83D6 | 74 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(185, 43%, 50%),rgb(72, 173, 182),74
hsl(21, 46%, 52%),rgb(188, 115, 76),173
hsl(269, 64%, 49%),rgb(122, 44, 204),98
hsl(55, 90%, 65%),rgb(246, 232, 85),228
hsl(15, 70%, 32%),rgb(138, 53, 24),130
hsl(220, 65%, 60%),rgb(86, 130, 219),110
hsl(80, 71%, 42%),rgb(132, 183, 31),149
hsl(207, 75%, 48%),rgb(30, 131, 214),74

Generated: 2026-09-13 12:57:04
```
