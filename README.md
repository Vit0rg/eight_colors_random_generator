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

![#3E9E18](https://img.shields.io/badge/-%233E9E18?style=flat&logo=none) ![#8A8C1B](https://img.shields.io/badge/-%238A8C1B?style=flat&logo=none) ![#4A52C4](https://img.shields.io/badge/-%234A52C4?style=flat&logo=none) ![#AE62CA](https://img.shields.io/badge/-%23AE62CA?style=flat&logo=none) ![#47FF4A](https://img.shields.io/badge/-%2347FF4A?style=flat&logo=none) ![#BE0763](https://img.shields.io/badge/-%23BE0763?style=flat&logo=none) ![#C79823](https://img.shields.io/badge/-%23C79823?style=flat&logo=none) ![#8DD7B0](https://img.shields.io/badge/-%238DD7B0?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-17 02:47:30
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(103, 73%, 36%) |  rgb(62, 158, 24)  | #3E9E18 | 70 |
| 2 | hsl(61, 67%, 33%)  | rgb(138, 140, 27)  | #8A8C1B |143 |
| 3 | hsl(236, 51%, 53%) |  rgb(74, 82, 196)  | #4A52C4 | 68 |
| 4 | hsl(284, 50%, 59%) | rgb(174, 98, 202)  | #AE62CA |140 |
| 5 |hsl(121, 100%, 64%) |  rgb(71, 255, 74)  | #47FF4A | 83 |
| 6 | hsl(330, 92%, 39%) |  rgb(190, 7, 99)   | #BE0763 |162 |
| 7 | hsl(43, 70%, 46%)  | rgb(199, 152, 35)  | #C79823 |179 |
| 8 | hsl(148, 48%, 70%) | rgb(141, 215, 176) | #8DD7B0 |151 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(103, 73%, 36%),rgb(62, 158, 24),70
hsl(61, 67%, 33%),rgb(138, 140, 27),143
hsl(236, 51%, 53%),rgb(74, 82, 196),68
hsl(284, 50%, 59%),rgb(174, 98, 202),140
hsl(121, 100%, 64%),rgb(71, 255, 74),83
hsl(330, 92%, 39%),rgb(190, 7, 99),162
hsl(43, 70%, 46%),rgb(199, 152, 35),179
hsl(148, 48%, 70%),rgb(141, 215, 176),151

Generated: 2026-06-17 02:47:30
```
