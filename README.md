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

![#FF3B05](https://img.shields.io/badge/-%23FF3B05?style=flat&logo=none) ![#66A4CC](https://img.shields.io/badge/-%2366A4CC?style=flat&logo=none) ![#84291A](https://img.shields.io/badge/-%2384291A?style=flat&logo=none) ![#7BD3DF](https://img.shields.io/badge/-%237BD3DF?style=flat&logo=none) ![#D39354](https://img.shields.io/badge/-%23D39354?style=flat&logo=none) ![#D08FC0](https://img.shields.io/badge/-%23D08FC0?style=flat&logo=none) ![#61A1F4](https://img.shields.io/badge/-%2361A1F4?style=flat&logo=none) ![#BBD87D](https://img.shields.io/badge/-%23BBD87D?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-27 18:38:20
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(13, 100%, 51%) |  rgb(255, 59, 5)   | #FF3B05 |202 |
| 2 | hsl(203, 50%, 60%) | rgb(102, 164, 204) | #66A4CC |110 |
| 3 |  hsl(9, 67%, 31%)  |  rgb(132, 41, 26)  | #84291A |131 |
| 4 | hsl(187, 61%, 68%) | rgb(123, 211, 223) | #7BD3DF |116 |
| 5 | hsl(30, 59%, 58%)  | rgb(211, 147, 84)  | #D39354 |180 |
| 6 | hsl(315, 41%, 69%) | rgb(208, 143, 192) | #D08FC0 |182 |
| 7 | hsl(214, 87%, 67%) | rgb(97, 161, 244)  | #61A1F4 |111 |
| 8 | hsl(79, 54%, 67%)  | rgb(187, 216, 125) | #BBD87D |186 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(13, 100%, 51%),rgb(255, 59, 5),202
hsl(203, 50%, 60%),rgb(102, 164, 204),110
hsl(9, 67%, 31%),rgb(132, 41, 26),131
hsl(187, 61%, 68%),rgb(123, 211, 223),116
hsl(30, 59%, 58%),rgb(211, 147, 84),180
hsl(315, 41%, 69%),rgb(208, 143, 192),182
hsl(214, 87%, 67%),rgb(97, 161, 244),111
hsl(79, 54%, 67%),rgb(187, 216, 125),186

Generated: 2026-08-27 18:38:20
```
