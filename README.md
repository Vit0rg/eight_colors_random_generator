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

![#A5F862](https://img.shields.io/badge/-%23A5F862?style=flat&logo=none) ![#3854EE](https://img.shields.io/badge/-%233854EE?style=flat&logo=none) ![#EF463D](https://img.shields.io/badge/-%23EF463D?style=flat&logo=none) ![#4DB408](https://img.shields.io/badge/-%234DB408?style=flat&logo=none) ![#A08C2B](https://img.shields.io/badge/-%23A08C2B?style=flat&logo=none) ![#8DD7AC](https://img.shields.io/badge/-%238DD7AC?style=flat&logo=none) ![#D95420](https://img.shields.io/badge/-%23D95420?style=flat&logo=none) ![#9BAC1F](https://img.shields.io/badge/-%239BAC1F?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-25 16:32:08
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(93, 92%, 68%)  | rgb(165, 248, 98)  | #A5F862 |156 |
| 2 | hsl(231, 85%, 58%) |  rgb(56, 84, 238)  | #3854EE | 69 |
| 3 |  hsl(3, 85%, 59%)  |  rgb(239, 70, 61)  | #EF463D |203 |
| 4 | hsl(96, 91%, 37%)  |  rgb(77, 180, 8)   | #4DB408 |112 |
| 5 | hsl(50, 57%, 40%)  | rgb(160, 140, 43)  | #A08C2B |143 |
| 6 | hsl(145, 49%, 70%) | rgb(141, 215, 172) | #8DD7AC |151 |
| 7 | hsl(17, 74%, 49%)  |  rgb(217, 84, 32)  | #D95420 |173 |
| 8 | hsl(67, 69%, 40%)  | rgb(155, 172, 31)  | #9BAC1F |143 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(93, 92%, 68%),rgb(165, 248, 98),156
hsl(231, 85%, 58%),rgb(56, 84, 238),69
hsl(3, 85%, 59%),rgb(239, 70, 61),203
hsl(96, 91%, 37%),rgb(77, 180, 8),112
hsl(50, 57%, 40%),rgb(160, 140, 43),143
hsl(145, 49%, 70%),rgb(141, 215, 172),151
hsl(17, 74%, 49%),rgb(217, 84, 32),173
hsl(67, 69%, 40%),rgb(155, 172, 31),143

Generated: 2026-04-25 16:32:08
```
