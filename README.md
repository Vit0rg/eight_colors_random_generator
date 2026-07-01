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

![#8256DB](https://img.shields.io/badge/-%238256DB?style=flat&logo=none) ![#E39B0B](https://img.shields.io/badge/-%23E39B0B?style=flat&logo=none) ![#EE538E](https://img.shields.io/badge/-%23EE538E?style=flat&logo=none) ![#44892D](https://img.shields.io/badge/-%2344892D?style=flat&logo=none) ![#DABB85](https://img.shields.io/badge/-%23DABB85?style=flat&logo=none) ![#2E38F9](https://img.shields.io/badge/-%232E38F9?style=flat&logo=none) ![#6EAAD2](https://img.shields.io/badge/-%236EAAD2?style=flat&logo=none) ![#825AD7](https://img.shields.io/badge/-%23825AD7?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-01 02:37:21
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(260, 65%, 60%) | rgb(130, 86, 219)  | #8256DB |140 |
| 2 | hsl(40, 90%, 47%)  | rgb(227, 155, 11)  | #E39B0B |178 |
| 3 | hsl(337, 82%, 63%) | rgb(238, 83, 142)  | #EE538E |211 |
| 4 | hsl(105, 50%, 36%) |  rgb(68, 137, 45)  | #44892D | 71 |
| 5 | hsl(38, 54%, 69%)  | rgb(218, 187, 133) | #DABB85 |187 |
| 6 | hsl(237, 95%, 58%) |  rgb(46, 56, 249)  | #2E38F9 | 63 |
| 7 | hsl(204, 53%, 63%) | rgb(110, 170, 210) | #6EAAD2 |110 |
| 8 | hsl(259, 61%, 60%) | rgb(130, 90, 215)  | #825AD7 |140 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(260, 65%, 60%),rgb(130, 86, 219),140
hsl(40, 90%, 47%),rgb(227, 155, 11),178
hsl(337, 82%, 63%),rgb(238, 83, 142),211
hsl(105, 50%, 36%),rgb(68, 137, 45),71
hsl(38, 54%, 69%),rgb(218, 187, 133),187
hsl(237, 95%, 58%),rgb(46, 56, 249),63
hsl(204, 53%, 63%),rgb(110, 170, 210),110
hsl(259, 61%, 60%),rgb(130, 90, 215),140

Generated: 2026-07-01 02:37:21
```
