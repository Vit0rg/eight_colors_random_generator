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

![#C920D9](https://img.shields.io/badge/-%23C920D9?style=flat&logo=none) ![#EA38A6](https://img.shields.io/badge/-%23EA38A6?style=flat&logo=none) ![#811753](https://img.shields.io/badge/-%23811753?style=flat&logo=none) ![#3B63B8](https://img.shields.io/badge/-%233B63B8?style=flat&logo=none) ![#2D6B6A](https://img.shields.io/badge/-%232D6B6A?style=flat&logo=none) ![#68F1A2](https://img.shields.io/badge/-%2368F1A2?style=flat&logo=none) ![#2941C5](https://img.shields.io/badge/-%232941C5?style=flat&logo=none) ![#AF5DF2](https://img.shields.io/badge/-%23AF5DF2?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-11 01:23:08
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(295, 74%, 49%) | rgb(201, 32, 217)  | #C920D9 |170 |
| 2 | hsl(323, 81%, 57%) | rgb(234, 56, 166)  | #EA38A6 |205 |
| 3 | hsl(326, 69%, 30%) |  rgb(129, 23, 83)  | #811753 |126 |
| 4 | hsl(221, 51%, 48%) |  rgb(59, 99, 184)  | #3B63B8 | 68 |
| 5 | hsl(179, 40%, 30%) | rgb(45, 107, 106)  | #2D6B6A | 66 |
| 6 | hsl(145, 84%, 68%) | rgb(104, 241, 162) | #68F1A2 |121 |
| 7 | hsl(231, 65%, 47%) |  rgb(41, 65, 197)  | #2941C5 | 62 |
| 8 | hsl(273, 86%, 66%) | rgb(175, 93, 242)  | #AF5DF2 |141 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(295, 74%, 49%),rgb(201, 32, 217),170
hsl(323, 81%, 57%),rgb(234, 56, 166),205
hsl(326, 69%, 30%),rgb(129, 23, 83),126
hsl(221, 51%, 48%),rgb(59, 99, 184),68
hsl(179, 40%, 30%),rgb(45, 107, 106),66
hsl(145, 84%, 68%),rgb(104, 241, 162),121
hsl(231, 65%, 47%),rgb(41, 65, 197),62
hsl(273, 86%, 66%),rgb(175, 93, 242),141

Generated: 2026-04-11 01:23:08
```
