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

![#62E853](https://img.shields.io/badge/-%2362E853?style=flat&logo=none) ![#81F64F](https://img.shields.io/badge/-%2381F64F?style=flat&logo=none) ![#CB8491](https://img.shields.io/badge/-%23CB8491?style=flat&logo=none) ![#2013D6](https://img.shields.io/badge/-%232013D6?style=flat&logo=none) ![#6276D9](https://img.shields.io/badge/-%236276D9?style=flat&logo=none) ![#5FE7D5](https://img.shields.io/badge/-%235FE7D5?style=flat&logo=none) ![#9F25A1](https://img.shields.io/badge/-%239F25A1?style=flat&logo=none) ![#A16725](https://img.shields.io/badge/-%23A16725?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-18 17:52:18
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(114, 77%, 62%) |  rgb(98, 232, 83)  | #62E853 |120 |
| 2 | hsl(102, 91%, 64%) | rgb(129, 246, 79)  | #81F64F |156 |
| 3 | hsl(349, 41%, 66%) | rgb(203, 132, 145) | #CB8491 |181 |
| 4 | hsl(244, 83%, 46%) |  rgb(32, 19, 214)  | #2013D6 | 56 |
| 5 | hsl(230, 61%, 62%) | rgb(98, 118, 217)  | #6276D9 |104 |
| 6 | hsl(172, 74%, 64%) | rgb(95, 231, 213)  | #5FE7D5 |122 |
| 7 | hsl(299, 62%, 39%) | rgb(159, 37, 161)  | #9F25A1 |133 |
| 8 | hsl(32, 62%, 39%)  | rgb(161, 103, 37)  | #A16725 |137 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(114, 77%, 62%),rgb(98, 232, 83),120
hsl(102, 91%, 64%),rgb(129, 246, 79),156
hsl(349, 41%, 66%),rgb(203, 132, 145),181
hsl(244, 83%, 46%),rgb(32, 19, 214),56
hsl(230, 61%, 62%),rgb(98, 118, 217),104
hsl(172, 74%, 64%),rgb(95, 231, 213),122
hsl(299, 62%, 39%),rgb(159, 37, 161),133
hsl(32, 62%, 39%),rgb(161, 103, 37),137

Generated: 2026-05-18 17:52:18
```
