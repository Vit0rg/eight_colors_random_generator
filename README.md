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

![#4FFCD1](https://img.shields.io/badge/-%234FFCD1?style=flat&logo=none) ![#9AA337](https://img.shields.io/badge/-%239AA337?style=flat&logo=none) ![#FB9621](https://img.shields.io/badge/-%23FB9621?style=flat&logo=none) ![#7C40A5](https://img.shields.io/badge/-%237C40A5?style=flat&logo=none) ![#D40621](https://img.shields.io/badge/-%23D40621?style=flat&logo=none) ![#489DD9](https://img.shields.io/badge/-%23489DD9?style=flat&logo=none) ![#16A68B](https://img.shields.io/badge/-%2316A68B?style=flat&logo=none) ![#6C31E1](https://img.shields.io/badge/-%236C31E1?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-29 09:57:55
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(165, 97%, 65%) | rgb(79, 252, 209)  | #4FFCD1 |122 |
| 2 | hsl(65, 49%, 43%)  | rgb(154, 163, 55)  | #9AA337 |143 |
| 3 | hsl(32, 97%, 56%)  | rgb(251, 150, 33)  | #FB9621 |215 |
| 4 | hsl(276, 44%, 45%) | rgb(124, 64, 165)  | #7C40A5 | 97 |
| 5 | hsl(352, 94%, 43%) |  rgb(212, 6, 33)   | #D40621 |161 |
| 6 | hsl(205, 66%, 57%) | rgb(72, 157, 217)  | #489DD9 | 74 |
| 7 | hsl(169, 76%, 37%) | rgb(22, 166, 139)  | #16A68B | 37 |
| 8 | hsl(260, 75%, 54%) | rgb(108, 49, 225)  | #6C31E1 | 98 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(165, 97%, 65%),rgb(79, 252, 209),122
hsl(65, 49%, 43%),rgb(154, 163, 55),143
hsl(32, 97%, 56%),rgb(251, 150, 33),215
hsl(276, 44%, 45%),rgb(124, 64, 165),97
hsl(352, 94%, 43%),rgb(212, 6, 33),161
hsl(205, 66%, 57%),rgb(72, 157, 217),74
hsl(169, 76%, 37%),rgb(22, 166, 139),37
hsl(260, 75%, 54%),rgb(108, 49, 225),98

Generated: 2026-04-29 09:57:55
```
