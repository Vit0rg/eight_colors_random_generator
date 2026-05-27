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

![#D533C7](https://img.shields.io/badge/-%23D533C7?style=flat&logo=none) ![#9970DB](https://img.shields.io/badge/-%239970DB?style=flat&logo=none) ![#43EB1D](https://img.shields.io/badge/-%2343EB1D?style=flat&logo=none) ![#585BBA](https://img.shields.io/badge/-%23585BBA?style=flat&logo=none) ![#46A044](https://img.shields.io/badge/-%2346A044?style=flat&logo=none) ![#C118CD](https://img.shields.io/badge/-%23C118CD?style=flat&logo=none) ![#7E5133](https://img.shields.io/badge/-%237E5133?style=flat&logo=none) ![#A6BA44](https://img.shields.io/badge/-%23A6BA44?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-27 02:34:47
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(305, 66%, 52%) | rgb(213, 51, 199)  | #D533C7 |170 |
| 2 | hsl(263, 60%, 65%) | rgb(153, 112, 219) | #9970DB |140 |
| 3 | hsl(109, 84%, 52%) |  rgb(67, 235, 29)  | #43EB1D | 83 |
| 4 | hsl(238, 42%, 54%) |  rgb(88, 91, 186)  | #585BBA |104 |
| 5 | hsl(119, 40%, 45%) |  rgb(70, 160, 68)  | #46A044 | 71 |
| 6 | hsl(296, 79%, 45%) | rgb(193, 24, 205)  | #C118CD |164 |
| 7 | hsl(24, 42%, 35%)  |  rgb(126, 81, 51)  | #7E5133 |101 |
| 8 | hsl(70, 46%, 50%)  | rgb(166, 186, 68)  | #A6BA44 |149 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(305, 66%, 52%),rgb(213, 51, 199),170
hsl(263, 60%, 65%),rgb(153, 112, 219),140
hsl(109, 84%, 52%),rgb(67, 235, 29),83
hsl(238, 42%, 54%),rgb(88, 91, 186),104
hsl(119, 40%, 45%),rgb(70, 160, 68),71
hsl(296, 79%, 45%),rgb(193, 24, 205),164
hsl(24, 42%, 35%),rgb(126, 81, 51),101
hsl(70, 46%, 50%),rgb(166, 186, 68),149

Generated: 2026-05-27 02:34:47
```
