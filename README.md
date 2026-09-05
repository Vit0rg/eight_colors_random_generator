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

![#D17FA9](https://img.shields.io/badge/-%23D17FA9?style=flat&logo=none) ![#E169C1](https://img.shields.io/badge/-%23E169C1?style=flat&logo=none) ![#D4BB86](https://img.shields.io/badge/-%23D4BB86?style=flat&logo=none) ![#1B72B0](https://img.shields.io/badge/-%231B72B0?style=flat&logo=none) ![#CAB653](https://img.shields.io/badge/-%23CAB653?style=flat&logo=none) ![#6FC308](https://img.shields.io/badge/-%236FC308?style=flat&logo=none) ![#800B8D](https://img.shields.io/badge/-%23800B8D?style=flat&logo=none) ![#6EDD70](https://img.shields.io/badge/-%236EDD70?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-05 02:04:53
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(329, 47%, 66%) | rgb(209, 127, 169) | #D17FA9 |175 |
| 2 | hsl(316, 67%, 65%) | rgb(225, 105, 193) | #E169C1 |176 |
| 3 | hsl(41, 48%, 68%)  | rgb(212, 187, 134) | #D4BB86 |187 |
| 4 | hsl(205, 73%, 40%) | rgb(27, 114, 176)  | #1B72B0 | 67 |
| 5 | hsl(50, 53%, 56%)  | rgb(202, 182, 83)  | #CAB653 |186 |
| 6 | hsl(87, 92%, 40%)  |  rgb(111, 195, 8)  | #6FC308 |112 |
| 7 | hsl(294, 85%, 30%) | rgb(128, 11, 141)  | #800B8D |127 |
| 8 | hsl(121, 62%, 65%) | rgb(110, 221, 112) | #6EDD70 |114 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(329, 47%, 66%),rgb(209, 127, 169),175
hsl(316, 67%, 65%),rgb(225, 105, 193),176
hsl(41, 48%, 68%),rgb(212, 187, 134),187
hsl(205, 73%, 40%),rgb(27, 114, 176),67
hsl(50, 53%, 56%),rgb(202, 182, 83),186
hsl(87, 92%, 40%),rgb(111, 195, 8),112
hsl(294, 85%, 30%),rgb(128, 11, 141),127
hsl(121, 62%, 65%),rgb(110, 221, 112),114

Generated: 2026-09-05 02:04:53
```
