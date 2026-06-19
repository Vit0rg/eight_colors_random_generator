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

![#D639DE](https://img.shields.io/badge/-%23D639DE?style=flat&logo=none) ![#551FAC](https://img.shields.io/badge/-%23551FAC?style=flat&logo=none) ![#B70413](https://img.shields.io/badge/-%23B70413?style=flat&logo=none) ![#1E4FC2](https://img.shields.io/badge/-%231E4FC2?style=flat&logo=none) ![#286EF0](https://img.shields.io/badge/-%23286EF0?style=flat&logo=none) ![#DC6241](https://img.shields.io/badge/-%23DC6241?style=flat&logo=none) ![#84D090](https://img.shields.io/badge/-%2384D090?style=flat&logo=none) ![#A9C972](https://img.shields.io/badge/-%23A9C972?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-19 17:47:29
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(297, 72%, 55%) | rgb(214, 57, 222)  | #D639DE |170 |
| 2 | hsl(263, 69%, 40%) |  rgb(85, 31, 172)  | #551FAC | 97 |
| 3 | hsl(355, 95%, 37%) |  rgb(183, 4, 19)   | #B70413 |160 |
| 4 | hsl(222, 73%, 44%) |  rgb(30, 79, 194)  | #1E4FC2 | 68 |
| 5 | hsl(219, 87%, 55%) | rgb(40, 110, 240)  | #286EF0 | 69 |
| 6 | hsl(13, 69%, 56%)  |  rgb(220, 98, 65)  | #DC6241 |173 |
| 7 | hsl(129, 45%, 67%) | rgb(132, 208, 144) | #84D090 |151 |
| 8 | hsl(82, 45%, 62%)  | rgb(169, 201, 114) | #A9C972 |150 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(297, 72%, 55%),rgb(214, 57, 222),170
hsl(263, 69%, 40%),rgb(85, 31, 172),97
hsl(355, 95%, 37%),rgb(183, 4, 19),160
hsl(222, 73%, 44%),rgb(30, 79, 194),68
hsl(219, 87%, 55%),rgb(40, 110, 240),69
hsl(13, 69%, 56%),rgb(220, 98, 65),173
hsl(129, 45%, 67%),rgb(132, 208, 144),151
hsl(82, 45%, 62%),rgb(169, 201, 114),150

Generated: 2026-06-19 17:47:29
```
