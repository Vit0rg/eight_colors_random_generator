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

![#6A7825](https://img.shields.io/badge/-%236A7825?style=flat&logo=none) ![#29C9E9](https://img.shields.io/badge/-%2329C9E9?style=flat&logo=none) ![#AF2802](https://img.shields.io/badge/-%23AF2802?style=flat&logo=none) ![#E49648](https://img.shields.io/badge/-%23E49648?style=flat&logo=none) ![#E25E67](https://img.shields.io/badge/-%23E25E67?style=flat&logo=none) ![#762C52](https://img.shields.io/badge/-%23762C52?style=flat&logo=none) ![#156D93](https://img.shields.io/badge/-%23156D93?style=flat&logo=none) ![#DC3E13](https://img.shields.io/badge/-%23DC3E13?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-06 01:43:52
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(70, 52%, 31%)  | rgb(106, 120, 37)  | #6A7825 |101 |
| 2 | hsl(190, 82%, 54%) | rgb(41, 201, 233)  | #29C9E9 | 81 |
| 3 | hsl(13, 97%, 35%)  |  rgb(175, 40, 2)   | #AF2802 |130 |
| 4 | hsl(30, 75%, 59%)  | rgb(228, 150, 72)  | #E49648 |179 |
| 5 | hsl(356, 70%, 63%) | rgb(226, 94, 103)  | #E25E67 |174 |
| 6 | hsl(329, 45%, 32%) |  rgb(118, 44, 82)  | #762C52 | 96 |
| 7 | hsl(198, 75%, 33%) | rgb(21, 109, 147)  | #156D93 | 31 |
| 8 | hsl(13, 84%, 47%)  |  rgb(220, 62, 19)  | #DC3E13 |166 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(70, 52%, 31%),rgb(106, 120, 37),101
hsl(190, 82%, 54%),rgb(41, 201, 233),81
hsl(13, 97%, 35%),rgb(175, 40, 2),130
hsl(30, 75%, 59%),rgb(228, 150, 72),179
hsl(356, 70%, 63%),rgb(226, 94, 103),174
hsl(329, 45%, 32%),rgb(118, 44, 82),96
hsl(198, 75%, 33%),rgb(21, 109, 147),31
hsl(13, 84%, 47%),rgb(220, 62, 19),166

Generated: 2026-08-06 01:43:52
```
