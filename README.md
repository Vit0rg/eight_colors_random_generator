# Eight Colors Random Generator

Generates 8 random colors with HSL, RGB, Hex, and ANSI values every 4 hours via GitHub Actions.

## How It Works

A shell script (`generate_colors.sh`) generates 8 random colors by:

1. Picking random HSL values (H: 0–359, S: 40–100%, L: 30–70%)
2. Converting HSL → RGB using `awk`
3. Calculating the closest ANSI 256 color code

## Output

Each run creates a file named `MM_DD_YYYY_HH_MM_colors` containing:

- **Table** — centered columns showing Num, HSL, RGB, Hex, and ANSI
- **CSV** — machine-readable list of HSL, RGB, and ANSI values

The README is automatically updated with the latest palette on each run.

## Usage

### Manual

```bash
bash generate_colors.sh
```

### Automatic (GitHub Actions)

The workflow runs every 4 hours and commits the output file to the repository.

To trigger manually: **Actions → Generate Eight Colors → Run workflow**.

## Files

| File | Description |
|---|---|
| `generate_colors.sh` | Main script |
| `*_*_*_*_*_colors` | Generated color files |
| `.github/workflows/generate_colors.yml` | CI workflow |






## Latest Palette

![#E2695E](https://img.shields.io/badge/-%23E2695E?style=flat&logo=none) ![#20A6A1](https://img.shields.io/badge/-%2320A6A1?style=flat&logo=none) ![#11049F](https://img.shields.io/badge/-%2311049F?style=flat&logo=none) ![#57B3CF](https://img.shields.io/badge/-%2357B3CF?style=flat&logo=none) ![#7D2A56](https://img.shields.io/badge/-%237D2A56?style=flat&logo=none) ![#138F57](https://img.shields.io/badge/-%23138F57?style=flat&logo=none) ![#3B04E0](https://img.shields.io/badge/-%233B04E0?style=flat&logo=none) ![#249E1E](https://img.shields.io/badge/-%23249E1E?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-10 03:20:55
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 |  hsl(5, 70%, 63%)  | rgb(226, 105, 94)  | #E2695E |174 |
| 2 | hsl(178, 67%, 39%) | rgb(32, 166, 161)  | #20A6A1 | 73 |
| 3 | hsl(245, 95%, 32%) |  rgb(17, 4, 159)   | #11049F | 19 |
| 4 | hsl(194, 56%, 58%) | rgb(87, 179, 207)  | #57B3CF |110 |
| 5 | hsl(328, 49%, 33%) |  rgb(125, 42, 86)  | #7D2A56 | 96 |
| 6 | hsl(153, 76%, 32%) |  rgb(19, 143, 87)  | #138F57 | 36 |
| 7 | hsl(255, 96%, 45%) |  rgb(59, 4, 224)   | #3B04E0 | 56 |
| 8 | hsl(117, 68%, 37%) |  rgb(36, 158, 30)  | #249E1E | 71 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(5, 70%, 63%),rgb(226, 105, 94),174
hsl(178, 67%, 39%),rgb(32, 166, 161),73
hsl(245, 95%, 32%),rgb(17, 4, 159),19
hsl(194, 56%, 58%),rgb(87, 179, 207),110
hsl(328, 49%, 33%),rgb(125, 42, 86),96
hsl(153, 76%, 32%),rgb(19, 143, 87),36
hsl(255, 96%, 45%),rgb(59, 4, 224),56
hsl(117, 68%, 37%),rgb(36, 158, 30),71

Generated: 2026-04-10 03:20:55
```
