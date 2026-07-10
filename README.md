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

![#1DD1BC](https://img.shields.io/badge/-%231DD1BC?style=flat&logo=none) ![#4791DA](https://img.shields.io/badge/-%234791DA?style=flat&logo=none) ![#6F7BD1](https://img.shields.io/badge/-%236F7BD1?style=flat&logo=none) ![#641B91](https://img.shields.io/badge/-%23641B91?style=flat&logo=none) ![#A968E3](https://img.shields.io/badge/-%23A968E3?style=flat&logo=none) ![#01D5A0](https://img.shields.io/badge/-%2301D5A0?style=flat&logo=none) ![#22BD2F](https://img.shields.io/badge/-%2322BD2F?style=flat&logo=none) ![#B68A25](https://img.shields.io/badge/-%23B68A25?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-10 17:40:42
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(173, 75%, 47%) | rgb(29, 209, 188)  | #1DD1BC | 80 |
| 2 | hsl(210, 67%, 57%) | rgb(71, 145, 218)  | #4791DA | 74 |
| 3 | hsl(233, 52%, 63%) | rgb(111, 123, 209) | #6F7BD1 |104 |
| 4 | hsl(277, 68%, 34%) | rgb(100, 27, 145)  | #641B91 | 97 |
| 5 | hsl(272, 69%, 65%) | rgb(169, 104, 227) | #A968E3 |140 |
| 6 | hsl(165, 99%, 42%) |  rgb(1, 213, 160)  | #01D5A0 | 43 |
| 7 | hsl(125, 69%, 44%) |  rgb(34, 189, 47)  | #22BD2F | 77 |
| 8 | hsl(42, 66%, 43%)  | rgb(182, 138, 37)  | #B68A25 |179 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(173, 75%, 47%),rgb(29, 209, 188),80
hsl(210, 67%, 57%),rgb(71, 145, 218),74
hsl(233, 52%, 63%),rgb(111, 123, 209),104
hsl(277, 68%, 34%),rgb(100, 27, 145),97
hsl(272, 69%, 65%),rgb(169, 104, 227),140
hsl(165, 99%, 42%),rgb(1, 213, 160),43
hsl(125, 69%, 44%),rgb(34, 189, 47),77
hsl(42, 66%, 43%),rgb(182, 138, 37),179

Generated: 2026-07-10 17:40:42
```
