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

![#4A3FE3](https://img.shields.io/badge/-%234A3FE3?style=flat&logo=none) ![#A83609](https://img.shields.io/badge/-%23A83609?style=flat&logo=none) ![#3CA850](https://img.shields.io/badge/-%233CA850?style=flat&logo=none) ![#A4B544](https://img.shields.io/badge/-%23A4B544?style=flat&logo=none) ![#14C6BA](https://img.shields.io/badge/-%2314C6BA?style=flat&logo=none) ![#982E8B](https://img.shields.io/badge/-%23982E8B?style=flat&logo=none) ![#0162FD](https://img.shields.io/badge/-%230162FD?style=flat&logo=none) ![#EABC66](https://img.shields.io/badge/-%23EABC66?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-12 17:58:42
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(244, 75%, 57%) |  rgb(74, 63, 227)  | #4A3FE3 | 62 |
| 2 | hsl(17, 89%, 35%)  |  rgb(168, 54, 9)   | #A83609 |130 |
| 3 | hsl(131, 47%, 45%) |  rgb(60, 168, 80)  | #3CA850 | 72 |
| 4 | hsl(69, 45%, 49%)  | rgb(164, 181, 68)  | #A4B544 |149 |
| 5 | hsl(176, 81%, 43%) | rgb(20, 198, 186)  | #14C6BA | 44 |
| 6 | hsl(307, 53%, 39%) | rgb(152, 46, 139)  | #982E8B |133 |
| 7 | hsl(217, 99%, 50%) |  rgb(1, 98, 253)   | #0162FD | 33 |
| 8 | hsl(39, 76%, 66%)  | rgb(234, 188, 102) | #EABC66 |222 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(244, 75%, 57%),rgb(74, 63, 227),62
hsl(17, 89%, 35%),rgb(168, 54, 9),130
hsl(131, 47%, 45%),rgb(60, 168, 80),72
hsl(69, 45%, 49%),rgb(164, 181, 68),149
hsl(176, 81%, 43%),rgb(20, 198, 186),44
hsl(307, 53%, 39%),rgb(152, 46, 139),133
hsl(217, 99%, 50%),rgb(1, 98, 253),33
hsl(39, 76%, 66%),rgb(234, 188, 102),222

Generated: 2026-09-12 17:58:42
```
