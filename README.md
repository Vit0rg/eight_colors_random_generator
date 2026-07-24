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

![#C96DC3](https://img.shields.io/badge/-%23C96DC3?style=flat&logo=none) ![#2BAF59](https://img.shields.io/badge/-%232BAF59?style=flat&logo=none) ![#A02B92](https://img.shields.io/badge/-%23A02B92?style=flat&logo=none) ![#B8409C](https://img.shields.io/badge/-%23B8409C?style=flat&logo=none) ![#1AF92C](https://img.shields.io/badge/-%231AF92C?style=flat&logo=none) ![#967507](https://img.shields.io/badge/-%23967507?style=flat&logo=none) ![#36E739](https://img.shields.io/badge/-%2336E739?style=flat&logo=none) ![#2E288A](https://img.shields.io/badge/-%232E288A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-24 17:20:21
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(304, 46%, 61%) | rgb(201, 109, 195) | #C96DC3 |176 |
| 2 | hsl(141, 60%, 43%) |  rgb(43, 175, 89)  | #2BAF59 | 72 |
| 3 | hsl(307, 57%, 40%) | rgb(160, 43, 146)  | #A02B92 |133 |
| 4 | hsl(314, 48%, 49%) | rgb(184, 64, 156)  | #B8409C |169 |
| 5 | hsl(125, 95%, 54%) |  rgb(26, 249, 44)  | #1AF92C | 83 |
| 6 | hsl(46, 91%, 31%)  |  rgb(150, 117, 7)  | #967507 |136 |
| 7 | hsl(121, 79%, 56%) |  rgb(54, 231, 57)  | #36E739 | 83 |
| 8 | hsl(244, 55%, 35%) |  rgb(46, 40, 138)  | #2E288A | 61 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(304, 46%, 61%),rgb(201, 109, 195),176
hsl(141, 60%, 43%),rgb(43, 175, 89),72
hsl(307, 57%, 40%),rgb(160, 43, 146),133
hsl(314, 48%, 49%),rgb(184, 64, 156),169
hsl(125, 95%, 54%),rgb(26, 249, 44),83
hsl(46, 91%, 31%),rgb(150, 117, 7),136
hsl(121, 79%, 56%),rgb(54, 231, 57),83
hsl(244, 55%, 35%),rgb(46, 40, 138),61

Generated: 2026-07-24 17:20:21
```
