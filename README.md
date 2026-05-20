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

![#E75FE0](https://img.shields.io/badge/-%23E75FE0?style=flat&logo=none) ![#C139E4](https://img.shields.io/badge/-%23C139E4?style=flat&logo=none) ![#AC36EC](https://img.shields.io/badge/-%23AC36EC?style=flat&logo=none) ![#34924D](https://img.shields.io/badge/-%2334924D?style=flat&logo=none) ![#FA55EC](https://img.shields.io/badge/-%23FA55EC?style=flat&logo=none) ![#998937](https://img.shields.io/badge/-%23998937?style=flat&logo=none) ![#F2D545](https://img.shields.io/badge/-%23F2D545?style=flat&logo=none) ![#0DA93A](https://img.shields.io/badge/-%230DA93A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-20 02:29:19
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(303, 74%, 64%) | rgb(231, 95, 224)  | #E75FE0 |212 |
| 2 | hsl(288, 76%, 56%) | rgb(193, 57, 228)  | #C139E4 |170 |
| 3 | hsl(279, 83%, 57%) | rgb(172, 54, 236)  | #AC36EC |135 |
| 4 | hsl(136, 47%, 39%) |  rgb(52, 146, 77)  | #34924D | 72 |
| 5 | hsl(305, 95%, 66%) | rgb(250, 85, 236)  | #FA55EC |213 |
| 6 | hsl(50, 47%, 41%)  | rgb(153, 137, 55)  | #998937 |143 |
| 7 | hsl(50, 87%, 61%)  | rgb(242, 213, 69)  | #F2D545 |221 |
| 8 | hsl(137, 85%, 36%) |  rgb(13, 169, 58)  | #0DA93A | 35 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(303, 74%, 64%),rgb(231, 95, 224),212
hsl(288, 76%, 56%),rgb(193, 57, 228),170
hsl(279, 83%, 57%),rgb(172, 54, 236),135
hsl(136, 47%, 39%),rgb(52, 146, 77),72
hsl(305, 95%, 66%),rgb(250, 85, 236),213
hsl(50, 47%, 41%),rgb(153, 137, 55),143
hsl(50, 87%, 61%),rgb(242, 213, 69),221
hsl(137, 85%, 36%),rgb(13, 169, 58),35

Generated: 2026-05-20 02:29:19
```
