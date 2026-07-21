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

![#CCD21C](https://img.shields.io/badge/-%23CCD21C?style=flat&logo=none) ![#BE3143](https://img.shields.io/badge/-%23BE3143?style=flat&logo=none) ![#B94F97](https://img.shields.io/badge/-%23B94F97?style=flat&logo=none) ![#A95A22](https://img.shields.io/badge/-%23A95A22?style=flat&logo=none) ![#41E6BA](https://img.shields.io/badge/-%2341E6BA?style=flat&logo=none) ![#C45897](https://img.shields.io/badge/-%23C45897?style=flat&logo=none) ![#5FA5FB](https://img.shields.io/badge/-%235FA5FB?style=flat&logo=none) ![#4076CD](https://img.shields.io/badge/-%234076CD?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-21 01:48:35
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(62, 76%, 47%)  | rgb(204, 210, 28)  | #CCD21C |185 |
| 2 | hsl(352, 59%, 47%) |  rgb(190, 49, 67)  | #BE3143 |167 |
| 3 | hsl(319, 43%, 52%) | rgb(185, 79, 151)  | #B94F97 |175 |
| 4 | hsl(25, 66%, 40%)  |  rgb(169, 90, 34)  | #A95A22 |137 |
| 5 | hsl(164, 77%, 58%) | rgb(65, 230, 186)  | #41E6BA | 80 |
| 6 | hsl(325, 48%, 56%) | rgb(196, 88, 151)  | #C45897 |175 |
| 7 | hsl(213, 96%, 68%) | rgb(95, 165, 251)  | #5FA5FB |111 |
| 8 | hsl(217, 59%, 53%) | rgb(64, 118, 205)  | #4076CD | 68 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(62, 76%, 47%),rgb(204, 210, 28),185
hsl(352, 59%, 47%),rgb(190, 49, 67),167
hsl(319, 43%, 52%),rgb(185, 79, 151),175
hsl(25, 66%, 40%),rgb(169, 90, 34),137
hsl(164, 77%, 58%),rgb(65, 230, 186),80
hsl(325, 48%, 56%),rgb(196, 88, 151),175
hsl(213, 96%, 68%),rgb(95, 165, 251),111
hsl(217, 59%, 53%),rgb(64, 118, 205),68

Generated: 2026-07-21 01:48:35
```
