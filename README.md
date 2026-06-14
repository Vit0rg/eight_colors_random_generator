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

![#2C02D4](https://img.shields.io/badge/-%232C02D4?style=flat&logo=none) ![#7B592C](https://img.shields.io/badge/-%237B592C?style=flat&logo=none) ![#83A026](https://img.shields.io/badge/-%2383A026?style=flat&logo=none) ![#76ADD5](https://img.shields.io/badge/-%2376ADD5?style=flat&logo=none) ![#FFB223](https://img.shields.io/badge/-%23FFB223?style=flat&logo=none) ![#A2E221](https://img.shields.io/badge/-%23A2E221?style=flat&logo=none) ![#357C5A](https://img.shields.io/badge/-%23357C5A?style=flat&logo=none) ![#B53FAF](https://img.shields.io/badge/-%23B53FAF?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-14 17:09:18
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(252, 98%, 42%) |  rgb(44, 2, 212)   | #2C02D4 | 56 |
| 2 | hsl(34, 47%, 33%)  |  rgb(123, 89, 44)  | #7B592C |101 |
| 3 | hsl(74, 61%, 39%)  | rgb(131, 160, 38)  | #83A026 |143 |
| 4 | hsl(205, 53%, 65%) | rgb(118, 173, 213) | #76ADD5 |110 |
| 5 | hsl(39, 100%, 57%) | rgb(255, 178, 35)  | #FFB223 |215 |
| 6 | hsl(80, 77%, 51%)  | rgb(162, 226, 33)  | #A2E221 |149 |
| 7 | hsl(151, 40%, 35%) |  rgb(53, 124, 90)  | #357C5A | 66 |
| 8 | hsl(303, 48%, 48%) | rgb(181, 63, 175)  | #B53FAF |169 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(252, 98%, 42%),rgb(44, 2, 212),56
hsl(34, 47%, 33%),rgb(123, 89, 44),101
hsl(74, 61%, 39%),rgb(131, 160, 38),143
hsl(205, 53%, 65%),rgb(118, 173, 213),110
hsl(39, 100%, 57%),rgb(255, 178, 35),215
hsl(80, 77%, 51%),rgb(162, 226, 33),149
hsl(151, 40%, 35%),rgb(53, 124, 90),66
hsl(303, 48%, 48%),rgb(181, 63, 175),169

Generated: 2026-06-14 17:09:18
```
