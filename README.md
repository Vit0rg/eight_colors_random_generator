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

![#0759FC](https://img.shields.io/badge/-%230759FC?style=flat&logo=none) ![#0E549E](https://img.shields.io/badge/-%230E549E?style=flat&logo=none) ![#888239](https://img.shields.io/badge/-%23888239?style=flat&logo=none) ![#59D5F7](https://img.shields.io/badge/-%2359D5F7?style=flat&logo=none) ![#F5FC3B](https://img.shields.io/badge/-%23F5FC3B?style=flat&logo=none) ![#CFC762](https://img.shields.io/badge/-%23CFC762?style=flat&logo=none) ![#6FF0AD](https://img.shields.io/badge/-%236FF0AD?style=flat&logo=none) ![#8B78E2](https://img.shields.io/badge/-%238B78E2?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-24 08:36:21
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(220, 98%, 51%) |  rgb(7, 89, 252)   | #0759FC | 33 |
| 2 | hsl(211, 83%, 34%) |  rgb(14, 84, 158)  | #0E549E | 31 |
| 3 | hsl(55, 41%, 38%)  | rgb(136, 130, 57)  | #888239 |143 |
| 4 | hsl(193, 91%, 66%) | rgb(89, 213, 247)  | #59D5F7 |117 |
| 5 | hsl(62, 97%, 61%)  | rgb(245, 252, 59)  | #F5FC3B |227 |
| 6 | hsl(56, 53%, 60%)  | rgb(207, 199, 98)  | #CFC762 |186 |
| 7 | hsl(149, 82%, 69%) | rgb(111, 240, 173) | #6FF0AD |121 |
| 8 | hsl(251, 65%, 68%) | rgb(139, 120, 226) | #8B78E2 |140 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(220, 98%, 51%),rgb(7, 89, 252),33
hsl(211, 83%, 34%),rgb(14, 84, 158),31
hsl(55, 41%, 38%),rgb(136, 130, 57),143
hsl(193, 91%, 66%),rgb(89, 213, 247),117
hsl(62, 97%, 61%),rgb(245, 252, 59),227
hsl(56, 53%, 60%),rgb(207, 199, 98),186
hsl(149, 82%, 69%),rgb(111, 240, 173),121
hsl(251, 65%, 68%),rgb(139, 120, 226),140

Generated: 2026-08-24 08:36:21
```
