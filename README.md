# Eight Colors Random Generator

Generates 8 random colors with HSL, RGB, Hex, and ANSI values every 4 hours via GitHub Actions.

## How It Works

A shell script (`generate_colors.sh`) generates 8 random colors by:

1. Picking random HSL values (H: 0–359, S: 40–100%, L: 30–70%)
2. Converting HSL → RGB using `awk`
3. Calculating the closest ANSI 256 color code

## Output

Each run creates a file named `MM_DD_YYYY_HH_MM_colors` containing:

- **Table** — centered columns showing Num, HSL, RGB, Hex, and ANSI
- **CSV** — machine-readable list of HSL, RGB, and ANSI values

The README is automatically updated with the latest palette on each run.

## Usage

### Manual

```bash
bash generate_colors.sh
```

### Automatic (GitHub Actions)

The workflow runs every 4 hours and commits the output file to the repository.

To trigger manually: **Actions → Generate Eight Colors → Run workflow**.

## Files

| File | Description |
|---|---|
| `generate_colors.sh` | Main script |
| `*_*_*_*_*_colors` | Generated color files |
| `.github/workflows/generate_colors.yml` | CI workflow |









## Latest Palette

![#29C2D0](https://img.shields.io/badge/-%2329C2D0?style=flat&logo=none) ![#6C9A27](https://img.shields.io/badge/-%236C9A27?style=flat&logo=none) ![#DE5C4E](https://img.shields.io/badge/-%23DE5C4E?style=flat&logo=none) ![#0000CC](https://img.shields.io/badge/-%230000CC?style=flat&logo=none) ![#FAE350](https://img.shields.io/badge/-%23FAE350?style=flat&logo=none) ![#B70E39](https://img.shields.io/badge/-%23B70E39?style=flat&logo=none) ![#7FE0C9](https://img.shields.io/badge/-%237FE0C9?style=flat&logo=none) ![#B7931F](https://img.shields.io/badge/-%23B7931F?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-10 13:23:59
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(185, 67%, 49%) | rgb(41, 194, 208)  | #29C2D0 | 80 |
| 2 | hsl(84, 59%, 38%)  | rgb(108, 154, 39)  | #6C9A27 |107 |
| 3 |  hsl(6, 69%, 59%)  |  rgb(222, 92, 78)  | #DE5C4E |174 |
| 4 |hsl(240, 100%, 40%) |   rgb(0, 0, 204)   | #0000CC | 20 |
| 5 | hsl(52, 95%, 65%)  | rgb(250, 227, 80)  | #FAE350 |222 |
| 6 | hsl(345, 85%, 39%) |  rgb(183, 14, 57)  | #B70E39 |161 |
| 7 | hsl(166, 61%, 69%) | rgb(127, 224, 201) | #7FE0C9 |116 |
| 8 | hsl(46, 71%, 42%)  | rgb(183, 147, 31)  | #B7931F |179 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(185, 67%, 49%),rgb(41, 194, 208),80
hsl(84, 59%, 38%),rgb(108, 154, 39),107
hsl(6, 69%, 59%),rgb(222, 92, 78),174
hsl(240, 100%, 40%),rgb(0, 0, 204),20
hsl(52, 95%, 65%),rgb(250, 227, 80),222
hsl(345, 85%, 39%),rgb(183, 14, 57),161
hsl(166, 61%, 69%),rgb(127, 224, 201),116
hsl(46, 71%, 42%),rgb(183, 147, 31),179

Generated: 2026-04-10 13:23:59
```
