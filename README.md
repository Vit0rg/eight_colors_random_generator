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

![#3B04A9](https://img.shields.io/badge/-%233B04A9?style=flat&logo=none) ![#6940AE](https://img.shields.io/badge/-%236940AE?style=flat&logo=none) ![#99375E](https://img.shields.io/badge/-%2399375E?style=flat&logo=none) ![#782583](https://img.shields.io/badge/-%23782583?style=flat&logo=none) ![#EF339A](https://img.shields.io/badge/-%23EF339A?style=flat&logo=none) ![#CA1B0B](https://img.shields.io/badge/-%23CA1B0B?style=flat&logo=none) ![#A3740F](https://img.shields.io/badge/-%23A3740F?style=flat&logo=none) ![#D36E4F](https://img.shields.io/badge/-%23D36E4F?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-21 17:19:17
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(260, 95%, 34%) |  rgb(59, 4, 169)   | #3B04A9 | 55 |
| 2 | hsl(262, 46%, 47%) | rgb(105, 64, 174)  | #6940AE | 97 |
| 3 | hsl(336, 47%, 41%) |  rgb(153, 55, 94)  | #99375E |132 |
| 4 | hsl(293, 56%, 33%) | rgb(120, 37, 131)  | #782583 | 97 |
| 5 | hsl(327, 86%, 57%) | rgb(239, 51, 154)  | #EF339A |205 |
| 6 |  hsl(5, 89%, 42%)  |  rgb(202, 27, 11)  | #CA1B0B |166 |
| 7 | hsl(41, 83%, 35%)  | rgb(163, 116, 15)  | #A3740F |136 |
| 8 | hsl(14, 60%, 57%)  | rgb(211, 110, 79)  | #D36E4F |174 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(260, 95%, 34%),rgb(59, 4, 169),55
hsl(262, 46%, 47%),rgb(105, 64, 174),97
hsl(336, 47%, 41%),rgb(153, 55, 94),132
hsl(293, 56%, 33%),rgb(120, 37, 131),97
hsl(327, 86%, 57%),rgb(239, 51, 154),205
hsl(5, 89%, 42%),rgb(202, 27, 11),166
hsl(41, 83%, 35%),rgb(163, 116, 15),136
hsl(14, 60%, 57%),rgb(211, 110, 79),174

Generated: 2026-06-21 17:19:17
```
