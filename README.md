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

![#243B88](https://img.shields.io/badge/-%23243B88?style=flat&logo=none) ![#E55BDE](https://img.shields.io/badge/-%23E55BDE?style=flat&logo=none) ![#CC0944](https://img.shields.io/badge/-%23CC0944?style=flat&logo=none) ![#553780](https://img.shields.io/badge/-%23553780?style=flat&logo=none) ![#D83803](https://img.shields.io/badge/-%23D83803?style=flat&logo=none) ![#E24AA8](https://img.shields.io/badge/-%23E24AA8?style=flat&logo=none) ![#14F02D](https://img.shields.io/badge/-%2314F02D?style=flat&logo=none) ![#7BC477](https://img.shields.io/badge/-%237BC477?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-15 19:37:47
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(226, 58%, 34%) |  rgb(36, 59, 136)  | #243B88 | 61 |
| 2 | hsl(303, 73%, 63%) | rgb(229, 91, 222)  | #E55BDE |176 |
| 3 | hsl(342, 91%, 42%) |  rgb(204, 9, 68)   | #CC0944 |161 |
| 4 | hsl(265, 40%, 36%) |  rgb(85, 55, 128)  | #553780 | 97 |
| 5 | hsl(15, 97%, 43%)  |  rgb(216, 56, 3)   | #D83803 |166 |
| 6 | hsl(323, 73%, 59%) | rgb(226, 74, 168)  | #E24AA8 |169 |
| 7 | hsl(127, 88%, 51%) |  rgb(20, 240, 45)  | #14F02D | 47 |
| 8 | hsl(117, 40%, 62%) | rgb(123, 196, 119) | #7BC477 |114 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(226, 58%, 34%),rgb(36, 59, 136),61
hsl(303, 73%, 63%),rgb(229, 91, 222),176
hsl(342, 91%, 42%),rgb(204, 9, 68),161
hsl(265, 40%, 36%),rgb(85, 55, 128),97
hsl(15, 97%, 43%),rgb(216, 56, 3),166
hsl(323, 73%, 59%),rgb(226, 74, 168),169
hsl(127, 88%, 51%),rgb(20, 240, 45),47
hsl(117, 40%, 62%),rgb(123, 196, 119),114

Generated: 2026-06-15 19:37:47
```
