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

![#E877C6](https://img.shields.io/badge/-%23E877C6?style=flat&logo=none) ![#E97B5C](https://img.shields.io/badge/-%23E97B5C?style=flat&logo=none) ![#8949CE](https://img.shields.io/badge/-%238949CE?style=flat&logo=none) ![#ED2A61](https://img.shields.io/badge/-%23ED2A61?style=flat&logo=none) ![#AEB34B](https://img.shields.io/badge/-%23AEB34B?style=flat&logo=none) ![#58B3CE](https://img.shields.io/badge/-%2358B3CE?style=flat&logo=none) ![#2DD76E](https://img.shields.io/badge/-%232DD76E?style=flat&logo=none) ![#C2D575](https://img.shields.io/badge/-%23C2D575?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-21 16:49:18
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(318, 72%, 69%) | rgb(232, 119, 198) | #E877C6 |212 |
| 2 | hsl(13, 77%, 64%)  | rgb(233, 123, 92)  | #E97B5C |210 |
| 3 | hsl(269, 58%, 55%) | rgb(137, 73, 206)  | #8949CE |134 |
| 4 | hsl(343, 85%, 55%) |  rgb(237, 42, 97)  | #ED2A61 |204 |
| 5 | hsl(63, 41%, 50%)  | rgb(174, 179, 75)  | #AEB34B |143 |
| 6 | hsl(194, 55%, 58%) | rgb(88, 179, 206)  | #58B3CE |110 |
| 7 | hsl(143, 68%, 51%) | rgb(45, 215, 110)  | #2DD76E | 78 |
| 8 | hsl(72, 54%, 65%)  | rgb(194, 213, 117) | #C2D575 |186 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(318, 72%, 69%),rgb(232, 119, 198),212
hsl(13, 77%, 64%),rgb(233, 123, 92),210
hsl(269, 58%, 55%),rgb(137, 73, 206),134
hsl(343, 85%, 55%),rgb(237, 42, 97),204
hsl(63, 41%, 50%),rgb(174, 179, 75),143
hsl(194, 55%, 58%),rgb(88, 179, 206),110
hsl(143, 68%, 51%),rgb(45, 215, 110),78
hsl(72, 54%, 65%),rgb(194, 213, 117),186

Generated: 2026-04-21 16:49:18
```
