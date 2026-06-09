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

![#8F225E](https://img.shields.io/badge/-%238F225E?style=flat&logo=none) ![#0FA793](https://img.shields.io/badge/-%230FA793?style=flat&logo=none) ![#951C8F](https://img.shields.io/badge/-%23951C8F?style=flat&logo=none) ![#5AE6A5](https://img.shields.io/badge/-%235AE6A5?style=flat&logo=none) ![#772170](https://img.shields.io/badge/-%23772170?style=flat&logo=none) ![#1119B0](https://img.shields.io/badge/-%231119B0?style=flat&logo=none) ![#188040](https://img.shields.io/badge/-%23188040?style=flat&logo=none) ![#B8E80C](https://img.shields.io/badge/-%23B8E80C?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-09 02:10:12
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(327, 61%, 35%) |  rgb(143, 34, 94)  | #8F225E |132 |
| 2 | hsl(172, 83%, 36%) | rgb(15, 167, 147)  | #0FA793 | 37 |
| 3 | hsl(303, 68%, 35%) | rgb(149, 28, 143)  | #951C8F |133 |
| 4 | hsl(152, 74%, 63%) | rgb(90, 230, 165)  | #5AE6A5 |115 |
| 5 | hsl(305, 56%, 30%) | rgb(119, 33, 112)  | #772170 | 96 |
| 6 | hsl(237, 82%, 38%) |  rgb(17, 25, 176)  | #1119B0 | 19 |
| 7 | hsl(143, 68%, 30%) |  rgb(24, 128, 64)  | #188040 | 35 |
| 8 | hsl(73, 90%, 48%)  | rgb(184, 232, 12)  | #B8E80C |190 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(327, 61%, 35%),rgb(143, 34, 94),132
hsl(172, 83%, 36%),rgb(15, 167, 147),37
hsl(303, 68%, 35%),rgb(149, 28, 143),133
hsl(152, 74%, 63%),rgb(90, 230, 165),115
hsl(305, 56%, 30%),rgb(119, 33, 112),96
hsl(237, 82%, 38%),rgb(17, 25, 176),19
hsl(143, 68%, 30%),rgb(24, 128, 64),35
hsl(73, 90%, 48%),rgb(184, 232, 12),190

Generated: 2026-06-09 02:10:12
```
