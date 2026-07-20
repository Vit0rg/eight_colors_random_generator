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

![#B56FE1](https://img.shields.io/badge/-%23B56FE1?style=flat&logo=none) ![#DAA35C](https://img.shields.io/badge/-%23DAA35C?style=flat&logo=none) ![#68049F](https://img.shields.io/badge/-%2368049F?style=flat&logo=none) ![#B30384](https://img.shields.io/badge/-%23B30384?style=flat&logo=none) ![#7D591B](https://img.shields.io/badge/-%237D591B?style=flat&logo=none) ![#2D3AC7](https://img.shields.io/badge/-%232D3AC7?style=flat&logo=none) ![#AA69DD](https://img.shields.io/badge/-%23AA69DD?style=flat&logo=none) ![#35A3ED](https://img.shields.io/badge/-%2335A3ED?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-20 02:05:04
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(277, 66%, 66%) | rgb(181, 111, 225) | #B56FE1 |176 |
| 2 | hsl(34, 63%, 61%)  | rgb(218, 163, 92)  | #DAA35C |180 |
| 3 | hsl(279, 95%, 32%) |  rgb(104, 4, 159)  | #68049F | 91 |
| 4 | hsl(316, 96%, 36%) |  rgb(179, 3, 132)  | #B30384 |127 |
| 5 | hsl(38, 64%, 30%)  |  rgb(125, 89, 27)  | #7D591B |101 |
| 6 | hsl(235, 63%, 48%) |  rgb(45, 58, 199)  | #2D3AC7 | 62 |
| 7 | hsl(274, 63%, 64%) | rgb(170, 105, 221) | #AA69DD |140 |
| 8 | hsl(204, 84%, 57%) | rgb(53, 163, 237)  | #35A3ED | 75 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(277, 66%, 66%),rgb(181, 111, 225),176
hsl(34, 63%, 61%),rgb(218, 163, 92),180
hsl(279, 95%, 32%),rgb(104, 4, 159),91
hsl(316, 96%, 36%),rgb(179, 3, 132),127
hsl(38, 64%, 30%),rgb(125, 89, 27),101
hsl(235, 63%, 48%),rgb(45, 58, 199),62
hsl(274, 63%, 64%),rgb(170, 105, 221),140
hsl(204, 84%, 57%),rgb(53, 163, 237),75

Generated: 2026-07-20 02:05:04
```
