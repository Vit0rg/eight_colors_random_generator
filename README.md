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

![#221BB5](https://img.shields.io/badge/-%23221BB5?style=flat&logo=none) ![#43E9D0](https://img.shields.io/badge/-%2343E9D0?style=flat&logo=none) ![#B28A23](https://img.shields.io/badge/-%23B28A23?style=flat&logo=none) ![#68AE27](https://img.shields.io/badge/-%2368AE27?style=flat&logo=none) ![#356696](https://img.shields.io/badge/-%23356696?style=flat&logo=none) ![#DFD514](https://img.shields.io/badge/-%23DFD514?style=flat&logo=none) ![#7D2531](https://img.shields.io/badge/-%237D2531?style=flat&logo=none) ![#9BE259](https://img.shields.io/badge/-%239BE259?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-28 17:18:49
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(243, 74%, 41%) |  rgb(34, 27, 181)  | #221BB5 | 62 |
| 2 | hsl(171, 79%, 59%) | rgb(67, 233, 208)  | #43E9D0 | 86 |
| 3 | hsl(43, 67%, 42%)  | rgb(178, 138, 35)  | #B28A23 |143 |
| 4 | hsl(91, 63%, 42%)  | rgb(104, 174, 39)  | #68AE27 |107 |
| 5 | hsl(210, 48%, 40%) | rgb(53, 102, 150)  | #356696 | 67 |
| 6 | hsl(57, 83%, 48%)  | rgb(223, 213, 20)  | #DFD514 |184 |
| 7 | hsl(352, 54%, 32%) |  rgb(125, 37, 49)  | #7D2531 | 95 |
| 8 | hsl(91, 71%, 62%)  | rgb(155, 226, 89)  | #9BE259 |150 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(243, 74%, 41%),rgb(34, 27, 181),62
hsl(171, 79%, 59%),rgb(67, 233, 208),86
hsl(43, 67%, 42%),rgb(178, 138, 35),143
hsl(91, 63%, 42%),rgb(104, 174, 39),107
hsl(210, 48%, 40%),rgb(53, 102, 150),67
hsl(57, 83%, 48%),rgb(223, 213, 20),184
hsl(352, 54%, 32%),rgb(125, 37, 49),95
hsl(91, 71%, 62%),rgb(155, 226, 89),150

Generated: 2026-07-28 17:18:49
```
