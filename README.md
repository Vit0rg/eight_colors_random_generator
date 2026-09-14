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

![#C65224](https://img.shields.io/badge/-%23C65224?style=flat&logo=none) ![#2D16FC](https://img.shields.io/badge/-%232D16FC?style=flat&logo=none) ![#86C3DE](https://img.shields.io/badge/-%2386C3DE?style=flat&logo=none) ![#B2428F](https://img.shields.io/badge/-%23B2428F?style=flat&logo=none) ![#E1F85D](https://img.shields.io/badge/-%23E1F85D?style=flat&logo=none) ![#E72195](https://img.shields.io/badge/-%23E72195?style=flat&logo=none) ![#99A007](https://img.shields.io/badge/-%2399A007?style=flat&logo=none) ![#638438](https://img.shields.io/badge/-%23638438?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-14 14:34:02
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(17, 69%, 46%)  |  rgb(198, 82, 36)  | #C65224 |173 |
| 2 | hsl(246, 98%, 54%) |  rgb(45, 22, 252)  | #2D16FC | 57 |
| 3 | hsl(198, 57%, 70%) | rgb(134, 195, 222) | #86C3DE |152 |
| 4 | hsl(319, 46%, 48%) | rgb(178, 66, 143)  | #B2428F |133 |
| 5 | hsl(69, 92%, 67%)  | rgb(225, 248, 93)  | #E1F85D |192 |
| 6 | hsl(325, 81%, 52%) | rgb(231, 33, 149)  | #E72195 |205 |
| 7 | hsl(63, 91%, 33%)  |  rgb(153, 160, 7)  | #99A007 |142 |
| 8 | hsl(86, 40%, 37%)  |  rgb(99, 132, 56)  | #638438 |107 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(17, 69%, 46%),rgb(198, 82, 36),173
hsl(246, 98%, 54%),rgb(45, 22, 252),57
hsl(198, 57%, 70%),rgb(134, 195, 222),152
hsl(319, 46%, 48%),rgb(178, 66, 143),133
hsl(69, 92%, 67%),rgb(225, 248, 93),192
hsl(325, 81%, 52%),rgb(231, 33, 149),205
hsl(63, 91%, 33%),rgb(153, 160, 7),142
hsl(86, 40%, 37%),rgb(99, 132, 56),107

Generated: 2026-09-14 14:34:02
```
