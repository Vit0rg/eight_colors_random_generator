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

![#66DE1B](https://img.shields.io/badge/-%2366DE1B?style=flat&logo=none) ![#5386CA](https://img.shields.io/badge/-%235386CA?style=flat&logo=none) ![#3FAB5C](https://img.shields.io/badge/-%233FAB5C?style=flat&logo=none) ![#28CC5C](https://img.shields.io/badge/-%2328CC5C?style=flat&logo=none) ![#63ED5E](https://img.shields.io/badge/-%2363ED5E?style=flat&logo=none) ![#1BBFE8](https://img.shields.io/badge/-%231BBFE8?style=flat&logo=none) ![#B97159](https://img.shields.io/badge/-%23B97159?style=flat&logo=none) ![#5A2974](https://img.shields.io/badge/-%235A2974?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-03 17:46:27
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(97, 78%, 49%)  | rgb(102, 222, 27)  | #66DE1B |113 |
| 2 | hsl(214, 53%, 56%) | rgb(83, 134, 202)  | #5386CA |110 |
| 3 | hsl(136, 46%, 46%) |  rgb(63, 171, 92)  | #3FAB5C | 72 |
| 4 | hsl(139, 67%, 48%) |  rgb(40, 204, 92)  | #28CC5C | 78 |
| 5 | hsl(118, 80%, 65%) |  rgb(99, 237, 94)  | #63ED5E |120 |
| 6 | hsl(192, 82%, 51%) | rgb(27, 191, 232)  | #1BBFE8 | 81 |
| 7 | hsl(15, 41%, 54%)  | rgb(185, 113, 89)  | #B97159 |174 |
| 8 | hsl(279, 48%, 31%) |  rgb(90, 41, 116)  | #5A2974 | 96 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(97, 78%, 49%),rgb(102, 222, 27),113
hsl(214, 53%, 56%),rgb(83, 134, 202),110
hsl(136, 46%, 46%),rgb(63, 171, 92),72
hsl(139, 67%, 48%),rgb(40, 204, 92),78
hsl(118, 80%, 65%),rgb(99, 237, 94),120
hsl(192, 82%, 51%),rgb(27, 191, 232),81
hsl(15, 41%, 54%),rgb(185, 113, 89),174
hsl(279, 48%, 31%),rgb(90, 41, 116),96

Generated: 2026-08-03 17:46:27
```
