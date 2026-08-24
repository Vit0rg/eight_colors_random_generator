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

![#6E3ED4](https://img.shields.io/badge/-%236E3ED4?style=flat&logo=none) ![#883429](https://img.shields.io/badge/-%23883429?style=flat&logo=none) ![#A1D939](https://img.shields.io/badge/-%23A1D939?style=flat&logo=none) ![#3F319F](https://img.shields.io/badge/-%233F319F?style=flat&logo=none) ![#EF9D0F](https://img.shields.io/badge/-%23EF9D0F?style=flat&logo=none) ![#18A957](https://img.shields.io/badge/-%2318A957?style=flat&logo=none) ![#429BCB](https://img.shields.io/badge/-%23429BCB?style=flat&logo=none) ![#D83B42](https://img.shields.io/badge/-%23D83B42?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-24 00:42:39
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(259, 64%, 54%) | rgb(110, 62, 212)  | #6E3ED4 | 98 |
| 2 |  hsl(7, 53%, 35%)  |  rgb(136, 52, 41)  | #883429 |131 |
| 3 | hsl(81, 68%, 54%)  | rgb(161, 217, 57)  | #A1D939 |149 |
| 4 | hsl(248, 53%, 41%) |  rgb(63, 49, 159)  | #3F319F | 61 |
| 5 | hsl(38, 88%, 50%)  | rgb(239, 157, 15)  | #EF9D0F |214 |
| 6 | hsl(146, 75%, 38%) |  rgb(24, 169, 87)  | #18A957 | 36 |
| 7 | hsl(201, 57%, 53%) | rgb(66, 155, 203)  | #429BCB | 74 |
| 8 | hsl(357, 67%, 54%) |  rgb(216, 59, 66)  | #D83B42 |167 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(259, 64%, 54%),rgb(110, 62, 212),98
hsl(7, 53%, 35%),rgb(136, 52, 41),131
hsl(81, 68%, 54%),rgb(161, 217, 57),149
hsl(248, 53%, 41%),rgb(63, 49, 159),61
hsl(38, 88%, 50%),rgb(239, 157, 15),214
hsl(146, 75%, 38%),rgb(24, 169, 87),36
hsl(201, 57%, 53%),rgb(66, 155, 203),74
hsl(357, 67%, 54%),rgb(216, 59, 66),167

Generated: 2026-08-24 00:42:39
```
