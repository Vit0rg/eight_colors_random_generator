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

![#DE221B](https://img.shields.io/badge/-%23DE221B?style=flat&logo=none) ![#2E7484](https://img.shields.io/badge/-%232E7484?style=flat&logo=none) ![#88291A](https://img.shields.io/badge/-%2388291A?style=flat&logo=none) ![#777820](https://img.shields.io/badge/-%23777820?style=flat&logo=none) ![#D9B762](https://img.shields.io/badge/-%23D9B762?style=flat&logo=none) ![#CE493B](https://img.shields.io/badge/-%23CE493B?style=flat&logo=none) ![#14F0B5](https://img.shields.io/badge/-%2314F0B5?style=flat&logo=none) ![#3B0FDB](https://img.shields.io/badge/-%233B0FDB?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-31 16:57:07
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 |  hsl(2, 78%, 49%)  |  rgb(222, 34, 27)  | #DE221B |167 |
| 2 | hsl(191, 48%, 35%) | rgb(46, 116, 132)  | #2E7484 | 67 |
| 3 |  hsl(8, 67%, 32%)  |  rgb(136, 41, 26)  | #88291A |131 |
| 4 | hsl(61, 58%, 30%)  | rgb(119, 120, 32)  | #777820 |101 |
| 5 | hsl(43, 61%, 62%)  | rgb(217, 183, 98)  | #D9B762 |186 |
| 6 |  hsl(6, 60%, 52%)  |  rgb(206, 73, 59)  | #CE493B |167 |
| 7 | hsl(164, 88%, 51%) | rgb(20, 240, 181)  | #14F0B5 | 50 |
| 8 | hsl(253, 87%, 46%) |  rgb(59, 15, 219)  | #3B0FDB | 56 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(2, 78%, 49%),rgb(222, 34, 27),167
hsl(191, 48%, 35%),rgb(46, 116, 132),67
hsl(8, 67%, 32%),rgb(136, 41, 26),131
hsl(61, 58%, 30%),rgb(119, 120, 32),101
hsl(43, 61%, 62%),rgb(217, 183, 98),186
hsl(6, 60%, 52%),rgb(206, 73, 59),167
hsl(164, 88%, 51%),rgb(20, 240, 181),50
hsl(253, 87%, 46%),rgb(59, 15, 219),56

Generated: 2026-05-31 16:57:07
```
