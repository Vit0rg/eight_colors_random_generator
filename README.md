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

![#DF010F](https://img.shields.io/badge/-%23DF010F?style=flat&logo=none) ![#5FDEFA](https://img.shields.io/badge/-%235FDEFA?style=flat&logo=none) ![#5CF491](https://img.shields.io/badge/-%235CF491?style=flat&logo=none) ![#B44AE2](https://img.shields.io/badge/-%23B44AE2?style=flat&logo=none) ![#00EAB7](https://img.shields.io/badge/-%2300EAB7?style=flat&logo=none) ![#43F44B](https://img.shields.io/badge/-%2343F44B?style=flat&logo=none) ![#27B30E](https://img.shields.io/badge/-%2327B30E?style=flat&logo=none) ![#2E93C6](https://img.shields.io/badge/-%232E93C6?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-19 11:58:52
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(356, 99%, 44%) |  rgb(223, 1, 15)   | #DF010F |160 |
| 2 | hsl(191, 95%, 68%) | rgb(95, 222, 250)  | #5FDEFA |117 |
| 3 | hsl(141, 88%, 66%) | rgb(92, 244, 145)  | #5CF491 |121 |
| 4 | hsl(282, 73%, 59%) | rgb(180, 74, 226)  | #B44AE2 |170 |
| 5 |hsl(167, 100%, 46%) |  rgb(0, 234, 183)  | #00EAB7 | 50 |
| 6 | hsl(123, 89%, 61%) |  rgb(67, 244, 75)  | #43F44B | 83 |
| 7 | hsl(111, 85%, 38%) |  rgb(39, 179, 14)  | #27B30E | 70 |
| 8 | hsl(200, 62%, 48%) | rgb(46, 147, 198)  | #2E93C6 | 74 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(356, 99%, 44%),rgb(223, 1, 15),160
hsl(191, 95%, 68%),rgb(95, 222, 250),117
hsl(141, 88%, 66%),rgb(92, 244, 145),121
hsl(282, 73%, 59%),rgb(180, 74, 226),170
hsl(167, 100%, 46%),rgb(0, 234, 183),50
hsl(123, 89%, 61%),rgb(67, 244, 75),83
hsl(111, 85%, 38%),rgb(39, 179, 14),70
hsl(200, 62%, 48%),rgb(46, 147, 198),74

Generated: 2026-06-19 11:58:52
```
