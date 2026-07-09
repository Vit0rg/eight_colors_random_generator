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

![#89BF1B](https://img.shields.io/badge/-%2389BF1B?style=flat&logo=none) ![#6DD902](https://img.shields.io/badge/-%236DD902?style=flat&logo=none) ![#E943E6](https://img.shields.io/badge/-%23E943E6?style=flat&logo=none) ![#F2D845](https://img.shields.io/badge/-%23F2D845?style=flat&logo=none) ![#6FF096](https://img.shields.io/badge/-%236FF096?style=flat&logo=none) ![#A55AF0](https://img.shields.io/badge/-%23A55AF0?style=flat&logo=none) ![#F669D7](https://img.shields.io/badge/-%23F669D7?style=flat&logo=none) ![#4B2785](https://img.shields.io/badge/-%234B2785?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-09 17:47:33
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(80, 75%, 43%)  | rgb(137, 191, 27)  | #89BF1B |149 |
| 2 | hsl(90, 98%, 43%)  |  rgb(109, 217, 2)  | #6DD902 |112 |
| 3 | hsl(301, 79%, 59%) | rgb(233, 67, 230)  | #E943E6 |206 |
| 4 | hsl(51, 87%, 61%)  | rgb(242, 216, 69)  | #F2D845 |221 |
| 5 | hsl(138, 82%, 69%) | rgb(111, 240, 150) | #6FF096 |121 |
| 6 | hsl(270, 84%, 65%) | rgb(165, 90, 240)  | #A55AF0 |141 |
| 7 | hsl(313, 89%, 69%) | rgb(246, 105, 215) | #F669D7 |212 |
| 8 | hsl(263, 54%, 34%) |  rgb(75, 39, 133)  | #4B2785 | 61 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(80, 75%, 43%),rgb(137, 191, 27),149
hsl(90, 98%, 43%),rgb(109, 217, 2),112
hsl(301, 79%, 59%),rgb(233, 67, 230),206
hsl(51, 87%, 61%),rgb(242, 216, 69),221
hsl(138, 82%, 69%),rgb(111, 240, 150),121
hsl(270, 84%, 65%),rgb(165, 90, 240),141
hsl(313, 89%, 69%),rgb(246, 105, 215),212
hsl(263, 54%, 34%),rgb(75, 39, 133),61

Generated: 2026-07-09 17:47:33
```
