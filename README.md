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

![#DF6543](https://img.shields.io/badge/-%23DF6543?style=flat&logo=none) ![#6541DC](https://img.shields.io/badge/-%236541DC?style=flat&logo=none) ![#891A1F](https://img.shields.io/badge/-%23891A1F?style=flat&logo=none) ![#0A73D6](https://img.shields.io/badge/-%230A73D6?style=flat&logo=none) ![#19FAD8](https://img.shields.io/badge/-%2319FAD8?style=flat&logo=none) ![#8DD92A](https://img.shields.io/badge/-%238DD92A?style=flat&logo=none) ![#317E9F](https://img.shields.io/badge/-%23317E9F?style=flat&logo=none) ![#A3C010](https://img.shields.io/badge/-%23A3C010?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-25 16:24:39
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(13, 71%, 57%)  | rgb(223, 101, 67)  | #DF6543 |173 |
| 2 | hsl(254, 69%, 56%) | rgb(101, 65, 220)  | #6541DC | 98 |
| 3 | hsl(357, 68%, 32%) |  rgb(137, 26, 31)  | #891A1F |131 |
| 4 | hsl(209, 91%, 44%) | rgb(10, 115, 214)  | #0A73D6 | 32 |
| 5 | hsl(171, 96%, 54%) | rgb(25, 250, 216)  | #19FAD8 | 50 |
| 6 | hsl(86, 70%, 51%)  | rgb(141, 217, 42)  | #8DD92A |149 |
| 7 | hsl(198, 53%, 41%) | rgb(49, 126, 159)  | #317E9F | 67 |
| 8 | hsl(70, 84%, 41%)  | rgb(163, 192, 16)  | #A3C010 |148 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(13, 71%, 57%),rgb(223, 101, 67),173
hsl(254, 69%, 56%),rgb(101, 65, 220),98
hsl(357, 68%, 32%),rgb(137, 26, 31),131
hsl(209, 91%, 44%),rgb(10, 115, 214),32
hsl(171, 96%, 54%),rgb(25, 250, 216),50
hsl(86, 70%, 51%),rgb(141, 217, 42),149
hsl(198, 53%, 41%),rgb(49, 126, 159),67
hsl(70, 84%, 41%),rgb(163, 192, 16),148

Generated: 2026-08-25 16:24:39
```
