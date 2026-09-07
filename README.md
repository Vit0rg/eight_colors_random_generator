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

![#2790EC](https://img.shields.io/badge/-%232790EC?style=flat&logo=none) ![#3877B2](https://img.shields.io/badge/-%233877B2?style=flat&logo=none) ![#992832](https://img.shields.io/badge/-%23992832?style=flat&logo=none) ![#31A497](https://img.shields.io/badge/-%2331A497?style=flat&logo=none) ![#9E2844](https://img.shields.io/badge/-%239E2844?style=flat&logo=none) ![#A817C8](https://img.shields.io/badge/-%23A817C8?style=flat&logo=none) ![#AA9311](https://img.shields.io/badge/-%23AA9311?style=flat&logo=none) ![#24C67A](https://img.shields.io/badge/-%2324C67A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-07 13:48:27
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(208, 84%, 54%) | rgb(39, 144, 236)  | #2790EC | 75 |
| 2 | hsl(209, 52%, 46%) | rgb(56, 119, 178)  | #3877B2 | 67 |
| 3 | hsl(355, 58%, 38%) |  rgb(153, 40, 50)  | #992832 |131 |
| 4 | hsl(173, 54%, 42%) | rgb(49, 164, 151)  | #31A497 | 73 |
| 5 | hsl(346, 59%, 39%) |  rgb(158, 40, 68)  | #9E2844 |131 |
| 6 | hsl(289, 79%, 44%) | rgb(168, 23, 200)  | #A817C8 |128 |
| 7 | hsl(51, 81%, 37%)  | rgb(170, 147, 17)  | #AA9311 |142 |
| 8 | hsl(152, 69%, 46%) | rgb(36, 198, 122)  | #24C67A | 78 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(208, 84%, 54%),rgb(39, 144, 236),75
hsl(209, 52%, 46%),rgb(56, 119, 178),67
hsl(355, 58%, 38%),rgb(153, 40, 50),131
hsl(173, 54%, 42%),rgb(49, 164, 151),73
hsl(346, 59%, 39%),rgb(158, 40, 68),131
hsl(289, 79%, 44%),rgb(168, 23, 200),128
hsl(51, 81%, 37%),rgb(170, 147, 17),142
hsl(152, 69%, 46%),rgb(36, 198, 122),78

Generated: 2026-09-07 13:48:27
```
