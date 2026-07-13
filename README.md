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

![#B51B49](https://img.shields.io/badge/-%23B51B49?style=flat&logo=none) ![#762C5B](https://img.shields.io/badge/-%23762C5B?style=flat&logo=none) ![#339FA2](https://img.shields.io/badge/-%23339FA2?style=flat&logo=none) ![#BCC959](https://img.shields.io/badge/-%23BCC959?style=flat&logo=none) ![#BE1DEB](https://img.shields.io/badge/-%23BE1DEB?style=flat&logo=none) ![#E52864](https://img.shields.io/badge/-%23E52864?style=flat&logo=none) ![#8E3D33](https://img.shields.io/badge/-%238E3D33?style=flat&logo=none) ![#1B8C6C](https://img.shields.io/badge/-%231B8C6C?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-13 17:48:10
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(342, 74%, 41%) |  rgb(181, 27, 73)  | #B51B49 |167 |
| 2 | hsl(322, 45%, 32%) |  rgb(118, 44, 91)  | #762C5B | 96 |
| 3 | hsl(182, 52%, 42%) | rgb(51, 159, 162)  | #339FA2 | 73 |
| 4 | hsl(67, 51%, 57%)  | rgb(188, 201, 89)  | #BCC959 |186 |
| 5 | hsl(287, 84%, 52%) | rgb(190, 29, 235)  | #BE1DEB |171 |
| 6 | hsl(341, 79%, 53%) | rgb(229, 40, 100)  | #E52864 |168 |
| 7 |  hsl(7, 47%, 38%)  |  rgb(142, 61, 51)  | #8E3D33 |131 |
| 8 | hsl(163, 67%, 33%) | rgb(27, 140, 108)  | #1B8C6C | 72 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(342, 74%, 41%),rgb(181, 27, 73),167
hsl(322, 45%, 32%),rgb(118, 44, 91),96
hsl(182, 52%, 42%),rgb(51, 159, 162),73
hsl(67, 51%, 57%),rgb(188, 201, 89),186
hsl(287, 84%, 52%),rgb(190, 29, 235),171
hsl(341, 79%, 53%),rgb(229, 40, 100),168
hsl(7, 47%, 38%),rgb(142, 61, 51),131
hsl(163, 67%, 33%),rgb(27, 140, 108),72

Generated: 2026-07-13 17:48:10
```
