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

![#C05824](https://img.shields.io/badge/-%23C05824?style=flat&logo=none) ![#4AC478](https://img.shields.io/badge/-%234AC478?style=flat&logo=none) ![#423399](https://img.shields.io/badge/-%23423399?style=flat&logo=none) ![#45F287](https://img.shields.io/badge/-%2345F287?style=flat&logo=none) ![#3B0FCB](https://img.shields.io/badge/-%233B0FCB?style=flat&logo=none) ![#3C869E](https://img.shields.io/badge/-%233C869E?style=flat&logo=none) ![#FF4CE1](https://img.shields.io/badge/-%23FF4CE1?style=flat&logo=none) ![#A22F85](https://img.shields.io/badge/-%23A22F85?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-29 01:45:34
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(20, 68%, 45%)  |  rgb(192, 88, 36)  | #C05824 |173 |
| 2 | hsl(143, 51%, 53%) | rgb(74, 196, 120)  | #4AC478 | 78 |
| 3 | hsl(249, 50%, 40%) |  rgb(66, 51, 153)  | #423399 | 61 |
| 4 | hsl(143, 87%, 61%) | rgb(69, 242, 135)  | #45F287 | 85 |
| 5 | hsl(254, 86%, 43%) |  rgb(59, 15, 203)  | #3B0FCB | 56 |
| 6 | hsl(195, 45%, 43%) | rgb(60, 134, 158)  | #3C869E | 73 |
| 7 |hsl(310, 100%, 65%) | rgb(255, 76, 225)  | #FF4CE1 |206 |
| 8 | hsl(315, 55%, 41%) | rgb(162, 47, 133)  | #A22F85 |133 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(20, 68%, 45%),rgb(192, 88, 36),173
hsl(143, 51%, 53%),rgb(74, 196, 120),78
hsl(249, 50%, 40%),rgb(66, 51, 153),61
hsl(143, 87%, 61%),rgb(69, 242, 135),85
hsl(254, 86%, 43%),rgb(59, 15, 203),56
hsl(195, 45%, 43%),rgb(60, 134, 158),73
hsl(310, 100%, 65%),rgb(255, 76, 225),206
hsl(315, 55%, 41%),rgb(162, 47, 133),133

Generated: 2026-07-29 01:45:34
```
