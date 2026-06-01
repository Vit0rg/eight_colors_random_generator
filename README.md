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

![#145AFF](https://img.shields.io/badge/-%23145AFF?style=flat&logo=none) ![#5BB501](https://img.shields.io/badge/-%235BB501?style=flat&logo=none) ![#3D95C1](https://img.shields.io/badge/-%233D95C1?style=flat&logo=none) ![#7FDB42](https://img.shields.io/badge/-%237FDB42?style=flat&logo=none) ![#22C0EB](https://img.shields.io/badge/-%2322C0EB?style=flat&logo=none) ![#39B823](https://img.shields.io/badge/-%2339B823?style=flat&logo=none) ![#45A3AA](https://img.shields.io/badge/-%2345A3AA?style=flat&logo=none) ![#60BC68](https://img.shields.io/badge/-%2360BC68?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-01 13:27:46
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 |hsl(222, 100%, 54%) |  rgb(20, 90, 255)  | #145AFF | 33 |
| 2 | hsl(90, 98%, 36%)  |  rgb(91, 181, 1)   | #5BB501 |112 |
| 3 | hsl(200, 52%, 50%) | rgb(61, 149, 193)  | #3D95C1 | 74 |
| 4 | hsl(96, 68%, 56%)  | rgb(127, 219, 66)  | #7FDB42 |113 |
| 5 | hsl(193, 84%, 53%) | rgb(34, 192, 235)  | #22C0EB | 81 |
| 6 | hsl(111, 68%, 43%) |  rgb(57, 184, 35)  | #39B823 | 77 |
| 7 | hsl(184, 42%, 47%) | rgb(69, 163, 170)  | #45A3AA | 73 |
| 8 | hsl(125, 41%, 56%) | rgb(96, 188, 104)  | #60BC68 |114 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(222, 100%, 54%),rgb(20, 90, 255),33
hsl(90, 98%, 36%),rgb(91, 181, 1),112
hsl(200, 52%, 50%),rgb(61, 149, 193),74
hsl(96, 68%, 56%),rgb(127, 219, 66),113
hsl(193, 84%, 53%),rgb(34, 192, 235),81
hsl(111, 68%, 43%),rgb(57, 184, 35),77
hsl(184, 42%, 47%),rgb(69, 163, 170),73
hsl(125, 41%, 56%),rgb(96, 188, 104),114

Generated: 2026-06-01 13:27:46
```
