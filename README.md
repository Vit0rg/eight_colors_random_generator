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

![#7C5335](https://img.shields.io/badge/-%237C5335?style=flat&logo=none) ![#BE5C46](https://img.shields.io/badge/-%23BE5C46?style=flat&logo=none) ![#F85762](https://img.shields.io/badge/-%23F85762?style=flat&logo=none) ![#32F549](https://img.shields.io/badge/-%2332F549?style=flat&logo=none) ![#29836B](https://img.shields.io/badge/-%2329836B?style=flat&logo=none) ![#D943C0](https://img.shields.io/badge/-%23D943C0?style=flat&logo=none) ![#DA62B6](https://img.shields.io/badge/-%23DA62B6?style=flat&logo=none) ![#D5DE71](https://img.shields.io/badge/-%23D5DE71?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-06 02:13:09
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(25, 40%, 35%)  |  rgb(124, 83, 53)  | #7C5335 |101 |
| 2 | hsl(11, 48%, 51%)  |  rgb(190, 92, 70)  | #BE5C46 |173 |
| 3 | hsl(356, 93%, 66%) |  rgb(248, 87, 98)  | #F85762 |210 |
| 4 | hsl(127, 91%, 58%) |  rgb(50, 245, 73)  | #32F549 | 83 |
| 5 | hsl(164, 52%, 34%) | rgb(41, 131, 107)  | #29836B | 72 |
| 6 | hsl(310, 67%, 56%) | rgb(217, 67, 192)  | #D943C0 |170 |
| 7 | hsl(318, 62%, 62%) | rgb(218, 98, 182)  | #DA62B6 |176 |
| 8 | hsl(65, 63%, 66%)  | rgb(213, 222, 113) | #D5DE71 |186 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(25, 40%, 35%),rgb(124, 83, 53),101
hsl(11, 48%, 51%),rgb(190, 92, 70),173
hsl(356, 93%, 66%),rgb(248, 87, 98),210
hsl(127, 91%, 58%),rgb(50, 245, 73),83
hsl(164, 52%, 34%),rgb(41, 131, 107),72
hsl(310, 67%, 56%),rgb(217, 67, 192),170
hsl(318, 62%, 62%),rgb(218, 98, 182),176
hsl(65, 63%, 66%),rgb(213, 222, 113),186

Generated: 2026-06-06 02:13:09
```
