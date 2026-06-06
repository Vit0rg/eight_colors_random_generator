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

![#5D2F73](https://img.shields.io/badge/-%235D2F73?style=flat&logo=none) ![#0DEC93](https://img.shields.io/badge/-%230DEC93?style=flat&logo=none) ![#F1B317](https://img.shields.io/badge/-%23F1B317?style=flat&logo=none) ![#DD7394](https://img.shields.io/badge/-%23DD7394?style=flat&logo=none) ![#5C95C1](https://img.shields.io/badge/-%235C95C1?style=flat&logo=none) ![#F62C5E](https://img.shields.io/badge/-%23F62C5E?style=flat&logo=none) ![#9740A5](https://img.shields.io/badge/-%239740A5?style=flat&logo=none) ![#570BBA](https://img.shields.io/badge/-%23570BBA?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-06 09:54:33
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(280, 42%, 32%) |  rgb(93, 47, 115)  | #5D2F73 | 96 |
| 2 | hsl(156, 89%, 49%) | rgb(13, 236, 147)  | #0DEC93 | 49 |
| 3 | hsl(43, 89%, 52%)  | rgb(241, 179, 23)  | #F1B317 |214 |
| 4 | hsl(341, 61%, 66%) | rgb(221, 115, 148) | #DD7394 |175 |
| 5 | hsl(206, 45%, 56%) | rgb(92, 149, 193)  | #5C95C1 |110 |
| 6 | hsl(345, 92%, 57%) |  rgb(246, 44, 94)  | #F62C5E |204 |
| 7 | hsl(292, 44%, 45%) | rgb(151, 64, 165)  | #9740A5 |133 |
| 8 | hsl(266, 88%, 39%) |  rgb(87, 11, 186)  | #570BBA | 92 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(280, 42%, 32%),rgb(93, 47, 115),96
hsl(156, 89%, 49%),rgb(13, 236, 147),49
hsl(43, 89%, 52%),rgb(241, 179, 23),214
hsl(341, 61%, 66%),rgb(221, 115, 148),175
hsl(206, 45%, 56%),rgb(92, 149, 193),110
hsl(345, 92%, 57%),rgb(246, 44, 94),204
hsl(292, 44%, 45%),rgb(151, 64, 165),133
hsl(266, 88%, 39%),rgb(87, 11, 186),92

Generated: 2026-06-06 09:54:33
```
