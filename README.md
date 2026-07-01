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

![#F1C764](https://img.shields.io/badge/-%23F1C764?style=flat&logo=none) ![#63E263](https://img.shields.io/badge/-%2363E263?style=flat&logo=none) ![#BBD83B](https://img.shields.io/badge/-%23BBD83B?style=flat&logo=none) ![#4DCB7B](https://img.shields.io/badge/-%234DCB7B?style=flat&logo=none) ![#36879F](https://img.shields.io/badge/-%2336879F?style=flat&logo=none) ![#49B050](https://img.shields.io/badge/-%2349B050?style=flat&logo=none) ![#B13E81](https://img.shields.io/badge/-%23B13E81?style=flat&logo=none) ![#3F63CF](https://img.shields.io/badge/-%233F63CF?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-01 11:16:59
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(42, 84%, 67%)  | rgb(241, 199, 100) | #F1C764 |222 |
| 2 | hsl(120, 69%, 64%) |  rgb(99, 226, 99)  | #63E263 |114 |
| 3 | hsl(71, 67%, 54%)  | rgb(187, 216, 59)  | #BBD83B |185 |
| 4 | hsl(142, 55%, 55%) | rgb(77, 203, 123)  | #4DCB7B |114 |
| 5 | hsl(194, 49%, 42%) | rgb(54, 135, 159)  | #36879F | 73 |
| 6 | hsl(124, 41%, 49%) |  rgb(73, 176, 80)  | #49B050 | 72 |
| 7 | hsl(325, 48%, 47%) | rgb(177, 62, 129)  | #B13E81 |133 |
| 8 | hsl(225, 60%, 53%) |  rgb(63, 99, 207)  | #3F63CF | 68 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(42, 84%, 67%),rgb(241, 199, 100),222
hsl(120, 69%, 64%),rgb(99, 226, 99),114
hsl(71, 67%, 54%),rgb(187, 216, 59),185
hsl(142, 55%, 55%),rgb(77, 203, 123),114
hsl(194, 49%, 42%),rgb(54, 135, 159),73
hsl(124, 41%, 49%),rgb(73, 176, 80),72
hsl(325, 48%, 47%),rgb(177, 62, 129),133
hsl(225, 60%, 53%),rgb(63, 99, 207),68

Generated: 2026-07-01 11:16:59
```
