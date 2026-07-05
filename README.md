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

![#D68D04](https://img.shields.io/badge/-%23D68D04?style=flat&logo=none) ![#CD4AAA](https://img.shields.io/badge/-%23CD4AAA?style=flat&logo=none) ![#6DB648](https://img.shields.io/badge/-%236DB648?style=flat&logo=none) ![#2B6391](https://img.shields.io/badge/-%232B6391?style=flat&logo=none) ![#28AD41](https://img.shields.io/badge/-%2328AD41?style=flat&logo=none) ![#2CA994](https://img.shields.io/badge/-%232CA994?style=flat&logo=none) ![#85DACA](https://img.shields.io/badge/-%2385DACA?style=flat&logo=none) ![#81266D](https://img.shields.io/badge/-%2381266D?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-05 10:03:32
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(39, 96%, 43%)  |  rgb(214, 141, 4)  | #D68D04 |178 |
| 2 | hsl(316, 57%, 55%) | rgb(205, 74, 170)  | #CD4AAA |169 |
| 3 | hsl(100, 43%, 50%) | rgb(109, 182, 72)  | #6DB648 |113 |
| 4 | hsl(207, 54%, 37%) |  rgb(43, 99, 145)  | #2B6391 | 67 |
| 5 | hsl(131, 62%, 42%) |  rgb(40, 173, 65)  | #28AD41 | 71 |
| 6 | hsl(170, 58%, 42%) | rgb(44, 169, 148)  | #2CA994 | 73 |
| 7 | hsl(169, 54%, 69%) | rgb(133, 218, 202) | #85DACA |152 |
| 8 | hsl(313, 54%, 33%) | rgb(129, 38, 109)  | #81266D |132 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(39, 96%, 43%),rgb(214, 141, 4),178
hsl(316, 57%, 55%),rgb(205, 74, 170),169
hsl(100, 43%, 50%),rgb(109, 182, 72),113
hsl(207, 54%, 37%),rgb(43, 99, 145),67
hsl(131, 62%, 42%),rgb(40, 173, 65),71
hsl(170, 58%, 42%),rgb(44, 169, 148),73
hsl(169, 54%, 69%),rgb(133, 218, 202),152
hsl(313, 54%, 33%),rgb(129, 38, 109),132

Generated: 2026-07-05 10:03:32
```
