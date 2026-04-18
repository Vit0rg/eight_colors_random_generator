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

![#30687C](https://img.shields.io/badge/-%2330687C?style=flat&logo=none) ![#2B7C35](https://img.shields.io/badge/-%232B7C35?style=flat&logo=none) ![#C5D08A](https://img.shields.io/badge/-%23C5D08A?style=flat&logo=none) ![#EF4B0F](https://img.shields.io/badge/-%23EF4B0F?style=flat&logo=none) ![#78D7CB](https://img.shields.io/badge/-%2378D7CB?style=flat&logo=none) ![#CFA81A](https://img.shields.io/badge/-%23CFA81A?style=flat&logo=none) ![#9B972B](https://img.shields.io/badge/-%239B972B?style=flat&logo=none) ![#895532](https://img.shields.io/badge/-%23895532?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-18 01:25:42
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(196, 44%, 34%) | rgb(48, 104, 124)  | #30687C | 66 |
| 2 | hsl(127, 48%, 33%) |  rgb(43, 124, 53)  | #2B7C35 | 65 |
| 3 | hsl(69, 43%, 68%)  | rgb(197, 208, 138) | #C5D08A |187 |
| 4 | hsl(16, 88%, 50%)  |  rgb(239, 75, 15)  | #EF4B0F |202 |
| 5 | hsl(172, 55%, 66%) | rgb(120, 215, 203) | #78D7CB |116 |
| 6 | hsl(47, 77%, 46%)  | rgb(207, 168, 26)  | #CFA81A |179 |
| 7 | hsl(58, 56%, 39%)  | rgb(155, 151, 43)  | #9B972B |143 |
| 8 | hsl(24, 46%, 37%)  |  rgb(137, 85, 50)  | #895532 |137 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(196, 44%, 34%),rgb(48, 104, 124),66
hsl(127, 48%, 33%),rgb(43, 124, 53),65
hsl(69, 43%, 68%),rgb(197, 208, 138),187
hsl(16, 88%, 50%),rgb(239, 75, 15),202
hsl(172, 55%, 66%),rgb(120, 215, 203),116
hsl(47, 77%, 46%),rgb(207, 168, 26),179
hsl(58, 56%, 39%),rgb(155, 151, 43),143
hsl(24, 46%, 37%),rgb(137, 85, 50),137

Generated: 2026-04-18 01:25:42
```
