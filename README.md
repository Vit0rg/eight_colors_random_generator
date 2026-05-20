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

![#5BB9DB](https://img.shields.io/badge/-%235BB9DB?style=flat&logo=none) ![#115EF7](https://img.shields.io/badge/-%23115EF7?style=flat&logo=none) ![#4A8F09](https://img.shields.io/badge/-%234A8F09?style=flat&logo=none) ![#B057F4](https://img.shields.io/badge/-%23B057F4?style=flat&logo=none) ![#C864DD](https://img.shields.io/badge/-%23C864DD?style=flat&logo=none) ![#328B31](https://img.shields.io/badge/-%23328B31?style=flat&logo=none) ![#C4E179](https://img.shields.io/badge/-%23C4E179?style=flat&logo=none) ![#A1C60A](https://img.shields.io/badge/-%23A1C60A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-20 18:09:52
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(196, 64%, 61%) | rgb(91, 185, 219)  | #5BB9DB |116 |
| 2 | hsl(220, 94%, 52%) |  rgb(17, 94, 247)  | #115EF7 | 33 |
| 3 | hsl(91, 88%, 30%)  |  rgb(74, 143, 9)   | #4A8F09 | 70 |
| 4 | hsl(274, 88%, 65%) | rgb(176, 87, 244)  | #B057F4 |141 |
| 5 | hsl(290, 64%, 63%) | rgb(200, 100, 221) | #C864DD |176 |
| 6 | hsl(119, 48%, 37%) |  rgb(50, 139, 49)  | #328B31 | 71 |
| 7 | hsl(77, 64%, 68%)  | rgb(196, 225, 121) | #C4E179 |186 |
| 8 | hsl(72, 90%, 41%)  | rgb(161, 198, 10)  | #A1C60A |148 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(196, 64%, 61%),rgb(91, 185, 219),116
hsl(220, 94%, 52%),rgb(17, 94, 247),33
hsl(91, 88%, 30%),rgb(74, 143, 9),70
hsl(274, 88%, 65%),rgb(176, 87, 244),141
hsl(290, 64%, 63%),rgb(200, 100, 221),176
hsl(119, 48%, 37%),rgb(50, 139, 49),71
hsl(77, 64%, 68%),rgb(196, 225, 121),186
hsl(72, 90%, 41%),rgb(161, 198, 10),148

Generated: 2026-05-20 18:09:52
```
