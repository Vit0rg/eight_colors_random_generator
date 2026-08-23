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

![#3924F9](https://img.shields.io/badge/-%233924F9?style=flat&logo=none) ![#D08FA4](https://img.shields.io/badge/-%23D08FA4?style=flat&logo=none) ![#FCBA4A](https://img.shields.io/badge/-%23FCBA4A?style=flat&logo=none) ![#287B99](https://img.shields.io/badge/-%23287B99?style=flat&logo=none) ![#69BE6B](https://img.shields.io/badge/-%2369BE6B?style=flat&logo=none) ![#518FC2](https://img.shields.io/badge/-%23518FC2?style=flat&logo=none) ![#B94F86](https://img.shields.io/badge/-%23B94F86?style=flat&logo=none) ![#DB6671](https://img.shields.io/badge/-%23DB6671?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-23 08:18:27
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(246, 95%, 56%) |  rgb(57, 36, 249)  | #3924F9 | 63 |
| 2 | hsl(341, 41%, 69%) | rgb(208, 143, 164) | #D08FA4 |181 |
| 3 | hsl(38, 97%, 64%)  | rgb(252, 186, 74)  | #FCBA4A |221 |
| 4 | hsl(196, 58%, 38%) | rgb(40, 123, 153)  | #287B99 | 67 |
| 5 | hsl(122, 40%, 58%) | rgb(105, 190, 107) | #69BE6B |114 |
| 6 | hsl(207, 48%, 54%) | rgb(81, 143, 194)  | #518FC2 |110 |
| 7 | hsl(329, 43%, 52%) | rgb(185, 79, 134)  | #B94F86 |175 |
| 8 | hsl(354, 62%, 63%) | rgb(219, 102, 113) | #DB6671 |174 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(246, 95%, 56%),rgb(57, 36, 249),63
hsl(341, 41%, 69%),rgb(208, 143, 164),181
hsl(38, 97%, 64%),rgb(252, 186, 74),221
hsl(196, 58%, 38%),rgb(40, 123, 153),67
hsl(122, 40%, 58%),rgb(105, 190, 107),114
hsl(207, 48%, 54%),rgb(81, 143, 194),110
hsl(329, 43%, 52%),rgb(185, 79, 134),175
hsl(354, 62%, 63%),rgb(219, 102, 113),174

Generated: 2026-08-23 08:18:27
```
