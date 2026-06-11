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

![#C9B240](https://img.shields.io/badge/-%23C9B240?style=flat&logo=none) ![#1F92A1](https://img.shields.io/badge/-%231F92A1?style=flat&logo=none) ![#75158D](https://img.shields.io/badge/-%2375158D?style=flat&logo=none) ![#1C812F](https://img.shields.io/badge/-%231C812F?style=flat&logo=none) ![#7D2A47](https://img.shields.io/badge/-%237D2A47?style=flat&logo=none) ![#EE2031](https://img.shields.io/badge/-%23EE2031?style=flat&logo=none) ![#88E37C](https://img.shields.io/badge/-%2388E37C?style=flat&logo=none) ![#5ACC46](https://img.shields.io/badge/-%235ACC46?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-11 18:40:59
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(50, 56%, 52%)  | rgb(201, 178, 64)  | #C9B240 |179 |
| 2 | hsl(187, 67%, 38%) | rgb(31, 146, 161)  | #1F92A1 | 73 |
| 3 | hsl(288, 74%, 32%) | rgb(117, 21, 141)  | #75158D | 91 |
| 4 | hsl(131, 64%, 31%) |  rgb(28, 129, 47)  | #1C812F | 71 |
| 5 | hsl(339, 49%, 33%) |  rgb(125, 42, 71)  | #7D2A47 | 95 |
| 6 | hsl(355, 86%, 53%) |  rgb(238, 32, 49)  | #EE2031 |203 |
| 7 | hsl(113, 65%, 69%) | rgb(136, 227, 124) | #88E37C |150 |
| 8 | hsl(111, 57%, 54%) |  rgb(90, 204, 70)  | #5ACC46 |113 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(50, 56%, 52%),rgb(201, 178, 64),179
hsl(187, 67%, 38%),rgb(31, 146, 161),73
hsl(288, 74%, 32%),rgb(117, 21, 141),91
hsl(131, 64%, 31%),rgb(28, 129, 47),71
hsl(339, 49%, 33%),rgb(125, 42, 71),95
hsl(355, 86%, 53%),rgb(238, 32, 49),203
hsl(113, 65%, 69%),rgb(136, 227, 124),150
hsl(111, 57%, 54%),rgb(90, 204, 70),113

Generated: 2026-06-11 18:40:59
```
