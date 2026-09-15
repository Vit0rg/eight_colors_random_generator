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

![#F753B8](https://img.shields.io/badge/-%23F753B8?style=flat&logo=none) ![#892D33](https://img.shields.io/badge/-%23892D33?style=flat&logo=none) ![#306D8C](https://img.shields.io/badge/-%23306D8C?style=flat&logo=none) ![#0AF43D](https://img.shields.io/badge/-%230AF43D?style=flat&logo=none) ![#982723](https://img.shields.io/badge/-%23982723?style=flat&logo=none) ![#58B7D9](https://img.shields.io/badge/-%2358B7D9?style=flat&logo=none) ![#3362C1](https://img.shields.io/badge/-%233362C1?style=flat&logo=none) ![#3A64BF](https://img.shields.io/badge/-%233A64BF?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-15 02:32:14
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(323, 92%, 65%) | rgb(247, 83, 184)  | #F753B8 |212 |
| 2 | hsl(356, 50%, 36%) |  rgb(137, 45, 51)  | #892D33 |131 |
| 3 | hsl(200, 49%, 37%) | rgb(48, 109, 140)  | #306D8C | 67 |
| 4 | hsl(133, 92%, 50%) |  rgb(10, 244, 61)  | #0AF43D | 47 |
| 5 |  hsl(2, 62%, 37%)  |  rgb(152, 39, 35)  | #982723 |131 |
| 6 | hsl(196, 63%, 60%) | rgb(88, 183, 217)  | #58B7D9 |116 |
| 7 | hsl(220, 58%, 48%) |  rgb(51, 98, 193)  | #3362C1 | 68 |
| 8 | hsl(221, 53%, 49%) | rgb(58, 100, 191)  | #3A64BF | 68 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(323, 92%, 65%),rgb(247, 83, 184),212
hsl(356, 50%, 36%),rgb(137, 45, 51),131
hsl(200, 49%, 37%),rgb(48, 109, 140),67
hsl(133, 92%, 50%),rgb(10, 244, 61),47
hsl(2, 62%, 37%),rgb(152, 39, 35),131
hsl(196, 63%, 60%),rgb(88, 183, 217),116
hsl(220, 58%, 48%),rgb(51, 98, 193),68
hsl(221, 53%, 49%),rgb(58, 100, 191),68

Generated: 2026-09-15 02:32:14
```
