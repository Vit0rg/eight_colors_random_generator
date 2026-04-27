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

![#2DFA7B](https://img.shields.io/badge/-%232DFA7B?style=flat&logo=none) ![#2B0AA2](https://img.shields.io/badge/-%232B0AA2?style=flat&logo=none) ![#1A438D](https://img.shields.io/badge/-%231A438D?style=flat&logo=none) ![#75FC07](https://img.shields.io/badge/-%2375FC07?style=flat&logo=none) ![#22F526](https://img.shields.io/badge/-%2322F526?style=flat&logo=none) ![#2E99A3](https://img.shields.io/badge/-%232E99A3?style=flat&logo=none) ![#C53F1A](https://img.shields.io/badge/-%23C53F1A?style=flat&logo=none) ![#3344B1](https://img.shields.io/badge/-%233344B1?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-27 10:07:04
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(143, 96%, 58%) | rgb(45, 250, 123)  | #2DFA7B | 84 |
| 2 | hsl(253, 88%, 34%) |  rgb(43, 10, 162)  | #2B0AA2 | 55 |
| 3 | hsl(219, 68%, 33%) |  rgb(26, 67, 141)  | #1A438D | 61 |
| 4 | hsl(93, 98%, 51%)  |  rgb(117, 252, 7)  | #75FC07 |118 |
| 5 | hsl(121, 92%, 55%) |  rgb(34, 245, 38)  | #22F526 | 83 |
| 6 | hsl(185, 56%, 41%) | rgb(46, 153, 163)  | #2E99A3 | 73 |
| 7 | hsl(13, 76%, 44%)  |  rgb(197, 63, 26)  | #C53F1A |167 |
| 8 | hsl(232, 55%, 45%) |  rgb(51, 68, 177)  | #3344B1 | 61 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(143, 96%, 58%),rgb(45, 250, 123),84
hsl(253, 88%, 34%),rgb(43, 10, 162),55
hsl(219, 68%, 33%),rgb(26, 67, 141),61
hsl(93, 98%, 51%),rgb(117, 252, 7),118
hsl(121, 92%, 55%),rgb(34, 245, 38),83
hsl(185, 56%, 41%),rgb(46, 153, 163),73
hsl(13, 76%, 44%),rgb(197, 63, 26),167
hsl(232, 55%, 45%),rgb(51, 68, 177),61

Generated: 2026-04-27 10:07:04
```
