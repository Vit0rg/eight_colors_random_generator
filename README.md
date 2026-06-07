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

![#85BB48](https://img.shields.io/badge/-%2385BB48?style=flat&logo=none) ![#A83C72](https://img.shields.io/badge/-%23A83C72?style=flat&logo=none) ![#81B510](https://img.shields.io/badge/-%2381B510?style=flat&logo=none) ![#9742C1](https://img.shields.io/badge/-%239742C1?style=flat&logo=none) ![#F7407D](https://img.shields.io/badge/-%23F7407D?style=flat&logo=none) ![#52E4D5](https://img.shields.io/badge/-%2352E4D5?style=flat&logo=none) ![#EFD06B](https://img.shields.io/badge/-%23EFD06B?style=flat&logo=none) ![#A32B00](https://img.shields.io/badge/-%23A32B00?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-07 17:05:38
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(88, 46%, 51%)  | rgb(133, 187, 72)  | #85BB48 |149 |
| 2 | hsl(330, 47%, 45%) | rgb(168, 60, 114)  | #A83C72 |132 |
| 3 | hsl(79, 83%, 39%)  | rgb(129, 181, 16)  | #81B510 |148 |
| 4 | hsl(280, 51%, 51%) | rgb(151, 66, 193)  | #9742C1 |134 |
| 5 | hsl(340, 92%, 61%) | rgb(247, 64, 125)  | #F7407D |204 |
| 6 | hsl(174, 73%, 61%) | rgb(82, 228, 213)  | #52E4D5 |116 |
| 7 | hsl(46, 81%, 68%)  | rgb(239, 208, 107) | #EFD06B |222 |
| 8 | hsl(16, 100%, 32%) |  rgb(163, 43, 0)   | #A32B00 |130 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(88, 46%, 51%),rgb(133, 187, 72),149
hsl(330, 47%, 45%),rgb(168, 60, 114),132
hsl(79, 83%, 39%),rgb(129, 181, 16),148
hsl(280, 51%, 51%),rgb(151, 66, 193),134
hsl(340, 92%, 61%),rgb(247, 64, 125),204
hsl(174, 73%, 61%),rgb(82, 228, 213),116
hsl(46, 81%, 68%),rgb(239, 208, 107),222
hsl(16, 100%, 32%),rgb(163, 43, 0),130

Generated: 2026-06-07 17:05:38
```
