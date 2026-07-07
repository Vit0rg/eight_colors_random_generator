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

![#923961](https://img.shields.io/badge/-%23923961?style=flat&logo=none) ![#1FB704](https://img.shields.io/badge/-%231FB704?style=flat&logo=none) ![#C4AA4F](https://img.shields.io/badge/-%23C4AA4F?style=flat&logo=none) ![#90EE52](https://img.shields.io/badge/-%2390EE52?style=flat&logo=none) ![#7C2D2B](https://img.shields.io/badge/-%237C2D2B?style=flat&logo=none) ![#2D9D0A](https://img.shields.io/badge/-%232D9D0A?style=flat&logo=none) ![#C605A9](https://img.shields.io/badge/-%23C605A9?style=flat&logo=none) ![#B01B77](https://img.shields.io/badge/-%23B01B77?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-07 17:51:53
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(333, 44%, 40%) |  rgb(146, 57, 97)  | #923961 |132 |
| 2 | hsl(111, 95%, 37%) |  rgb(31, 183, 4)   | #1FB704 | 76 |
| 3 | hsl(47, 50%, 54%)  | rgb(196, 170, 79)  | #C4AA4F |180 |
| 4 | hsl(96, 83%, 63%)  | rgb(144, 238, 82)  | #90EE52 |156 |
| 5 |  hsl(1, 48%, 33%)  |  rgb(124, 45, 43)  | #7C2D2B | 95 |
| 6 | hsl(106, 87%, 33%) |  rgb(45, 157, 10)  | #2D9D0A | 70 |
| 7 | hsl(309, 95%, 40%) |  rgb(198, 5, 169)  | #C605A9 |163 |
| 8 | hsl(323, 73%, 40%) | rgb(176, 27, 119)  | #B01B77 |132 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(333, 44%, 40%),rgb(146, 57, 97),132
hsl(111, 95%, 37%),rgb(31, 183, 4),76
hsl(47, 50%, 54%),rgb(196, 170, 79),180
hsl(96, 83%, 63%),rgb(144, 238, 82),156
hsl(1, 48%, 33%),rgb(124, 45, 43),95
hsl(106, 87%, 33%),rgb(45, 157, 10),70
hsl(309, 95%, 40%),rgb(198, 5, 169),163
hsl(323, 73%, 40%),rgb(176, 27, 119),132

Generated: 2026-07-07 17:51:53
```
