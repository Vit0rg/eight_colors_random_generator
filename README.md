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

![#C39155](https://img.shields.io/badge/-%23C39155?style=flat&logo=none) ![#CBCE82](https://img.shields.io/badge/-%23CBCE82?style=flat&logo=none) ![#07FCA6](https://img.shields.io/badge/-%2307FCA6?style=flat&logo=none) ![#C33B68](https://img.shields.io/badge/-%23C33B68?style=flat&logo=none) ![#FB69BC](https://img.shields.io/badge/-%23FB69BC?style=flat&logo=none) ![#D86DA6](https://img.shields.io/badge/-%23D86DA6?style=flat&logo=none) ![#DD2B46](https://img.shields.io/badge/-%23DD2B46?style=flat&logo=none) ![#8034A1](https://img.shields.io/badge/-%238034A1?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-31 10:28:21
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(33, 48%, 55%)  | rgb(195, 145, 85)  | #C39155 |180 |
| 2 | hsl(62, 44%, 66%)  | rgb(203, 206, 130) | #CBCE82 |187 |
| 3 | hsl(159, 98%, 51%) |  rgb(7, 252, 166)  | #07FCA6 | 49 |
| 4 | hsl(340, 53%, 50%) | rgb(195, 59, 104)  | #C33B68 |168 |
| 5 | hsl(326, 96%, 70%) | rgb(251, 105, 188) | #FB69BC |212 |
| 6 | hsl(328, 58%, 64%) | rgb(216, 109, 166) | #D86DA6 |175 |
| 7 | hsl(351, 73%, 52%) |  rgb(221, 43, 70)  | #DD2B46 |167 |
| 8 | hsl(282, 51%, 42%) | rgb(128, 52, 161)  | #8034A1 |133 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(33, 48%, 55%),rgb(195, 145, 85),180
hsl(62, 44%, 66%),rgb(203, 206, 130),187
hsl(159, 98%, 51%),rgb(7, 252, 166),49
hsl(340, 53%, 50%),rgb(195, 59, 104),168
hsl(326, 96%, 70%),rgb(251, 105, 188),212
hsl(328, 58%, 64%),rgb(216, 109, 166),175
hsl(351, 73%, 52%),rgb(221, 43, 70),167
hsl(282, 51%, 42%),rgb(128, 52, 161),133

Generated: 2026-07-31 10:28:21
```
