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

![#C60A16](https://img.shields.io/badge/-%23C60A16?style=flat&logo=none) ![#CA629B](https://img.shields.io/badge/-%23CA629B?style=flat&logo=none) ![#AE6403](https://img.shields.io/badge/-%23AE6403?style=flat&logo=none) ![#CD0846](https://img.shields.io/badge/-%23CD0846?style=flat&logo=none) ![#DCC865](https://img.shields.io/badge/-%23DCC865?style=flat&logo=none) ![#5300B2](https://img.shields.io/badge/-%235300B2?style=flat&logo=none) ![#791F4C](https://img.shields.io/badge/-%23791F4C?style=flat&logo=none) ![#AB491B](https://img.shields.io/badge/-%23AB491B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-23 17:44:37
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(356, 90%, 41%) |  rgb(198, 10, 22)  | #C60A16 |160 |
| 2 | hsl(327, 50%, 59%) | rgb(202, 98, 155)  | #CA629B |175 |
| 3 | hsl(34, 96%, 35%)  |  rgb(174, 100, 3)  | #AE6403 |136 |
| 4 | hsl(341, 92%, 42%) |  rgb(205, 8, 70)   | #CD0846 |161 |
| 5 | hsl(50, 63%, 63%)  | rgb(220, 200, 101) | #DCC865 |186 |
| 6 |hsl(268, 100%, 35%) |  rgb(83, 0, 178)   | #5300B2 | 91 |
| 7 | hsl(330, 59%, 30%) |  rgb(121, 31, 76)  | #791F4C | 95 |
| 8 | hsl(19, 72%, 39%)  |  rgb(171, 73, 27)  | #AB491B |131 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(356, 90%, 41%),rgb(198, 10, 22),160
hsl(327, 50%, 59%),rgb(202, 98, 155),175
hsl(34, 96%, 35%),rgb(174, 100, 3),136
hsl(341, 92%, 42%),rgb(205, 8, 70),161
hsl(50, 63%, 63%),rgb(220, 200, 101),186
hsl(268, 100%, 35%),rgb(83, 0, 178),91
hsl(330, 59%, 30%),rgb(121, 31, 76),95
hsl(19, 72%, 39%),rgb(171, 73, 27),131

Generated: 2026-06-23 17:44:37
```
