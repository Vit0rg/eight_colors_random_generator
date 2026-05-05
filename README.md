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

![#FA2360](https://img.shields.io/badge/-%23FA2360?style=flat&logo=none) ![#159D96](https://img.shields.io/badge/-%23159D96?style=flat&logo=none) ![#F016F7](https://img.shields.io/badge/-%23F016F7?style=flat&logo=none) ![#4E098F](https://img.shields.io/badge/-%234E098F?style=flat&logo=none) ![#88DE72](https://img.shields.io/badge/-%2388DE72?style=flat&logo=none) ![#D06F43](https://img.shields.io/badge/-%23D06F43?style=flat&logo=none) ![#BDA13B](https://img.shields.io/badge/-%23BDA13B?style=flat&logo=none) ![#549031](https://img.shields.io/badge/-%23549031?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-05 17:14:45
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(343, 96%, 56%) |  rgb(250, 35, 96)  | #FA2360 |204 |
| 2 | hsl(177, 76%, 35%) | rgb(21, 157, 150)  | #159D96 | 37 |
| 3 | hsl(298, 94%, 53%) | rgb(240, 22, 247)  | #F016F7 |201 |
| 4 | hsl(271, 87%, 30%) |  rgb(78, 9, 143)   | #4E098F | 91 |
| 5 | hsl(108, 62%, 66%) | rgb(136, 222, 114) | #88DE72 |150 |
| 6 | hsl(19, 60%, 54%)  | rgb(208, 111, 67)  | #D06F43 |173 |
| 7 | hsl(47, 52%, 49%)  | rgb(189, 161, 59)  | #BDA13B |179 |
| 8 | hsl(98, 49%, 38%)  |  rgb(84, 144, 49)  | #549031 |107 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(343, 96%, 56%),rgb(250, 35, 96),204
hsl(177, 76%, 35%),rgb(21, 157, 150),37
hsl(298, 94%, 53%),rgb(240, 22, 247),201
hsl(271, 87%, 30%),rgb(78, 9, 143),91
hsl(108, 62%, 66%),rgb(136, 222, 114),150
hsl(19, 60%, 54%),rgb(208, 111, 67),173
hsl(47, 52%, 49%),rgb(189, 161, 59),179
hsl(98, 49%, 38%),rgb(84, 144, 49),107

Generated: 2026-05-05 17:14:45
```
