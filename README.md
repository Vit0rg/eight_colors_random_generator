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

![#5B3294](https://img.shields.io/badge/-%235B3294?style=flat&logo=none) ![#8E09DC](https://img.shields.io/badge/-%238E09DC?style=flat&logo=none) ![#91D160](https://img.shields.io/badge/-%2391D160?style=flat&logo=none) ![#E25ECE](https://img.shields.io/badge/-%23E25ECE?style=flat&logo=none) ![#C5E933](https://img.shields.io/badge/-%23C5E933?style=flat&logo=none) ![#F36D52](https://img.shields.io/badge/-%23F36D52?style=flat&logo=none) ![#B1D58A](https://img.shields.io/badge/-%23B1D58A?style=flat&logo=none) ![#0CA61E](https://img.shields.io/badge/-%230CA61E?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-10 09:07:28
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(265, 49%, 39%) |  rgb(91, 50, 148)  | #5B3294 | 97 |
| 2 | hsl(278, 92%, 45%) |  rgb(142, 9, 220)  | #8E09DC |128 |
| 3 | hsl(94, 55%, 60%)  | rgb(145, 209, 96)  | #91D160 |150 |
| 4 | hsl(309, 70%, 63%) | rgb(226, 94, 206)  | #E25ECE |176 |
| 5 | hsl(72, 81%, 56%)  | rgb(197, 233, 51)  | #C5E933 |191 |
| 6 | hsl(10, 88%, 64%)  | rgb(243, 109, 82)  | #F36D52 |210 |
| 7 | hsl(89, 47%, 69%)  | rgb(177, 213, 138) | #B1D58A |151 |
| 8 | hsl(127, 86%, 35%) |  rgb(12, 166, 30)  | #0CA61E | 35 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(265, 49%, 39%),rgb(91, 50, 148),97
hsl(278, 92%, 45%),rgb(142, 9, 220),128
hsl(94, 55%, 60%),rgb(145, 209, 96),150
hsl(309, 70%, 63%),rgb(226, 94, 206),176
hsl(72, 81%, 56%),rgb(197, 233, 51),191
hsl(10, 88%, 64%),rgb(243, 109, 82),210
hsl(89, 47%, 69%),rgb(177, 213, 138),151
hsl(127, 86%, 35%),rgb(12, 166, 30),35

Generated: 2026-08-10 09:07:28
```
