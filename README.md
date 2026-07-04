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

![#68C5F7](https://img.shields.io/badge/-%2368C5F7?style=flat&logo=none) ![#961BA6](https://img.shields.io/badge/-%23961BA6?style=flat&logo=none) ![#58B8C4](https://img.shields.io/badge/-%2358B8C4?style=flat&logo=none) ![#6B2D4B](https://img.shields.io/badge/-%236B2D4B?style=flat&logo=none) ![#0681DE](https://img.shields.io/badge/-%230681DE?style=flat&logo=none) ![#09DC25](https://img.shields.io/badge/-%2309DC25?style=flat&logo=none) ![#521BAB](https://img.shields.io/badge/-%23521BAB?style=flat&logo=none) ![#881F36](https://img.shields.io/badge/-%23881F36?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-04 01:59:55
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(201, 90%, 69%) | rgb(104, 197, 247) | #68C5F7 |117 |
| 2 | hsl(293, 72%, 38%) | rgb(150, 27, 166)  | #961BA6 |133 |
| 3 | hsl(187, 48%, 56%) | rgb(88, 184, 196)  | #58B8C4 |116 |
| 4 | hsl(331, 40%, 30%) |  rgb(107, 45, 75)  | #6B2D4B | 95 |
| 5 | hsl(206, 94%, 45%) |  rgb(6, 129, 222)  | #0681DE | 38 |
| 6 | hsl(128, 92%, 45%) |  rgb(9, 220, 37)   | #09DC25 | 41 |
| 7 | hsl(263, 72%, 39%) |  rgb(82, 27, 171)  | #521BAB | 97 |
| 8 | hsl(347, 62%, 33%) |  rgb(136, 31, 54)  | #881F36 |131 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(201, 90%, 69%),rgb(104, 197, 247),117
hsl(293, 72%, 38%),rgb(150, 27, 166),133
hsl(187, 48%, 56%),rgb(88, 184, 196),116
hsl(331, 40%, 30%),rgb(107, 45, 75),95
hsl(206, 94%, 45%),rgb(6, 129, 222),38
hsl(128, 92%, 45%),rgb(9, 220, 37),41
hsl(263, 72%, 39%),rgb(82, 27, 171),97
hsl(347, 62%, 33%),rgb(136, 31, 54),131

Generated: 2026-07-04 01:59:55
```
