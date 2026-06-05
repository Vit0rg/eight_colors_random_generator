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

![#FA0AC9](https://img.shields.io/badge/-%23FA0AC9?style=flat&logo=none) ![#C2098E](https://img.shields.io/badge/-%23C2098E?style=flat&logo=none) ![#5C1BE8](https://img.shields.io/badge/-%235C1BE8?style=flat&logo=none) ![#911B62](https://img.shields.io/badge/-%23911B62?style=flat&logo=none) ![#5DDD26](https://img.shields.io/badge/-%235DDD26?style=flat&logo=none) ![#9FCC51](https://img.shields.io/badge/-%239FCC51?style=flat&logo=none) ![#47B765](https://img.shields.io/badge/-%2347B765?style=flat&logo=none) ![#8B171B](https://img.shields.io/badge/-%238B171B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-05 11:18:11
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(312, 96%, 51%) | rgb(250, 10, 201)  | #FA0AC9 |200 |
| 2 | hsl(317, 91%, 40%) |  rgb(194, 9, 142)  | #C2098E |163 |
| 3 | hsl(259, 82%, 51%) |  rgb(92, 27, 232)  | #5C1BE8 | 99 |
| 4 | hsl(324, 68%, 34%) |  rgb(145, 27, 98)  | #911B62 |132 |
| 5 | hsl(102, 73%, 51%) |  rgb(93, 221, 38)  | #5DDD26 |113 |
| 6 | hsl(82, 55%, 56%)  | rgb(159, 204, 81)  | #9FCC51 |150 |
| 7 | hsl(136, 44%, 50%) | rgb(71, 183, 101)  | #47B765 | 78 |
| 8 | hsl(358, 71%, 32%) |  rgb(139, 23, 27)  | #8B171B |125 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(312, 96%, 51%),rgb(250, 10, 201),200
hsl(317, 91%, 40%),rgb(194, 9, 142),163
hsl(259, 82%, 51%),rgb(92, 27, 232),99
hsl(324, 68%, 34%),rgb(145, 27, 98),132
hsl(102, 73%, 51%),rgb(93, 221, 38),113
hsl(82, 55%, 56%),rgb(159, 204, 81),150
hsl(136, 44%, 50%),rgb(71, 183, 101),78
hsl(358, 71%, 32%),rgb(139, 23, 27),125

Generated: 2026-06-05 11:18:11
```
