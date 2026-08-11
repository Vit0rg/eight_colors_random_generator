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

![#57F74E](https://img.shields.io/badge/-%2357F74E?style=flat&logo=none) ![#155ABB](https://img.shields.io/badge/-%23155ABB?style=flat&logo=none) ![#683DD5](https://img.shields.io/badge/-%23683DD5?style=flat&logo=none) ![#96350C](https://img.shields.io/badge/-%2396350C?style=flat&logo=none) ![#D486B9](https://img.shields.io/badge/-%23D486B9?style=flat&logo=none) ![#6C2C4F](https://img.shields.io/badge/-%236C2C4F?style=flat&logo=none) ![#38B304](https://img.shields.io/badge/-%2338B304?style=flat&logo=none) ![#0632C5](https://img.shields.io/badge/-%230632C5?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-11 01:00:17
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(117, 92%, 64%) |  rgb(87, 247, 78)  | #57F74E |120 |
| 2 | hsl(215, 79%, 41%) |  rgb(21, 90, 187)  | #155ABB | 32 |
| 3 | hsl(257, 65%, 54%) | rgb(104, 61, 213)  | #683DD5 | 98 |
| 4 | hsl(18, 85%, 32%)  |  rgb(150, 53, 12)  | #96350C |130 |
| 5 | hsl(321, 48%, 68%) | rgb(212, 134, 185) | #D486B9 |182 |
| 6 | hsl(327, 42%, 30%) |  rgb(108, 44, 79)  | #6C2C4F | 96 |
| 7 | hsl(102, 95%, 36%) |  rgb(56, 179, 4)   | #38B304 | 70 |
| 8 | hsl(226, 94%, 40%) |  rgb(6, 50, 197)   | #0632C5 | 26 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(117, 92%, 64%),rgb(87, 247, 78),120
hsl(215, 79%, 41%),rgb(21, 90, 187),32
hsl(257, 65%, 54%),rgb(104, 61, 213),98
hsl(18, 85%, 32%),rgb(150, 53, 12),130
hsl(321, 48%, 68%),rgb(212, 134, 185),182
hsl(327, 42%, 30%),rgb(108, 44, 79),96
hsl(102, 95%, 36%),rgb(56, 179, 4),70
hsl(226, 94%, 40%),rgb(6, 50, 197),26

Generated: 2026-08-11 01:00:17
```
