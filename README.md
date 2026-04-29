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

![#B44BE1](https://img.shields.io/badge/-%23B44BE1?style=flat&logo=none) ![#C13871](https://img.shields.io/badge/-%23C13871?style=flat&logo=none) ![#423DDB](https://img.shields.io/badge/-%23423DDB?style=flat&logo=none) ![#41A858](https://img.shields.io/badge/-%2341A858?style=flat&logo=none) ![#E14BC3](https://img.shields.io/badge/-%23E14BC3?style=flat&logo=none) ![#78EE24](https://img.shields.io/badge/-%2378EE24?style=flat&logo=none) ![#130DBE](https://img.shields.io/badge/-%23130DBE?style=flat&logo=none) ![#65EBBA](https://img.shields.io/badge/-%2365EBBA?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-29 17:18:43
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(282, 72%, 59%) | rgb(180, 75, 225)  | #B44BE1 |170 |
| 2 | hsl(335, 55%, 49%) | rgb(193, 56, 113)  | #C13871 |168 |
| 3 | hsl(242, 69%, 55%) |  rgb(66, 61, 219)  | #423DDB | 62 |
| 4 | hsl(133, 44%, 46%) |  rgb(65, 168, 88)  | #41A858 | 72 |
| 5 | hsl(312, 72%, 59%) | rgb(225, 75, 195)  | #E14BC3 |170 |
| 6 | hsl(95, 86%, 54%)  | rgb(120, 238, 36)  | #78EE24 |119 |
| 7 | hsl(242, 87%, 40%) |  rgb(19, 13, 190)  | #130DBE | 20 |
| 8 | hsl(158, 77%, 66%) | rgb(101, 235, 186) | #65EBBA |122 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(282, 72%, 59%),rgb(180, 75, 225),170
hsl(335, 55%, 49%),rgb(193, 56, 113),168
hsl(242, 69%, 55%),rgb(66, 61, 219),62
hsl(133, 44%, 46%),rgb(65, 168, 88),72
hsl(312, 72%, 59%),rgb(225, 75, 195),170
hsl(95, 86%, 54%),rgb(120, 238, 36),119
hsl(242, 87%, 40%),rgb(19, 13, 190),20
hsl(158, 77%, 66%),rgb(101, 235, 186),122

Generated: 2026-04-29 17:18:43
```
