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

![#22A932](https://img.shields.io/badge/-%2322A932?style=flat&logo=none) ![#86B959](https://img.shields.io/badge/-%2386B959?style=flat&logo=none) ![#28A70F](https://img.shields.io/badge/-%2328A70F?style=flat&logo=none) ![#B24C89](https://img.shields.io/badge/-%23B24C89?style=flat&logo=none) ![#10F861](https://img.shields.io/badge/-%2310F861?style=flat&logo=none) ![#F89501](https://img.shields.io/badge/-%23F89501?style=flat&logo=none) ![#7ADBBB](https://img.shields.io/badge/-%237ADBBB?style=flat&logo=none) ![#785EBA](https://img.shields.io/badge/-%23785EBA?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-03 11:12:32
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(127, 66%, 40%) |  rgb(34, 169, 50)  | #22A932 | 71 |
| 2 | hsl(92, 41%, 54%)  | rgb(134, 185, 89)  | #86B959 |150 |
| 3 | hsl(110, 83%, 36%) |  rgb(40, 167, 15)  | #28A70F | 70 |
| 4 | hsl(324, 40%, 50%) | rgb(178, 76, 137)  | #B24C89 |133 |
| 5 | hsl(141, 95%, 52%) |  rgb(16, 248, 97)  | #10F861 | 48 |
| 6 | hsl(36, 99%, 49%)  |  rgb(248, 149, 1)  | #F89501 |214 |
| 7 | hsl(160, 58%, 67%) | rgb(122, 219, 187) | #7ADBBB |116 |
| 8 | hsl(257, 40%, 55%) | rgb(120, 94, 186)  | #785EBA |104 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(127, 66%, 40%),rgb(34, 169, 50),71
hsl(92, 41%, 54%),rgb(134, 185, 89),150
hsl(110, 83%, 36%),rgb(40, 167, 15),70
hsl(324, 40%, 50%),rgb(178, 76, 137),133
hsl(141, 95%, 52%),rgb(16, 248, 97),48
hsl(36, 99%, 49%),rgb(248, 149, 1),214
hsl(160, 58%, 67%),rgb(122, 219, 187),116
hsl(257, 40%, 55%),rgb(120, 94, 186),104

Generated: 2026-08-03 11:12:32
```
