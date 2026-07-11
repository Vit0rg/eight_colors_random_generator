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

![#EEB243](https://img.shields.io/badge/-%23EEB243?style=flat&logo=none) ![#5FBC4C](https://img.shields.io/badge/-%235FBC4C?style=flat&logo=none) ![#27FF23](https://img.shields.io/badge/-%2327FF23?style=flat&logo=none) ![#3E8329](https://img.shields.io/badge/-%233E8329?style=flat&logo=none) ![#2D3A84](https://img.shields.io/badge/-%232D3A84?style=flat&logo=none) ![#9B1C60](https://img.shields.io/badge/-%239B1C60?style=flat&logo=none) ![#DF61C2](https://img.shields.io/badge/-%23DF61C2?style=flat&logo=none) ![#B56449](https://img.shields.io/badge/-%23B56449?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-11 01:48:08
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(39, 84%, 60%)  | rgb(238, 178, 67)  | #EEB243 |215 |
| 2 | hsl(110, 46%, 52%) |  rgb(95, 188, 76)  | #5FBC4C |113 |
| 3 |hsl(119, 100%, 57%) |  rgb(39, 255, 35)  | #27FF23 | 83 |
| 4 | hsl(106, 52%, 34%) |  rgb(62, 131, 41)  | #3E8329 | 71 |
| 5 | hsl(231, 49%, 35%) |  rgb(45, 58, 132)  | #2D3A84 | 61 |
| 6 | hsl(328, 69%, 36%) |  rgb(155, 28, 96)  | #9B1C60 |132 |
| 7 | hsl(314, 67%, 63%) | rgb(223, 97, 194)  | #DF61C2 |176 |
| 8 | hsl(15, 42%, 50%)  | rgb(181, 100, 73)  | #B56449 |173 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(39, 84%, 60%),rgb(238, 178, 67),215
hsl(110, 46%, 52%),rgb(95, 188, 76),113
hsl(119, 100%, 57%),rgb(39, 255, 35),83
hsl(106, 52%, 34%),rgb(62, 131, 41),71
hsl(231, 49%, 35%),rgb(45, 58, 132),61
hsl(328, 69%, 36%),rgb(155, 28, 96),132
hsl(314, 67%, 63%),rgb(223, 97, 194),176
hsl(15, 42%, 50%),rgb(181, 100, 73),173

Generated: 2026-07-11 01:48:08
```
