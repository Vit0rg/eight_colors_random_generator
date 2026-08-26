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

![#359686](https://img.shields.io/badge/-%23359686?style=flat&logo=none) ![#89119C](https://img.shields.io/badge/-%2389119C?style=flat&logo=none) ![#851E4F](https://img.shields.io/badge/-%23851E4F?style=flat&logo=none) ![#3A7ABF](https://img.shields.io/badge/-%233A7ABF?style=flat&logo=none) ![#5E8A2C](https://img.shields.io/badge/-%235E8A2C?style=flat&logo=none) ![#4FE2E0](https://img.shields.io/badge/-%234FE2E0?style=flat&logo=none) ![#A44177](https://img.shields.io/badge/-%23A44177?style=flat&logo=none) ![#85BEDA](https://img.shields.io/badge/-%2385BEDA?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-26 00:43:01
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(170, 48%, 40%) | rgb(53, 150, 134)  | #359686 | 73 |
| 2 | hsl(292, 80%, 34%) | rgb(137, 17, 156)  | #89119C |127 |
| 3 | hsl(331, 63%, 32%) |  rgb(133, 30, 79)  | #851E4F |132 |
| 4 | hsl(211, 53%, 49%) | rgb(58, 122, 191)  | #3A7ABF | 68 |
| 5 | hsl(88, 51%, 36%)  |  rgb(94, 138, 44)  | #5E8A2C |107 |
| 6 | hsl(179, 72%, 60%) | rgb(79, 226, 224)  | #4FE2E0 |116 |
| 7 | hsl(327, 43%, 45%) | rgb(164, 65, 119)  | #A44177 |132 |
| 8 | hsl(200, 54%, 69%) | rgb(133, 190, 218) | #85BEDA |152 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(170, 48%, 40%),rgb(53, 150, 134),73
hsl(292, 80%, 34%),rgb(137, 17, 156),127
hsl(331, 63%, 32%),rgb(133, 30, 79),132
hsl(211, 53%, 49%),rgb(58, 122, 191),68
hsl(88, 51%, 36%),rgb(94, 138, 44),107
hsl(179, 72%, 60%),rgb(79, 226, 224),116
hsl(327, 43%, 45%),rgb(164, 65, 119),132
hsl(200, 54%, 69%),rgb(133, 190, 218),152

Generated: 2026-08-26 00:43:01
```
