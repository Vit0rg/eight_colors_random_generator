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

![#749B07](https://img.shields.io/badge/-%23749B07?style=flat&logo=none) ![#3AAF5B](https://img.shields.io/badge/-%233AAF5B?style=flat&logo=none) ![#8EB100](https://img.shields.io/badge/-%238EB100?style=flat&logo=none) ![#06BF10](https://img.shields.io/badge/-%2306BF10?style=flat&logo=none) ![#094394](https://img.shields.io/badge/-%23094394?style=flat&logo=none) ![#938305](https://img.shields.io/badge/-%23938305?style=flat&logo=none) ![#CB04E5](https://img.shields.io/badge/-%23CB04E5?style=flat&logo=none) ![#F33ECC](https://img.shields.io/badge/-%23F33ECC?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-12 16:47:52
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(76, 91%, 32%)  |  rgb(116, 155, 7)  | #749B07 |106 |
| 2 | hsl(137, 50%, 46%) |  rgb(58, 175, 91)  | #3AAF5B | 72 |
| 3 | hsl(72, 99%, 35%)  |  rgb(142, 177, 0)  | #8EB100 |142 |
| 4 | hsl(123, 93%, 39%) |  rgb(6, 191, 16)   | #06BF10 | 40 |
| 5 | hsl(215, 88%, 31%) |  rgb(9, 67, 148)   | #094394 | 25 |
| 6 | hsl(53, 93%, 30%)  |  rgb(147, 131, 5)  | #938305 |142 |
| 7 | hsl(293, 96%, 46%) |  rgb(203, 4, 229)  | #CB04E5 |164 |
| 8 | hsl(313, 89%, 60%) | rgb(243, 62, 204)  | #F33ECC |206 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(76, 91%, 32%),rgb(116, 155, 7),106
hsl(137, 50%, 46%),rgb(58, 175, 91),72
hsl(72, 99%, 35%),rgb(142, 177, 0),142
hsl(123, 93%, 39%),rgb(6, 191, 16),40
hsl(215, 88%, 31%),rgb(9, 67, 148),25
hsl(53, 93%, 30%),rgb(147, 131, 5),142
hsl(293, 96%, 46%),rgb(203, 4, 229),164
hsl(313, 89%, 60%),rgb(243, 62, 204),206

Generated: 2026-07-12 16:47:52
```
