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

![#1051AC](https://img.shields.io/badge/-%231051AC?style=flat&logo=none) ![#3E9253](https://img.shields.io/badge/-%233E9253?style=flat&logo=none) ![#95D080](https://img.shields.io/badge/-%2395D080?style=flat&logo=none) ![#C45D7E](https://img.shields.io/badge/-%23C45D7E?style=flat&logo=none) ![#4CD6C4](https://img.shields.io/badge/-%234CD6C4?style=flat&logo=none) ![#6BEFD0](https://img.shields.io/badge/-%236BEFD0?style=flat&logo=none) ![#DB66CF](https://img.shields.io/badge/-%23DB66CF?style=flat&logo=none) ![#813C1C](https://img.shields.io/badge/-%23813C1C?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-22 13:26:18
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(215, 83%, 37%) |  rgb(16, 81, 172)  | #1051AC | 31 |
| 2 | hsl(135, 40%, 41%) |  rgb(62, 146, 83)  | #3E9253 | 72 |
| 3 | hsl(104, 46%, 66%) | rgb(149, 208, 128) | #95D080 |151 |
| 4 | hsl(341, 47%, 57%) | rgb(196, 93, 126)  | #C45D7E |174 |
| 5 | hsl(172, 63%, 57%) | rgb(76, 214, 196)  | #4CD6C4 | 80 |
| 6 | hsl(166, 81%, 68%) | rgb(107, 239, 208) | #6BEFD0 |122 |
| 7 | hsl(306, 62%, 63%) | rgb(219, 102, 207) | #DB66CF |176 |
| 8 | hsl(19, 64%, 31%)  |  rgb(129, 60, 28)  | #813C1C |131 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(215, 83%, 37%),rgb(16, 81, 172),31
hsl(135, 40%, 41%),rgb(62, 146, 83),72
hsl(104, 46%, 66%),rgb(149, 208, 128),151
hsl(341, 47%, 57%),rgb(196, 93, 126),174
hsl(172, 63%, 57%),rgb(76, 214, 196),80
hsl(166, 81%, 68%),rgb(107, 239, 208),122
hsl(306, 62%, 63%),rgb(219, 102, 207),176
hsl(19, 64%, 31%),rgb(129, 60, 28),131

Generated: 2026-06-22 13:26:18
```
