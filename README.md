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

![#3D76A2](https://img.shields.io/badge/-%233D76A2?style=flat&logo=none) ![#E6EE5D](https://img.shields.io/badge/-%23E6EE5D?style=flat&logo=none) ![#7C5021](https://img.shields.io/badge/-%237C5021?style=flat&logo=none) ![#C26A84](https://img.shields.io/badge/-%23C26A84?style=flat&logo=none) ![#2A66E8](https://img.shields.io/badge/-%232A66E8?style=flat&logo=none) ![#7C56D6](https://img.shields.io/badge/-%237C56D6?style=flat&logo=none) ![#B99031](https://img.shields.io/badge/-%23B99031?style=flat&logo=none) ![#41C633](https://img.shields.io/badge/-%2341C633?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-15 01:28:35
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(206, 45%, 44%) | rgb(61, 118, 162)  | #3D76A2 | 67 |
| 2 | hsl(63, 81%, 65%)  | rgb(230, 238, 93)  | #E6EE5D |192 |
| 3 | hsl(31, 58%, 31%)  |  rgb(124, 80, 33)  | #7C5021 |101 |
| 4 | hsl(342, 42%, 59%) | rgb(194, 106, 132) | #C26A84 |175 |
| 5 | hsl(221, 81%, 54%) | rgb(42, 102, 232)  | #2A66E8 | 69 |
| 6 | hsl(258, 61%, 59%) | rgb(124, 86, 214)  | #7C56D6 |104 |
| 7 | hsl(42, 58%, 46%)  | rgb(185, 144, 49)  | #B99031 |179 |
| 8 | hsl(114, 59%, 49%) |  rgb(65, 198, 51)  | #41C633 | 77 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(206, 45%, 44%),rgb(61, 118, 162),67
hsl(63, 81%, 65%),rgb(230, 238, 93),192
hsl(31, 58%, 31%),rgb(124, 80, 33),101
hsl(342, 42%, 59%),rgb(194, 106, 132),175
hsl(221, 81%, 54%),rgb(42, 102, 232),69
hsl(258, 61%, 59%),rgb(124, 86, 214),104
hsl(42, 58%, 46%),rgb(185, 144, 49),179
hsl(114, 59%, 49%),rgb(65, 198, 51),77

Generated: 2026-04-15 01:28:35
```
