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

![#268D1A](https://img.shields.io/badge/-%23268D1A?style=flat&logo=none) ![#F4C11A](https://img.shields.io/badge/-%23F4C11A?style=flat&logo=none) ![#EA0496](https://img.shields.io/badge/-%23EA0496?style=flat&logo=none) ![#81CA99](https://img.shields.io/badge/-%2381CA99?style=flat&logo=none) ![#5BCAE5](https://img.shields.io/badge/-%235BCAE5?style=flat&logo=none) ![#06EE89](https://img.shields.io/badge/-%2306EE89?style=flat&logo=none) ![#F226B5](https://img.shields.io/badge/-%23F226B5?style=flat&logo=none) ![#B7D232](https://img.shields.io/badge/-%23B7D232?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-25 00:42:03
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(114, 68%, 33%) |  rgb(38, 141, 26)  | #268D1A | 71 |
| 2 | hsl(46, 91%, 53%)  | rgb(244, 193, 26)  | #F4C11A |221 |
| 3 | hsl(322, 96%, 47%) |  rgb(234, 4, 150)  | #EA0496 |199 |
| 4 | hsl(140, 41%, 65%) | rgb(129, 202, 153) | #81CA99 |151 |
| 5 | hsl(192, 73%, 63%) | rgb(91, 202, 229)  | #5BCAE5 |116 |
| 6 | hsl(154, 95%, 48%) |  rgb(6, 238, 137)  | #06EE89 | 49 |
| 7 | hsl(318, 89%, 55%) | rgb(242, 38, 181)  | #F226B5 |206 |
| 8 | hsl(70, 64%, 51%)  | rgb(183, 210, 50)  | #B7D232 |185 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(114, 68%, 33%),rgb(38, 141, 26),71
hsl(46, 91%, 53%),rgb(244, 193, 26),221
hsl(322, 96%, 47%),rgb(234, 4, 150),199
hsl(140, 41%, 65%),rgb(129, 202, 153),151
hsl(192, 73%, 63%),rgb(91, 202, 229),116
hsl(154, 95%, 48%),rgb(6, 238, 137),49
hsl(318, 89%, 55%),rgb(242, 38, 181),206
hsl(70, 64%, 51%),rgb(183, 210, 50),185

Generated: 2026-08-25 00:42:03
```
