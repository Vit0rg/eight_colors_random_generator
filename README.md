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

![#E01EC6](https://img.shields.io/badge/-%23E01EC6?style=flat&logo=none) ![#E59466](https://img.shields.io/badge/-%23E59466?style=flat&logo=none) ![#D67FC5](https://img.shields.io/badge/-%23D67FC5?style=flat&logo=none) ![#B02AA0](https://img.shields.io/badge/-%23B02AA0?style=flat&logo=none) ![#D5716B](https://img.shields.io/badge/-%23D5716B?style=flat&logo=none) ![#44A6C4](https://img.shields.io/badge/-%2344A6C4?style=flat&logo=none) ![#D0C851](https://img.shields.io/badge/-%23D0C851?style=flat&logo=none) ![#6F3AE2](https://img.shields.io/badge/-%236F3AE2?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-27 05:50:49
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(308, 76%, 50%) | rgb(224, 30, 198)  | #E01EC6 |170 |
| 2 | hsl(22, 71%, 65%)  | rgb(229, 148, 102) | #E59466 |180 |
| 3 | hsl(312, 52%, 67%) | rgb(214, 127, 197) | #D67FC5 |176 |
| 4 | hsl(307, 61%, 43%) | rgb(176, 42, 160)  | #B02AA0 |133 |
| 5 |  hsl(3, 56%, 63%)  | rgb(213, 113, 107) | #D5716B |174 |
| 6 | hsl(194, 52%, 52%) | rgb(68, 166, 196)  | #44A6C4 | 74 |
| 7 | hsl(56, 58%, 57%)  | rgb(208, 200, 81)  | #D0C851 |186 |
| 8 | hsl(259, 75%, 56%) | rgb(111, 58, 226)  | #6F3AE2 | 98 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(308, 76%, 50%),rgb(224, 30, 198),170
hsl(22, 71%, 65%),rgb(229, 148, 102),180
hsl(312, 52%, 67%),rgb(214, 127, 197),176
hsl(307, 61%, 43%),rgb(176, 42, 160),133
hsl(3, 56%, 63%),rgb(213, 113, 107),174
hsl(194, 52%, 52%),rgb(68, 166, 196),74
hsl(56, 58%, 57%),rgb(208, 200, 81),186
hsl(259, 75%, 56%),rgb(111, 58, 226),98

Generated: 2026-08-27 05:50:49
```
