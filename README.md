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

![#7A88D1](https://img.shields.io/badge/-%237A88D1?style=flat&logo=none) ![#FABE3D](https://img.shields.io/badge/-%23FABE3D?style=flat&logo=none) ![#48B681](https://img.shields.io/badge/-%2348B681?style=flat&logo=none) ![#10B5AB](https://img.shields.io/badge/-%2310B5AB?style=flat&logo=none) ![#86A101](https://img.shields.io/badge/-%2386A101?style=flat&logo=none) ![#84D0C5](https://img.shields.io/badge/-%2384D0C5?style=flat&logo=none) ![#0C439B](https://img.shields.io/badge/-%230C439B?style=flat&logo=none) ![#DB70AE](https://img.shields.io/badge/-%23DB70AE?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-17 17:00:35
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(230, 49%, 65%) | rgb(122, 136, 209) | #7A88D1 |110 |
| 2 | hsl(41, 95%, 61%)  | rgb(250, 190, 61)  | #FABE3D |221 |
| 3 | hsl(151, 43%, 50%) | rgb(72, 182, 129)  | #48B681 | 79 |
| 4 | hsl(176, 83%, 39%) | rgb(16, 181, 171)  | #10B5AB | 43 |
| 5 | hsl(70, 98%, 32%)  |  rgb(134, 161, 1)  | #86A101 |142 |
| 6 | hsl(171, 45%, 67%) | rgb(132, 208, 197) | #84D0C5 |152 |
| 7 | hsl(217, 85%, 33%) |  rgb(12, 67, 155)  | #0C439B | 25 |
| 8 | hsl(325, 60%, 65%) | rgb(219, 112, 174) | #DB70AE |175 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(230, 49%, 65%),rgb(122, 136, 209),110
hsl(41, 95%, 61%),rgb(250, 190, 61),221
hsl(151, 43%, 50%),rgb(72, 182, 129),79
hsl(176, 83%, 39%),rgb(16, 181, 171),43
hsl(70, 98%, 32%),rgb(134, 161, 1),142
hsl(171, 45%, 67%),rgb(132, 208, 197),152
hsl(217, 85%, 33%),rgb(12, 67, 155),25
hsl(325, 60%, 65%),rgb(219, 112, 174),175

Generated: 2026-07-17 17:00:35
```
