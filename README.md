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

![#46BE31](https://img.shields.io/badge/-%2346BE31?style=flat&logo=none) ![#D9C686](https://img.shields.io/badge/-%23D9C686?style=flat&logo=none) ![#86274B](https://img.shields.io/badge/-%2386274B?style=flat&logo=none) ![#B14B39](https://img.shields.io/badge/-%23B14B39?style=flat&logo=none) ![#AF51C6](https://img.shields.io/badge/-%23AF51C6?style=flat&logo=none) ![#039562](https://img.shields.io/badge/-%23039562?style=flat&logo=none) ![#BC6047](https://img.shields.io/badge/-%23BC6047?style=flat&logo=none) ![#9F38E0](https://img.shields.io/badge/-%239F38E0?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-29 19:00:39
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(111, 59%, 47%) |  rgb(70, 190, 49)  | #46BE31 | 77 |
| 2 | hsl(46, 53%, 69%)  | rgb(217, 198, 134) | #D9C686 |187 |
| 3 | hsl(337, 55%, 34%) |  rgb(134, 39, 75)  | #86274B |131 |
| 4 |  hsl(9, 51%, 46%)  |  rgb(177, 75, 57)  | #B14B39 |131 |
| 5 | hsl(288, 51%, 55%) | rgb(175, 81, 198)  | #AF51C6 |140 |
| 6 | hsl(159, 96%, 30%) |  rgb(3, 149, 98)   | #039562 | 36 |
| 7 | hsl(13, 47%, 51%)  |  rgb(188, 96, 71)  | #BC6047 |173 |
| 8 | hsl(277, 73%, 55%) | rgb(159, 56, 224)  | #9F38E0 |134 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(111, 59%, 47%),rgb(70, 190, 49),77
hsl(46, 53%, 69%),rgb(217, 198, 134),187
hsl(337, 55%, 34%),rgb(134, 39, 75),131
hsl(9, 51%, 46%),rgb(177, 75, 57),131
hsl(288, 51%, 55%),rgb(175, 81, 198),140
hsl(159, 96%, 30%),rgb(3, 149, 98),36
hsl(13, 47%, 51%),rgb(188, 96, 71),173
hsl(277, 73%, 55%),rgb(159, 56, 224),134

Generated: 2026-08-29 19:00:39
```
