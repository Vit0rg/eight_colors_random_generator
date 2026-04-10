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

![#4E6BFD](https://img.shields.io/badge/-%234E6BFD?style=flat&logo=none) ![#03E2A3](https://img.shields.io/badge/-%2303E2A3?style=flat&logo=none) ![#ECDA73](https://img.shields.io/badge/-%23ECDA73?style=flat&logo=none) ![#4C9D33](https://img.shields.io/badge/-%234C9D33?style=flat&logo=none) ![#3C3086](https://img.shields.io/badge/-%233C3086?style=flat&logo=none) ![#4F951D](https://img.shields.io/badge/-%234F951D?style=flat&logo=none) ![#7ABED0](https://img.shields.io/badge/-%237ABED0?style=flat&logo=none) ![#52F3BE](https://img.shields.io/badge/-%2352F3BE?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-10 16:56:40
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(230, 98%, 65%) | rgb(78, 107, 253)  | #4E6BFD |105 |
| 2 | hsl(163, 97%, 45%) |  rgb(3, 226, 163)  | #03E2A3 | 43 |
| 3 | hsl(51, 76%, 69%)  | rgb(236, 218, 115) | #ECDA73 |222 |
| 4 | hsl(106, 51%, 41%) |  rgb(76, 157, 51)  | #4C9D33 | 71 |
| 5 | hsl(248, 47%, 36%) |  rgb(60, 48, 134)  | #3C3086 | 61 |
| 6 | hsl(95, 67%, 35%)  |  rgb(79, 149, 29)  | #4F951D |107 |
| 7 | hsl(193, 48%, 65%) | rgb(122, 190, 208) | #7ABED0 |116 |
| 8 | hsl(160, 88%, 64%) | rgb(82, 243, 190)  | #52F3BE |122 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(230, 98%, 65%),rgb(78, 107, 253),105
hsl(163, 97%, 45%),rgb(3, 226, 163),43
hsl(51, 76%, 69%),rgb(236, 218, 115),222
hsl(106, 51%, 41%),rgb(76, 157, 51),71
hsl(248, 47%, 36%),rgb(60, 48, 134),61
hsl(95, 67%, 35%),rgb(79, 149, 29),107
hsl(193, 48%, 65%),rgb(122, 190, 208),116
hsl(160, 88%, 64%),rgb(82, 243, 190),122

Generated: 2026-04-10 16:56:40
```
