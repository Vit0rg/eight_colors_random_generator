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

![#B75C38](https://img.shields.io/badge/-%23B75C38?style=flat&logo=none) ![#82CEAE](https://img.shields.io/badge/-%2382CEAE?style=flat&logo=none) ![#363795](https://img.shields.io/badge/-%23363795?style=flat&logo=none) ![#794C24](https://img.shields.io/badge/-%23794C24?style=flat&logo=none) ![#9026A5](https://img.shields.io/badge/-%239026A5?style=flat&logo=none) ![#62D4B9](https://img.shields.io/badge/-%2362D4B9?style=flat&logo=none) ![#AEC709](https://img.shields.io/badge/-%23AEC709?style=flat&logo=none) ![#85A5CA](https://img.shields.io/badge/-%2385A5CA?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-22 19:18:28
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(17, 53%, 47%)  |  rgb(183, 92, 56)  | #B75C38 |173 |
| 2 | hsl(155, 44%, 66%) | rgb(130, 206, 174) | #82CEAE |151 |
| 3 | hsl(239, 47%, 40%) |  rgb(54, 55, 149)  | #363795 | 61 |
| 4 | hsl(28, 54%, 31%)  |  rgb(121, 76, 36)  | #794C24 | 95 |
| 5 | hsl(290, 62%, 40%) | rgb(144, 38, 165)  | #9026A5 |133 |
| 6 | hsl(166, 57%, 61%) | rgb(98, 212, 185)  | #62D4B9 |116 |
| 7 | hsl(68, 91%, 41%)  |  rgb(174, 199, 9)  | #AEC709 |148 |
| 8 | hsl(212, 40%, 66%) | rgb(133, 165, 202) | #85A5CA |146 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(17, 53%, 47%),rgb(183, 92, 56),173
hsl(155, 44%, 66%),rgb(130, 206, 174),151
hsl(239, 47%, 40%),rgb(54, 55, 149),61
hsl(28, 54%, 31%),rgb(121, 76, 36),95
hsl(290, 62%, 40%),rgb(144, 38, 165),133
hsl(166, 57%, 61%),rgb(98, 212, 185),116
hsl(68, 91%, 41%),rgb(174, 199, 9),148
hsl(212, 40%, 66%),rgb(133, 165, 202),146

Generated: 2026-06-22 19:18:28
```
