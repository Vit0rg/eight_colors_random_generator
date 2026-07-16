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

![#A42B27](https://img.shields.io/badge/-%23A42B27?style=flat&logo=none) ![#057DDF](https://img.shields.io/badge/-%23057DDF?style=flat&logo=none) ![#A1169F](https://img.shields.io/badge/-%23A1169F?style=flat&logo=none) ![#B9CC5B](https://img.shields.io/badge/-%23B9CC5B?style=flat&logo=none) ![#63C7C9](https://img.shields.io/badge/-%2363C7C9?style=flat&logo=none) ![#9415B1](https://img.shields.io/badge/-%239415B1?style=flat&logo=none) ![#05A859](https://img.shields.io/badge/-%2305A859?style=flat&logo=none) ![#F1D72C](https://img.shields.io/badge/-%23F1D72C?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-16 17:03:28
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 |  hsl(2, 61%, 40%)  |  rgb(164, 43, 39)  | #A42B27 |131 |
| 2 | hsl(207, 95%, 45%) |  rgb(5, 125, 223)  | #057DDF | 32 |
| 3 | hsl(301, 76%, 36%) | rgb(161, 22, 159)  | #A1169F |127 |
| 4 | hsl(70, 53%, 58%)  | rgb(185, 204, 91)  | #B9CC5B |186 |
| 5 | hsl(181, 49%, 59%) | rgb(99, 199, 201)  | #63C7C9 |116 |
| 6 | hsl(289, 78%, 39%) | rgb(148, 21, 177)  | #9415B1 |127 |
| 7 | hsl(151, 94%, 34%) |  rgb(5, 168, 89)   | #05A859 | 36 |
| 8 | hsl(52, 88%, 56%)  | rgb(241, 215, 44)  | #F1D72C |221 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(2, 61%, 40%),rgb(164, 43, 39),131
hsl(207, 95%, 45%),rgb(5, 125, 223),32
hsl(301, 76%, 36%),rgb(161, 22, 159),127
hsl(70, 53%, 58%),rgb(185, 204, 91),186
hsl(181, 49%, 59%),rgb(99, 199, 201),116
hsl(289, 78%, 39%),rgb(148, 21, 177),127
hsl(151, 94%, 34%),rgb(5, 168, 89),36
hsl(52, 88%, 56%),rgb(241, 215, 44),221

Generated: 2026-07-16 17:03:28
```
