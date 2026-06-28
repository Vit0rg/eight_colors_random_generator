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

![#46E16D](https://img.shields.io/badge/-%2346E16D?style=flat&logo=none) ![#9061BB](https://img.shields.io/badge/-%239061BB?style=flat&logo=none) ![#2C61D2](https://img.shields.io/badge/-%232C61D2?style=flat&logo=none) ![#D557C2](https://img.shields.io/badge/-%23D557C2?style=flat&logo=none) ![#85D590](https://img.shields.io/badge/-%2385D590?style=flat&logo=none) ![#27714B](https://img.shields.io/badge/-%2327714B?style=flat&logo=none) ![#F555FB](https://img.shields.io/badge/-%23F555FB?style=flat&logo=none) ![#DE5248](https://img.shields.io/badge/-%23DE5248?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-28 02:36:45
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(135, 72%, 58%) | rgb(70, 225, 109)  | #46E16D | 78 |
| 2 | hsl(271, 40%, 56%) | rgb(144, 97, 187)  | #9061BB |140 |
| 3 | hsl(221, 65%, 50%) |  rgb(44, 97, 210)  | #2C61D2 | 68 |
| 4 | hsl(309, 60%, 59%) | rgb(213, 87, 194)  | #D557C2 |176 |
| 5 | hsl(128, 49%, 68%) | rgb(133, 213, 144) | #85D590 |151 |
| 6 | hsl(149, 48%, 30%) |  rgb(39, 113, 75)  | #27714B | 65 |
| 7 | hsl(298, 96%, 66%) | rgb(245, 85, 251)  | #F555FB |213 |
| 8 |  hsl(4, 70%, 58%)  |  rgb(222, 82, 72)  | #DE5248 |173 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(135, 72%, 58%),rgb(70, 225, 109),78
hsl(271, 40%, 56%),rgb(144, 97, 187),140
hsl(221, 65%, 50%),rgb(44, 97, 210),68
hsl(309, 60%, 59%),rgb(213, 87, 194),176
hsl(128, 49%, 68%),rgb(133, 213, 144),151
hsl(149, 48%, 30%),rgb(39, 113, 75),65
hsl(298, 96%, 66%),rgb(245, 85, 251),213
hsl(4, 70%, 58%),rgb(222, 82, 72),173

Generated: 2026-06-28 02:36:45
```
