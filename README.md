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

![#CAAA81](https://img.shields.io/badge/-%23CAAA81?style=flat&logo=none) ![#1B6BD4](https://img.shields.io/badge/-%231B6BD4?style=flat&logo=none) ![#CFE905](https://img.shields.io/badge/-%23CFE905?style=flat&logo=none) ![#12AC00](https://img.shields.io/badge/-%2312AC00?style=flat&logo=none) ![#97E471](https://img.shields.io/badge/-%2397E471?style=flat&logo=none) ![#DFB161](https://img.shields.io/badge/-%23DFB161?style=flat&logo=none) ![#FA461E](https://img.shields.io/badge/-%23FA461E?style=flat&logo=none) ![#753228](https://img.shields.io/badge/-%23753228?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-28 02:02:57
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(34, 41%, 65%)  | rgb(202, 170, 129) | #CAAA81 |181 |
| 2 | hsl(214, 77%, 47%) | rgb(27, 107, 212)  | #1B6BD4 | 68 |
| 3 | hsl(67, 95%, 47%)  |  rgb(207, 233, 5)  | #CFE905 |190 |
| 4 | hsl(114, 99%, 34%) |  rgb(18, 172, 0)   | #12AC00 | 34 |
| 5 | hsl(100, 68%, 67%) | rgb(151, 228, 113) | #97E471 |150 |
| 6 | hsl(38, 67%, 63%)  | rgb(223, 177, 97)  | #DFB161 |180 |
| 7 | hsl(11, 96%, 55%)  |  rgb(250, 70, 30)  | #FA461E |203 |
| 8 |  hsl(8, 49%, 31%)  |  rgb(117, 50, 40)  | #753228 | 95 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(34, 41%, 65%),rgb(202, 170, 129),181
hsl(214, 77%, 47%),rgb(27, 107, 212),68
hsl(67, 95%, 47%),rgb(207, 233, 5),190
hsl(114, 99%, 34%),rgb(18, 172, 0),34
hsl(100, 68%, 67%),rgb(151, 228, 113),150
hsl(38, 67%, 63%),rgb(223, 177, 97),180
hsl(11, 96%, 55%),rgb(250, 70, 30),203
hsl(8, 49%, 31%),rgb(117, 50, 40),95

Generated: 2026-04-28 02:02:57
```
