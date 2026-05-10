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

![#9268C9](https://img.shields.io/badge/-%239268C9?style=flat&logo=none) ![#A42C44](https://img.shields.io/badge/-%23A42C44?style=flat&logo=none) ![#9A6440](https://img.shields.io/badge/-%239A6440?style=flat&logo=none) ![#36FB9C](https://img.shields.io/badge/-%2336FB9C?style=flat&logo=none) ![#D9D320](https://img.shields.io/badge/-%23D9D320?style=flat&logo=none) ![#139305](https://img.shields.io/badge/-%23139305?style=flat&logo=none) ![#C57680](https://img.shields.io/badge/-%23C57680?style=flat&logo=none) ![#55E688](https://img.shields.io/badge/-%2355E688?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-10 02:02:08
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(266, 48%, 60%) | rgb(146, 104, 201) | #9268C9 |140 |
| 2 | hsl(348, 57%, 41%) |  rgb(164, 44, 68)  | #A42C44 |131 |
| 3 | hsl(24, 41%, 43%)  | rgb(154, 100, 64)  | #9A6440 |137 |
| 4 | hsl(151, 97%, 60%) | rgb(54, 251, 156)  | #36FB9C | 85 |
| 5 | hsl(58, 74%, 49%)  | rgb(217, 211, 32)  | #D9D320 |185 |
| 6 | hsl(114, 93%, 30%) |  rgb(19, 147, 5)   | #139305 | 34 |
| 7 | hsl(352, 41%, 62%) | rgb(197, 118, 128) | #C57680 |175 |
| 8 | hsl(141, 75%, 62%) | rgb(85, 230, 136)  | #55E688 |115 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(266, 48%, 60%),rgb(146, 104, 201),140
hsl(348, 57%, 41%),rgb(164, 44, 68),131
hsl(24, 41%, 43%),rgb(154, 100, 64),137
hsl(151, 97%, 60%),rgb(54, 251, 156),85
hsl(58, 74%, 49%),rgb(217, 211, 32),185
hsl(114, 93%, 30%),rgb(19, 147, 5),34
hsl(352, 41%, 62%),rgb(197, 118, 128),175
hsl(141, 75%, 62%),rgb(85, 230, 136),115

Generated: 2026-05-10 02:02:08
```
