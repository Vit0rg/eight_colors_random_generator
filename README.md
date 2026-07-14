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

![#74DC89](https://img.shields.io/badge/-%2374DC89?style=flat&logo=none) ![#B1AE15](https://img.shields.io/badge/-%23B1AE15?style=flat&logo=none) ![#3E2983](https://img.shields.io/badge/-%233E2983?style=flat&logo=none) ![#EF1EFA](https://img.shields.io/badge/-%23EF1EFA?style=flat&logo=none) ![#8F1372](https://img.shields.io/badge/-%238F1372?style=flat&logo=none) ![#6AEB7B](https://img.shields.io/badge/-%236AEB7B?style=flat&logo=none) ![#3E2A7D](https://img.shields.io/badge/-%233E2A7D?style=flat&logo=none) ![#7F77E8](https://img.shields.io/badge/-%237F77E8?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-14 17:03:31
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(132, 60%, 66%) | rgb(116, 220, 137) | #74DC89 |115 |
| 2 | hsl(59, 78%, 39%)  | rgb(177, 174, 21)  | #B1AE15 |142 |
| 3 | hsl(254, 52%, 34%) |  rgb(62, 41, 131)  | #3E2983 | 61 |
| 4 | hsl(297, 96%, 55%) | rgb(239, 30, 250)  | #EF1EFA |207 |
| 5 | hsl(314, 76%, 32%) | rgb(143, 19, 114)  | #8F1372 |126 |
| 6 | hsl(128, 77%, 67%) | rgb(106, 235, 123) | #6AEB7B |120 |
| 7 | hsl(254, 49%, 33%) |  rgb(62, 42, 125)  | #3E2A7D | 60 |
| 8 | hsl(244, 71%, 69%) | rgb(127, 119, 232) | #7F77E8 |105 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(132, 60%, 66%),rgb(116, 220, 137),115
hsl(59, 78%, 39%),rgb(177, 174, 21),142
hsl(254, 52%, 34%),rgb(62, 41, 131),61
hsl(297, 96%, 55%),rgb(239, 30, 250),207
hsl(314, 76%, 32%),rgb(143, 19, 114),126
hsl(128, 77%, 67%),rgb(106, 235, 123),120
hsl(254, 49%, 33%),rgb(62, 42, 125),60
hsl(244, 71%, 69%),rgb(127, 119, 232),105

Generated: 2026-07-14 17:03:31
```
