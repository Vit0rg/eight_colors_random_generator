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

![#29CB29](https://img.shields.io/badge/-%2329CB29?style=flat&logo=none) ![#7558BF](https://img.shields.io/badge/-%237558BF?style=flat&logo=none) ![#CD22EB](https://img.shields.io/badge/-%23CD22EB?style=flat&logo=none) ![#29E622](https://img.shields.io/badge/-%2329E622?style=flat&logo=none) ![#C0C968](https://img.shields.io/badge/-%23C0C968?style=flat&logo=none) ![#F1178F](https://img.shields.io/badge/-%23F1178F?style=flat&logo=none) ![#85592C](https://img.shields.io/badge/-%2385592C?style=flat&logo=none) ![#56921A](https://img.shields.io/badge/-%2356921A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-07 17:41:40
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(120, 66%, 48%) |  rgb(41, 203, 41)  | #29CB29 | 77 |
| 2 | hsl(257, 45%, 55%) | rgb(117, 88, 191)  | #7558BF |104 |
| 3 | hsl(291, 84%, 53%) | rgb(205, 34, 235)  | #CD22EB |171 |
| 4 | hsl(118, 80%, 52%) |  rgb(41, 230, 34)  | #29E622 | 77 |
| 5 | hsl(66, 48%, 60%)  | rgb(192, 201, 104) | #C0C968 |186 |
| 6 | hsl(327, 89%, 52%) | rgb(241, 23, 143)  | #F1178F |199 |
| 7 | hsl(30, 50%, 35%)  |  rgb(133, 89, 44)  | #85592C |137 |
| 8 | hsl(90, 69%, 34%)  |  rgb(86, 146, 26)  | #56921A |107 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(120, 66%, 48%),rgb(41, 203, 41),77
hsl(257, 45%, 55%),rgb(117, 88, 191),104
hsl(291, 84%, 53%),rgb(205, 34, 235),171
hsl(118, 80%, 52%),rgb(41, 230, 34),77
hsl(66, 48%, 60%),rgb(192, 201, 104),186
hsl(327, 89%, 52%),rgb(241, 23, 143),199
hsl(30, 50%, 35%),rgb(133, 89, 44),137
hsl(90, 69%, 34%),rgb(86, 146, 26),107

Generated: 2026-05-07 17:41:40
```
