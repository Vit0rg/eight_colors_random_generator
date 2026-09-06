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

![#B03047](https://img.shields.io/badge/-%23B03047?style=flat&logo=none) ![#1788D3](https://img.shields.io/badge/-%231788D3?style=flat&logo=none) ![#FE5852](https://img.shields.io/badge/-%23FE5852?style=flat&logo=none) ![#369333](https://img.shields.io/badge/-%23369333?style=flat&logo=none) ![#BCE75F](https://img.shields.io/badge/-%23BCE75F?style=flat&logo=none) ![#EE3446](https://img.shields.io/badge/-%23EE3446?style=flat&logo=none) ![#883A39](https://img.shields.io/badge/-%23883A39?style=flat&logo=none) ![#4743BB](https://img.shields.io/badge/-%234743BB?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-06 02:00:09
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(349, 57%, 44%) |  rgb(176, 48, 71)  | #B03047 |131 |
| 2 | hsl(204, 80%, 46%) | rgb(23, 136, 211)  | #1788D3 | 38 |
| 3 |  hsl(2, 99%, 66%)  |  rgb(254, 88, 82)  | #FE5852 |210 |
| 4 | hsl(118, 48%, 39%) |  rgb(54, 147, 51)  | #369333 | 71 |
| 5 | hsl(79, 74%, 64%)  | rgb(188, 231, 95)  | #BCE75F |192 |
| 6 | hsl(354, 85%, 57%) |  rgb(238, 52, 70)  | #EE3446 |203 |
| 7 |  hsl(1, 41%, 38%)  |  rgb(136, 58, 57)  | #883A39 |131 |
| 8 | hsl(242, 47%, 50%) |  rgb(71, 67, 187)  | #4743BB | 62 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(349, 57%, 44%),rgb(176, 48, 71),131
hsl(204, 80%, 46%),rgb(23, 136, 211),38
hsl(2, 99%, 66%),rgb(254, 88, 82),210
hsl(118, 48%, 39%),rgb(54, 147, 51),71
hsl(79, 74%, 64%),rgb(188, 231, 95),192
hsl(354, 85%, 57%),rgb(238, 52, 70),203
hsl(1, 41%, 38%),rgb(136, 58, 57),131
hsl(242, 47%, 50%),rgb(71, 67, 187),62

Generated: 2026-09-06 02:00:09
```
