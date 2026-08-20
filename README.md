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

![#0E2EE6](https://img.shields.io/badge/-%230E2EE6?style=flat&logo=none) ![#9D1DA4](https://img.shields.io/badge/-%239D1DA4?style=flat&logo=none) ![#6CF749](https://img.shields.io/badge/-%236CF749?style=flat&logo=none) ![#8C0AFF](https://img.shields.io/badge/-%238C0AFF?style=flat&logo=none) ![#F726B5](https://img.shields.io/badge/-%23F726B5?style=flat&logo=none) ![#4131F6](https://img.shields.io/badge/-%234131F6?style=flat&logo=none) ![#7C2582](https://img.shields.io/badge/-%237C2582?style=flat&logo=none) ![#D1B593](https://img.shields.io/badge/-%23D1B593?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-20 08:26:13
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(231, 88%, 48%) |  rgb(14, 46, 230)  | #0E2EE6 | 26 |
| 2 | hsl(297, 70%, 38%) | rgb(157, 29, 164)  | #9D1DA4 |133 |
| 3 | hsl(108, 92%, 63%) | rgb(108, 247, 73)  | #6CF749 |119 |
| 4 |hsl(272, 100%, 52%) | rgb(140, 10, 255)  | #8C0AFF |129 |
| 5 | hsl(319, 93%, 56%) | rgb(247, 38, 181)  | #F726B5 |206 |
| 6 | hsl(245, 92%, 58%) |  rgb(65, 49, 246)  | #4131F6 | 63 |
| 7 | hsl(296, 55%, 33%) | rgb(124, 37, 130)  | #7C2582 | 97 |
| 8 | hsl(33, 40%, 70%)  | rgb(209, 181, 147) | #D1B593 |187 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(231, 88%, 48%),rgb(14, 46, 230),26
hsl(297, 70%, 38%),rgb(157, 29, 164),133
hsl(108, 92%, 63%),rgb(108, 247, 73),119
hsl(272, 100%, 52%),rgb(140, 10, 255),129
hsl(319, 93%, 56%),rgb(247, 38, 181),206
hsl(245, 92%, 58%),rgb(65, 49, 246),63
hsl(296, 55%, 33%),rgb(124, 37, 130),97
hsl(33, 40%, 70%),rgb(209, 181, 147),187

Generated: 2026-08-20 08:26:13
```
