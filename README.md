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

![#2CC354](https://img.shields.io/badge/-%232CC354?style=flat&logo=none) ![#F13BC3](https://img.shields.io/badge/-%23F13BC3?style=flat&logo=none) ![#17B3EC](https://img.shields.io/badge/-%2317B3EC?style=flat&logo=none) ![#5470DD](https://img.shields.io/badge/-%235470DD?style=flat&logo=none) ![#5B8131](https://img.shields.io/badge/-%235B8131?style=flat&logo=none) ![#689739](https://img.shields.io/badge/-%23689739?style=flat&logo=none) ![#3E92AC](https://img.shields.io/badge/-%233E92AC?style=flat&logo=none) ![#30DEF1](https://img.shields.io/badge/-%2330DEF1?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-28 02:11:07
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(136, 63%, 47%) |  rgb(44, 195, 84)  | #2CC354 | 78 |
| 2 | hsl(315, 87%, 59%) | rgb(241, 59, 195)  | #F13BC3 |206 |
| 3 | hsl(196, 85%, 51%) | rgb(23, 179, 236)  | #17B3EC | 39 |
| 4 | hsl(228, 67%, 60%) | rgb(84, 112, 221)  | #5470DD |104 |
| 5 | hsl(88, 45%, 35%)  |  rgb(91, 129, 49)  | #5B8131 |107 |
| 6 | hsl(90, 45%, 41%)  | rgb(104, 151, 57)  | #689739 |107 |
| 7 | hsl(194, 47%, 46%) | rgb(62, 146, 172)  | #3E92AC | 73 |
| 8 | hsl(186, 88%, 57%) | rgb(48, 222, 241)  | #30DEF1 | 81 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(136, 63%, 47%),rgb(44, 195, 84),78
hsl(315, 87%, 59%),rgb(241, 59, 195),206
hsl(196, 85%, 51%),rgb(23, 179, 236),39
hsl(228, 67%, 60%),rgb(84, 112, 221),104
hsl(88, 45%, 35%),rgb(91, 129, 49),107
hsl(90, 45%, 41%),rgb(104, 151, 57),107
hsl(194, 47%, 46%),rgb(62, 146, 172),73
hsl(186, 88%, 57%),rgb(48, 222, 241),81

Generated: 2026-05-28 02:11:07
```
