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

![#214A8B](https://img.shields.io/badge/-%23214A8B?style=flat&logo=none) ![#7A9EDA](https://img.shields.io/badge/-%237A9EDA?style=flat&logo=none) ![#DB4CCD](https://img.shields.io/badge/-%23DB4CCD?style=flat&logo=none) ![#5AF0EB](https://img.shields.io/badge/-%235AF0EB?style=flat&logo=none) ![#51C294](https://img.shields.io/badge/-%2351C294?style=flat&logo=none) ![#795ADC](https://img.shields.io/badge/-%23795ADC?style=flat&logo=none) ![#C20E3E](https://img.shields.io/badge/-%23C20E3E?style=flat&logo=none) ![#531E99](https://img.shields.io/badge/-%23531E99?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-14 09:09:35
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(217, 61%, 34%) |  rgb(33, 74, 139)  | #214A8B | 61 |
| 2 | hsl(218, 57%, 67%) | rgb(122, 158, 218) | #7A9EDA |110 |
| 3 | hsl(306, 67%, 58%) | rgb(219, 76, 205)  | #DB4CCD |170 |
| 4 | hsl(178, 84%, 65%) | rgb(90, 240, 235)  | #5AF0EB |123 |
| 5 | hsl(156, 48%, 54%) | rgb(81, 194, 148)  | #51C294 |115 |
| 6 | hsl(254, 65%, 61%) | rgb(121, 90, 220)  | #795ADC |104 |
| 7 | hsl(344, 86%, 41%) |  rgb(194, 14, 62)  | #C20E3E |161 |
| 8 | hsl(266, 67%, 36%) |  rgb(83, 30, 153)  | #531E99 | 97 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(217, 61%, 34%),rgb(33, 74, 139),61
hsl(218, 57%, 67%),rgb(122, 158, 218),110
hsl(306, 67%, 58%),rgb(219, 76, 205),170
hsl(178, 84%, 65%),rgb(90, 240, 235),123
hsl(156, 48%, 54%),rgb(81, 194, 148),115
hsl(254, 65%, 61%),rgb(121, 90, 220),104
hsl(344, 86%, 41%),rgb(194, 14, 62),161
hsl(266, 67%, 36%),rgb(83, 30, 153),97

Generated: 2026-04-14 09:09:35
```
