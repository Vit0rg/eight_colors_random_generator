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

![#85CF94](https://img.shields.io/badge/-%2385CF94?style=flat&logo=none) ![#5FF1C5](https://img.shields.io/badge/-%235FF1C5?style=flat&logo=none) ![#C58700](https://img.shields.io/badge/-%23C58700?style=flat&logo=none) ![#89D194](https://img.shields.io/badge/-%2389D194?style=flat&logo=none) ![#CE68C0](https://img.shields.io/badge/-%23CE68C0?style=flat&logo=none) ![#C230E2](https://img.shields.io/badge/-%23C230E2?style=flat&logo=none) ![#D3A059](https://img.shields.io/badge/-%23D3A059?style=flat&logo=none) ![#CE63BF](https://img.shields.io/badge/-%23CE63BF?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-01 19:00:35
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(132, 44%, 67%) | rgb(133, 207, 148) | #85CF94 |151 |
| 2 | hsl(162, 84%, 66%) | rgb(95, 241, 197)  | #5FF1C5 |122 |
| 3 | hsl(41, 99%, 39%)  |  rgb(197, 135, 0)  | #C58700 |178 |
| 4 | hsl(129, 44%, 68%) | rgb(137, 209, 148) | #89D194 |151 |
| 5 | hsl(308, 51%, 61%) | rgb(206, 104, 192) | #CE68C0 |176 |
| 6 | hsl(289, 76%, 54%) | rgb(194, 48, 226)  | #C230E2 |170 |
| 7 | hsl(35, 58%, 59%)  | rgb(211, 160, 89)  | #D3A059 |180 |
| 8 | hsl(308, 52%, 60%) | rgb(206, 99, 191)  | #CE63BF |176 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(132, 44%, 67%),rgb(133, 207, 148),151
hsl(162, 84%, 66%),rgb(95, 241, 197),122
hsl(41, 99%, 39%),rgb(197, 135, 0),178
hsl(129, 44%, 68%),rgb(137, 209, 148),151
hsl(308, 51%, 61%),rgb(206, 104, 192),176
hsl(289, 76%, 54%),rgb(194, 48, 226),170
hsl(35, 58%, 59%),rgb(211, 160, 89),180
hsl(308, 52%, 60%),rgb(206, 99, 191),176

Generated: 2026-09-01 19:00:35
```
