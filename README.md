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

![#48F87D](https://img.shields.io/badge/-%2348F87D?style=flat&logo=none) ![#246579](https://img.shields.io/badge/-%23246579?style=flat&logo=none) ![#A865F5](https://img.shields.io/badge/-%23A865F5?style=flat&logo=none) ![#2B3A77](https://img.shields.io/badge/-%232B3A77?style=flat&logo=none) ![#2632E2](https://img.shields.io/badge/-%232632E2?style=flat&logo=none) ![#940E84](https://img.shields.io/badge/-%23940E84?style=flat&logo=none) ![#AC0FE4](https://img.shields.io/badge/-%23AC0FE4?style=flat&logo=none) ![#D17E7E](https://img.shields.io/badge/-%23D17E7E?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-05 16:56:15
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(138, 93%, 63%) | rgb(72, 248, 125)  | #48F87D | 84 |
| 2 | hsl(194, 54%, 31%) | rgb(36, 101, 121)  | #246579 | 66 |
| 3 | hsl(268, 88%, 68%) | rgb(168, 101, 245) | #A865F5 |141 |
| 4 | hsl(228, 47%, 32%) |  rgb(43, 58, 119)  | #2B3A77 | 60 |
| 5 | hsl(236, 77%, 52%) |  rgb(38, 50, 226)  | #2632E2 | 62 |
| 6 | hsl(307, 82%, 32%) | rgb(148, 14, 132)  | #940E84 |127 |
| 7 | hsl(284, 87%, 48%) | rgb(172, 15, 228)  | #AC0FE4 |128 |
| 8 |  hsl(0, 48%, 66%)  | rgb(209, 126, 126) | #D17E7E |174 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(138, 93%, 63%),rgb(72, 248, 125),84
hsl(194, 54%, 31%),rgb(36, 101, 121),66
hsl(268, 88%, 68%),rgb(168, 101, 245),141
hsl(228, 47%, 32%),rgb(43, 58, 119),60
hsl(236, 77%, 52%),rgb(38, 50, 226),62
hsl(307, 82%, 32%),rgb(148, 14, 132),127
hsl(284, 87%, 48%),rgb(172, 15, 228),128
hsl(0, 48%, 66%),rgb(209, 126, 126),174

Generated: 2026-07-05 16:56:15
```
