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

![#B365E0](https://img.shields.io/badge/-%23B365E0?style=flat&logo=none) ![#3B1ADF](https://img.shields.io/badge/-%233B1ADF?style=flat&logo=none) ![#7E5133](https://img.shields.io/badge/-%237E5133?style=flat&logo=none) ![#C94E07](https://img.shields.io/badge/-%23C94E07?style=flat&logo=none) ![#734D30](https://img.shields.io/badge/-%23734D30?style=flat&logo=none) ![#AF31E1](https://img.shields.io/badge/-%23AF31E1?style=flat&logo=none) ![#427DBC](https://img.shields.io/badge/-%23427DBC?style=flat&logo=none) ![#55E65F](https://img.shields.io/badge/-%2355E65F?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-13 17:12:18
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(278, 67%, 64%) | rgb(179, 101, 224) | #B365E0 |140 |
| 2 | hsl(250, 79%, 49%) |  rgb(59, 26, 223)  | #3B1ADF | 62 |
| 3 | hsl(24, 42%, 35%)  |  rgb(126, 81, 51)  | #7E5133 |101 |
| 4 | hsl(22, 93%, 41%)  |  rgb(201, 78, 7)   | #C94E07 |172 |
| 5 | hsl(26, 41%, 32%)  |  rgb(115, 77, 48)  | #734D30 |101 |
| 6 | hsl(283, 75%, 54%) | rgb(175, 49, 225)  | #AF31E1 |134 |
| 7 | hsl(211, 48%, 50%) | rgb(66, 125, 188)  | #427DBC | 68 |
| 8 | hsl(124, 75%, 62%) |  rgb(85, 230, 95)  | #55E65F |114 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(278, 67%, 64%),rgb(179, 101, 224),140
hsl(250, 79%, 49%),rgb(59, 26, 223),62
hsl(24, 42%, 35%),rgb(126, 81, 51),101
hsl(22, 93%, 41%),rgb(201, 78, 7),172
hsl(26, 41%, 32%),rgb(115, 77, 48),101
hsl(283, 75%, 54%),rgb(175, 49, 225),134
hsl(211, 48%, 50%),rgb(66, 125, 188),68
hsl(124, 75%, 62%),rgb(85, 230, 95),114

Generated: 2026-06-13 17:12:18
```
