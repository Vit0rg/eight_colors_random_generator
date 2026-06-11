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

![#8742FF](https://img.shields.io/badge/-%238742FF?style=flat&logo=none) ![#439D74](https://img.shields.io/badge/-%23439D74?style=flat&logo=none) ![#139E85](https://img.shields.io/badge/-%23139E85?style=flat&logo=none) ![#9C6FE6](https://img.shields.io/badge/-%239C6FE6?style=flat&logo=none) ![#AC823E](https://img.shields.io/badge/-%23AC823E?style=flat&logo=none) ![#7BCFBA](https://img.shields.io/badge/-%237BCFBA?style=flat&logo=none) ![#4EFDF4](https://img.shields.io/badge/-%234EFDF4?style=flat&logo=none) ![#58CAAD](https://img.shields.io/badge/-%2358CAAD?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-11 12:03:01
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 |hsl(262, 100%, 63%) | rgb(135, 66, 255)  | #8742FF |135 |
| 2 | hsl(153, 40%, 44%) | rgb(67, 157, 116)  | #439D74 | 72 |
| 3 | hsl(169, 78%, 35%) | rgb(19, 158, 133)  | #139E85 | 37 |
| 4 | hsl(263, 71%, 67%) | rgb(156, 111, 230) | #9C6FE6 |140 |
| 5 | hsl(37, 47%, 46%)  | rgb(172, 130, 62)  | #AC823E |143 |
| 6 | hsl(165, 47%, 65%) | rgb(123, 207, 186) | #7BCFBA |116 |
| 7 | hsl(177, 98%, 65%) | rgb(78, 253, 244)  | #4EFDF4 |123 |
| 8 | hsl(165, 52%, 57%) | rgb(88, 202, 173)  | #58CAAD |115 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(262, 100%, 63%),rgb(135, 66, 255),135
hsl(153, 40%, 44%),rgb(67, 157, 116),72
hsl(169, 78%, 35%),rgb(19, 158, 133),37
hsl(263, 71%, 67%),rgb(156, 111, 230),140
hsl(37, 47%, 46%),rgb(172, 130, 62),143
hsl(165, 47%, 65%),rgb(123, 207, 186),116
hsl(177, 98%, 65%),rgb(78, 253, 244),123
hsl(165, 52%, 57%),rgb(88, 202, 173),115

Generated: 2026-06-11 12:03:01
```
