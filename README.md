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

![#24F393](https://img.shields.io/badge/-%2324F393?style=flat&logo=none) ![#1B3AB5](https://img.shields.io/badge/-%231B3AB5?style=flat&logo=none) ![#1197B4](https://img.shields.io/badge/-%231197B4?style=flat&logo=none) ![#C00CD4](https://img.shields.io/badge/-%23C00CD4?style=flat&logo=none) ![#4BB384](https://img.shields.io/badge/-%234BB384?style=flat&logo=none) ![#4F8FE2](https://img.shields.io/badge/-%234F8FE2?style=flat&logo=none) ![#A13099](https://img.shields.io/badge/-%23A13099?style=flat&logo=none) ![#830D90](https://img.shields.io/badge/-%23830D90?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-08 19:08:00
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(152, 90%, 55%) | rgb(36, 243, 147)  | #24F393 | 85 |
| 2 | hsl(228, 74%, 41%) |  rgb(27, 58, 181)  | #1B3AB5 | 62 |
| 3 | hsl(191, 82%, 39%) | rgb(17, 151, 180)  | #1197B4 | 38 |
| 4 | hsl(294, 89%, 44%) | rgb(192, 12, 212)  | #C00CD4 |164 |
| 5 | hsl(153, 41%, 50%) | rgb(75, 179, 132)  | #4BB384 | 73 |
| 6 | hsl(214, 72%, 60%) | rgb(79, 143, 226)  | #4F8FE2 |110 |
| 7 | hsl(304, 54%, 41%) | rgb(161, 48, 153)  | #A13099 |133 |
| 8 | hsl(294, 83%, 31%) | rgb(131, 13, 144)  | #830D90 |127 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(152, 90%, 55%),rgb(36, 243, 147),85
hsl(228, 74%, 41%),rgb(27, 58, 181),62
hsl(191, 82%, 39%),rgb(17, 151, 180),38
hsl(294, 89%, 44%),rgb(192, 12, 212),164
hsl(153, 41%, 50%),rgb(75, 179, 132),73
hsl(214, 72%, 60%),rgb(79, 143, 226),110
hsl(304, 54%, 41%),rgb(161, 48, 153),133
hsl(294, 83%, 31%),rgb(131, 13, 144),127

Generated: 2026-09-08 19:08:00
```
