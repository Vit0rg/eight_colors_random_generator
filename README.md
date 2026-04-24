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

![#8117DD](https://img.shields.io/badge/-%238117DD?style=flat&logo=none) ![#99093E](https://img.shields.io/badge/-%2399093E?style=flat&logo=none) ![#3593C9](https://img.shields.io/badge/-%233593C9?style=flat&logo=none) ![#377127](https://img.shields.io/badge/-%23377127?style=flat&logo=none) ![#988E1F](https://img.shields.io/badge/-%23988E1F?style=flat&logo=none) ![#BB4D98](https://img.shields.io/badge/-%23BB4D98?style=flat&logo=none) ![#22A8F0](https://img.shields.io/badge/-%2322A8F0?style=flat&logo=none) ![#9D6BD5](https://img.shields.io/badge/-%239D6BD5?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-24 09:23:08
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(272, 81%, 48%) | rgb(129, 23, 221)  | #8117DD |128 |
| 2 | hsl(338, 88%, 32%) |  rgb(153, 9, 62)   | #99093E |125 |
| 3 | hsl(202, 58%, 50%) | rgb(53, 147, 201)  | #3593C9 | 74 |
| 4 | hsl(107, 48%, 30%) |  rgb(55, 113, 39)  | #377127 | 65 |
| 5 | hsl(55, 66%, 36%)  | rgb(152, 142, 31)  | #988E1F |143 |
| 6 | hsl(319, 45%, 52%) | rgb(187, 77, 152)  | #BB4D98 |175 |
| 7 | hsl(201, 88%, 54%) | rgb(34, 168, 240)  | #22A8F0 | 75 |
| 8 | hsl(268, 56%, 63%) | rgb(157, 107, 213) | #9D6BD5 |140 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(272, 81%, 48%),rgb(129, 23, 221),128
hsl(338, 88%, 32%),rgb(153, 9, 62),125
hsl(202, 58%, 50%),rgb(53, 147, 201),74
hsl(107, 48%, 30%),rgb(55, 113, 39),65
hsl(55, 66%, 36%),rgb(152, 142, 31),143
hsl(319, 45%, 52%),rgb(187, 77, 152),175
hsl(201, 88%, 54%),rgb(34, 168, 240),75
hsl(268, 56%, 63%),rgb(157, 107, 213),140

Generated: 2026-04-24 09:23:08
```
