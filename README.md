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

![#8C35E3](https://img.shields.io/badge/-%238C35E3?style=flat&logo=none) ![#B05001](https://img.shields.io/badge/-%23B05001?style=flat&logo=none) ![#CD9B03](https://img.shields.io/badge/-%23CD9B03?style=flat&logo=none) ![#83731A](https://img.shields.io/badge/-%2383731A?style=flat&logo=none) ![#7DDE48](https://img.shields.io/badge/-%237DDE48?style=flat&logo=none) ![#046799](https://img.shields.io/badge/-%23046799?style=flat&logo=none) ![#A7396C](https://img.shields.io/badge/-%23A7396C?style=flat&logo=none) ![#B8D33F](https://img.shields.io/badge/-%23B8D33F?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-11 02:11:45
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(270, 76%, 55%) | rgb(140, 53, 227)  | #8C35E3 |134 |
| 2 | hsl(27, 98%, 35%)  |  rgb(176, 80, 1)   | #B05001 |136 |
| 3 | hsl(45, 97%, 41%)  |  rgb(205, 155, 3)  | #CD9B03 |178 |
| 4 | hsl(51, 66%, 31%)  | rgb(131, 115, 26)  | #83731A |137 |
| 5 | hsl(99, 70%, 58%)  | rgb(125, 222, 72)  | #7DDE48 |113 |
| 6 | hsl(200, 94%, 31%) |  rgb(4, 103, 153)  | #046799 | 31 |
| 7 | hsl(332, 49%, 44%) | rgb(167, 57, 108)  | #A7396C |132 |
| 8 | hsl(71, 63%, 54%)  | rgb(184, 211, 63)  | #B8D33F |185 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(270, 76%, 55%),rgb(140, 53, 227),134
hsl(27, 98%, 35%),rgb(176, 80, 1),136
hsl(45, 97%, 41%),rgb(205, 155, 3),178
hsl(51, 66%, 31%),rgb(131, 115, 26),137
hsl(99, 70%, 58%),rgb(125, 222, 72),113
hsl(200, 94%, 31%),rgb(4, 103, 153),31
hsl(332, 49%, 44%),rgb(167, 57, 108),132
hsl(71, 63%, 54%),rgb(184, 211, 63),185

Generated: 2026-05-11 02:11:45
```
