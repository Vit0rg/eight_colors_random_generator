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

![#47B2B0](https://img.shields.io/badge/-%2347B2B0?style=flat&logo=none) ![#5A9E22](https://img.shields.io/badge/-%235A9E22?style=flat&logo=none) ![#2152D8](https://img.shields.io/badge/-%232152D8?style=flat&logo=none) ![#3B9125](https://img.shields.io/badge/-%233B9125?style=flat&logo=none) ![#20782C](https://img.shields.io/badge/-%2320782C?style=flat&logo=none) ![#BD6A37](https://img.shields.io/badge/-%23BD6A37?style=flat&logo=none) ![#A41352](https://img.shields.io/badge/-%23A41352?style=flat&logo=none) ![#5FCDB4](https://img.shields.io/badge/-%235FCDB4?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-19 01:50:12
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(179, 43%, 49%) | rgb(71, 178, 176)  | #47B2B0 | 73 |
| 2 | hsl(93, 64%, 38%)  |  rgb(90, 158, 34)  | #5A9E22 |107 |
| 3 | hsl(224, 73%, 49%) |  rgb(33, 82, 216)  | #2152D8 | 68 |
| 4 | hsl(108, 59%, 36%) |  rgb(59, 145, 37)  | #3B9125 | 71 |
| 5 | hsl(128, 58%, 30%) |  rgb(32, 120, 44)  | #20782C | 65 |
| 6 | hsl(23, 55%, 48%)  | rgb(189, 106, 55)  | #BD6A37 |173 |
| 7 | hsl(334, 79%, 36%) |  rgb(164, 19, 82)  | #A41352 |126 |
| 8 | hsl(166, 53%, 59%) | rgb(95, 205, 180)  | #5FCDB4 |116 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(179, 43%, 49%),rgb(71, 178, 176),73
hsl(93, 64%, 38%),rgb(90, 158, 34),107
hsl(224, 73%, 49%),rgb(33, 82, 216),68
hsl(108, 59%, 36%),rgb(59, 145, 37),71
hsl(128, 58%, 30%),rgb(32, 120, 44),65
hsl(23, 55%, 48%),rgb(189, 106, 55),173
hsl(334, 79%, 36%),rgb(164, 19, 82),126
hsl(166, 53%, 59%),rgb(95, 205, 180),116

Generated: 2026-04-19 01:50:12
```
