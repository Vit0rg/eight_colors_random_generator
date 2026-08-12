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

![#851F93](https://img.shields.io/badge/-%23851F93?style=flat&logo=none) ![#E42FE0](https://img.shields.io/badge/-%23E42FE0?style=flat&logo=none) ![#9C6DE8](https://img.shields.io/badge/-%239C6DE8?style=flat&logo=none) ![#7CD731](https://img.shields.io/badge/-%237CD731?style=flat&logo=none) ![#41E149](https://img.shields.io/badge/-%2341E149?style=flat&logo=none) ![#80313F](https://img.shields.io/badge/-%2380313F?style=flat&logo=none) ![#937329](https://img.shields.io/badge/-%23937329?style=flat&logo=none) ![#731B87](https://img.shields.io/badge/-%23731B87?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-12 16:46:21
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(293, 65%, 35%) | rgb(133, 31, 147)  | #851F93 |133 |
| 2 | hsl(301, 77%, 54%) | rgb(228, 47, 224)  | #E42FE0 |170 |
| 3 | hsl(263, 73%, 67%) | rgb(156, 109, 232) | #9C6DE8 |141 |
| 4 | hsl(93, 68%, 52%)  | rgb(124, 215, 49)  | #7CD731 |113 |
| 5 | hsl(123, 73%, 57%) |  rgb(65, 225, 73)  | #41E149 | 77 |
| 6 | hsl(350, 44%, 35%) |  rgb(128, 49, 63)  | #80313F |131 |
| 7 | hsl(42, 56%, 37%)  | rgb(147, 115, 41)  | #937329 |137 |
| 8 | hsl(289, 66%, 32%) | rgb(115, 27, 135)  | #731B87 | 97 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(293, 65%, 35%),rgb(133, 31, 147),133
hsl(301, 77%, 54%),rgb(228, 47, 224),170
hsl(263, 73%, 67%),rgb(156, 109, 232),141
hsl(93, 68%, 52%),rgb(124, 215, 49),113
hsl(123, 73%, 57%),rgb(65, 225, 73),77
hsl(350, 44%, 35%),rgb(128, 49, 63),131
hsl(42, 56%, 37%),rgb(147, 115, 41),137
hsl(289, 66%, 32%),rgb(115, 27, 135),97

Generated: 2026-08-12 16:46:21
```
