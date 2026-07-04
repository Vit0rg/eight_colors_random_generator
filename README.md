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

![#D00A7A](https://img.shields.io/badge/-%23D00A7A?style=flat&logo=none) ![#F41A5F](https://img.shields.io/badge/-%23F41A5F?style=flat&logo=none) ![#ACDB66](https://img.shields.io/badge/-%23ACDB66?style=flat&logo=none) ![#968CD8](https://img.shields.io/badge/-%23968CD8?style=flat&logo=none) ![#FF237E](https://img.shields.io/badge/-%23FF237E?style=flat&logo=none) ![#A502A3](https://img.shields.io/badge/-%23A502A3?style=flat&logo=none) ![#72CEBC](https://img.shields.io/badge/-%2372CEBC?style=flat&logo=none) ![#86C21E](https://img.shields.io/badge/-%2386C21E?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-04 09:59:44
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(326, 90%, 43%) | rgb(208, 10, 122)  | #D00A7A |162 |
| 2 | hsl(341, 91%, 53%) |  rgb(244, 26, 95)  | #F41A5F |204 |
| 3 | hsl(84, 62%, 63%)  | rgb(172, 219, 102) | #ACDB66 |150 |
| 4 | hsl(248, 50%, 70%) | rgb(150, 140, 216) | #968CD8 |146 |
| 5 |hsl(335, 100%, 57%) | rgb(255, 35, 126)  | #FF237E |204 |
| 6 | hsl(301, 97%, 33%) |  rgb(165, 2, 163)  | #A502A3 |127 |
| 7 | hsl(168, 49%, 63%) | rgb(114, 206, 188) | #72CEBC |116 |
| 8 | hsl(82, 73%, 44%)  | rgb(134, 194, 30)  | #86C21E |149 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(326, 90%, 43%),rgb(208, 10, 122),162
hsl(341, 91%, 53%),rgb(244, 26, 95),204
hsl(84, 62%, 63%),rgb(172, 219, 102),150
hsl(248, 50%, 70%),rgb(150, 140, 216),146
hsl(335, 100%, 57%),rgb(255, 35, 126),204
hsl(301, 97%, 33%),rgb(165, 2, 163),127
hsl(168, 49%, 63%),rgb(114, 206, 188),116
hsl(82, 73%, 44%),rgb(134, 194, 30),149

Generated: 2026-07-04 09:59:44
```
