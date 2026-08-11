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

![#76DF7A](https://img.shields.io/badge/-%2376DF7A?style=flat&logo=none) ![#69D5DD](https://img.shields.io/badge/-%2369D5DD?style=flat&logo=none) ![#82492A](https://img.shields.io/badge/-%2382492A?style=flat&logo=none) ![#7A2484](https://img.shields.io/badge/-%237A2484?style=flat&logo=none) ![#53C43F](https://img.shields.io/badge/-%2353C43F?style=flat&logo=none) ![#8E550F](https://img.shields.io/badge/-%238E550F?style=flat&logo=none) ![#11CE9F](https://img.shields.io/badge/-%2311CE9F?style=flat&logo=none) ![#131785](https://img.shields.io/badge/-%23131785?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-11 08:43:25
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(122, 62%, 67%) | rgb(118, 223, 122) | #76DF7A |114 |
| 2 | hsl(184, 63%, 64%) | rgb(105, 213, 221) | #69D5DD |116 |
| 3 | hsl(21, 51%, 34%)  |  rgb(130, 73, 42)  | #82492A |131 |
| 4 | hsl(294, 57%, 33%) | rgb(122, 36, 132)  | #7A2484 | 97 |
| 5 | hsl(111, 53%, 51%) |  rgb(83, 196, 63)  | #53C43F |113 |
| 6 | hsl(33, 80%, 31%)  |  rgb(142, 85, 15)  | #8E550F |136 |
| 7 | hsl(165, 84%, 44%) | rgb(17, 206, 159)  | #11CE9F | 43 |
| 8 | hsl(238, 74%, 30%) |  rgb(19, 23, 133)  | #131785 | 19 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(122, 62%, 67%),rgb(118, 223, 122),114
hsl(184, 63%, 64%),rgb(105, 213, 221),116
hsl(21, 51%, 34%),rgb(130, 73, 42),131
hsl(294, 57%, 33%),rgb(122, 36, 132),97
hsl(111, 53%, 51%),rgb(83, 196, 63),113
hsl(33, 80%, 31%),rgb(142, 85, 15),136
hsl(165, 84%, 44%),rgb(17, 206, 159),43
hsl(238, 74%, 30%),rgb(19, 23, 133),19

Generated: 2026-08-11 08:43:25
```
