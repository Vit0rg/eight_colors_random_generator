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

![#64C33B](https://img.shields.io/badge/-%2364C33B?style=flat&logo=none) ![#D5C742](https://img.shields.io/badge/-%23D5C742?style=flat&logo=none) ![#8916A0](https://img.shields.io/badge/-%238916A0?style=flat&logo=none) ![#4D93B6](https://img.shields.io/badge/-%234D93B6?style=flat&logo=none) ![#1F89A1](https://img.shields.io/badge/-%231F89A1?style=flat&logo=none) ![#E55CF4](https://img.shields.io/badge/-%23E55CF4?style=flat&logo=none) ![#E8C077](https://img.shields.io/badge/-%23E8C077?style=flat&logo=none) ![#CD8D27](https://img.shields.io/badge/-%23CD8D27?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-01 01:56:25
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(102, 53%, 50%) | rgb(100, 195, 59)  | #64C33B |113 |
| 2 | hsl(54, 64%, 55%)  | rgb(213, 199, 66)  | #D5C742 |185 |
| 3 | hsl(290, 75%, 36%) | rgb(137, 22, 160)  | #8916A0 |127 |
| 4 | hsl(200, 42%, 51%) | rgb(77, 147, 182)  | #4D93B6 |110 |
| 5 | hsl(191, 67%, 38%) | rgb(31, 137, 161)  | #1F89A1 | 73 |
| 6 | hsl(294, 88%, 66%) | rgb(229, 92, 244)  | #E55CF4 |177 |
| 7 | hsl(39, 71%, 69%)  | rgb(232, 192, 119) | #E8C077 |222 |
| 8 | hsl(37, 68%, 48%)  | rgb(205, 141, 39)  | #CD8D27 |179 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(102, 53%, 50%),rgb(100, 195, 59),113
hsl(54, 64%, 55%),rgb(213, 199, 66),185
hsl(290, 75%, 36%),rgb(137, 22, 160),127
hsl(200, 42%, 51%),rgb(77, 147, 182),110
hsl(191, 67%, 38%),rgb(31, 137, 161),73
hsl(294, 88%, 66%),rgb(229, 92, 244),177
hsl(39, 71%, 69%),rgb(232, 192, 119),222
hsl(37, 68%, 48%),rgb(205, 141, 39),179

Generated: 2026-08-01 01:56:25
```
