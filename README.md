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

![#49A300](https://img.shields.io/badge/-%2349A300?style=flat&logo=none) ![#B764FB](https://img.shields.io/badge/-%23B764FB?style=flat&logo=none) ![#5AB431](https://img.shields.io/badge/-%235AB431?style=flat&logo=none) ![#31ACC7](https://img.shields.io/badge/-%2331ACC7?style=flat&logo=none) ![#E9EC36](https://img.shields.io/badge/-%23E9EC36?style=flat&logo=none) ![#0636A6](https://img.shields.io/badge/-%230636A6?style=flat&logo=none) ![#B2D056](https://img.shields.io/badge/-%23B2D056?style=flat&logo=none) ![#1BB0B5](https://img.shields.io/badge/-%231BB0B5?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-26 01:53:32
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(93, 100%, 32%) |  rgb(73, 163, 0)   | #49A300 | 70 |
| 2 | hsl(273, 96%, 69%) | rgb(183, 100, 251) | #B764FB |177 |
| 3 | hsl(101, 57%, 45%) |  rgb(90, 180, 49)  | #5AB431 |113 |
| 4 | hsl(191, 60%, 49%) | rgb(49, 172, 199)  | #31ACC7 | 74 |
| 5 | hsl(61, 83%, 57%)  | rgb(233, 236, 54)  | #E9EC36 |227 |
| 6 | hsl(222, 92%, 34%) |  rgb(6, 54, 166)   | #0636A6 | 25 |
| 7 | hsl(75, 57%, 58%)  | rgb(178, 208, 86)  | #B2D056 |150 |
| 8 | hsl(182, 74%, 41%) | rgb(27, 176, 181)  | #1BB0B5 | 74 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(93, 100%, 32%),rgb(73, 163, 0),70
hsl(273, 96%, 69%),rgb(183, 100, 251),177
hsl(101, 57%, 45%),rgb(90, 180, 49),113
hsl(191, 60%, 49%),rgb(49, 172, 199),74
hsl(61, 83%, 57%),rgb(233, 236, 54),227
hsl(222, 92%, 34%),rgb(6, 54, 166),25
hsl(75, 57%, 58%),rgb(178, 208, 86),150
hsl(182, 74%, 41%),rgb(27, 176, 181),74

Generated: 2026-07-26 01:53:32
```
