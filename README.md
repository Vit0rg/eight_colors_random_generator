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

![#5081DC](https://img.shields.io/badge/-%235081DC?style=flat&logo=none) ![#B27FE5](https://img.shields.io/badge/-%23B27FE5?style=flat&logo=none) ![#6CC0C0](https://img.shields.io/badge/-%236CC0C0?style=flat&logo=none) ![#33EFE3](https://img.shields.io/badge/-%2333EFE3?style=flat&logo=none) ![#A2C133](https://img.shields.io/badge/-%23A2C133?style=flat&logo=none) ![#C0B705](https://img.shields.io/badge/-%23C0B705?style=flat&logo=none) ![#B1DF4D](https://img.shields.io/badge/-%23B1DF4D?style=flat&logo=none) ![#5CF3F9](https://img.shields.io/badge/-%235CF3F9?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-12 11:47:52
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(219, 67%, 59%) | rgb(80, 129, 220)  | #5081DC |110 |
| 2 | hsl(270, 67%, 70%) | rgb(178, 127, 229) | #B27FE5 |140 |
| 3 | hsl(180, 40%, 59%) | rgb(108, 192, 192) | #6CC0C0 |116 |
| 4 | hsl(176, 86%, 57%) | rgb(51, 239, 227)  | #33EFE3 | 86 |
| 5 | hsl(73, 58%, 48%)  | rgb(162, 193, 51)  | #A2C133 |149 |
| 6 | hsl(57, 94%, 39%)  |  rgb(192, 183, 5)  | #C0B705 |184 |
| 7 | hsl(79, 70%, 59%)  | rgb(177, 223, 77)  | #B1DF4D |150 |
| 8 | hsl(182, 93%, 67%) | rgb(92, 243, 249)  | #5CF3F9 |123 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(219, 67%, 59%),rgb(80, 129, 220),110
hsl(270, 67%, 70%),rgb(178, 127, 229),140
hsl(180, 40%, 59%),rgb(108, 192, 192),116
hsl(176, 86%, 57%),rgb(51, 239, 227),86
hsl(73, 58%, 48%),rgb(162, 193, 51),149
hsl(57, 94%, 39%),rgb(192, 183, 5),184
hsl(79, 70%, 59%),rgb(177, 223, 77),150
hsl(182, 93%, 67%),rgb(92, 243, 249),123

Generated: 2026-09-12 11:47:52
```
