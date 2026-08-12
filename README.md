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

![#B0F75E](https://img.shields.io/badge/-%23B0F75E?style=flat&logo=none) ![#8723E5](https://img.shields.io/badge/-%238723E5?style=flat&logo=none) ![#19229D](https://img.shields.io/badge/-%2319229D?style=flat&logo=none) ![#FA4E42](https://img.shields.io/badge/-%23FA4E42?style=flat&logo=none) ![#E278CD](https://img.shields.io/badge/-%23E278CD?style=flat&logo=none) ![#A253BA](https://img.shields.io/badge/-%23A253BA?style=flat&logo=none) ![#137F85](https://img.shields.io/badge/-%23137F85?style=flat&logo=none) ![#B85937](https://img.shields.io/badge/-%23B85937?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-12 09:01:51
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(88, 91%, 67%)  | rgb(176, 247, 94)  | #B0F75E |156 |
| 2 | hsl(271, 79%, 52%) | rgb(135, 35, 229)  | #8723E5 |134 |
| 3 | hsl(236, 72%, 36%) |  rgb(25, 34, 157)  | #19229D | 25 |
| 4 |  hsl(4, 95%, 62%)  |  rgb(250, 78, 66)  | #FA4E42 |209 |
| 5 | hsl(312, 65%, 68%) | rgb(226, 120, 205) | #E278CD |176 |
| 6 | hsl(286, 43%, 53%) | rgb(162, 83, 186)  | #A253BA |140 |
| 7 | hsl(183, 74%, 30%) | rgb(19, 127, 133)  | #137F85 | 31 |
| 8 | hsl(16, 54%, 47%)  |  rgb(184, 89, 55)  | #B85937 |173 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(88, 91%, 67%),rgb(176, 247, 94),156
hsl(271, 79%, 52%),rgb(135, 35, 229),134
hsl(236, 72%, 36%),rgb(25, 34, 157),25
hsl(4, 95%, 62%),rgb(250, 78, 66),209
hsl(312, 65%, 68%),rgb(226, 120, 205),176
hsl(286, 43%, 53%),rgb(162, 83, 186),140
hsl(183, 74%, 30%),rgb(19, 127, 133),31
hsl(16, 54%, 47%),rgb(184, 89, 55),173

Generated: 2026-08-12 09:01:51
```
