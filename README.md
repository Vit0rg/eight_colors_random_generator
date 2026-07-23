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

![#CD0864](https://img.shields.io/badge/-%23CD0864?style=flat&logo=none) ![#85C614](https://img.shields.io/badge/-%2385C614?style=flat&logo=none) ![#1928FF](https://img.shields.io/badge/-%231928FF?style=flat&logo=none) ![#753C23](https://img.shields.io/badge/-%23753C23?style=flat&logo=none) ![#BD5A71](https://img.shields.io/badge/-%23BD5A71?style=flat&logo=none) ![#B250B4](https://img.shields.io/badge/-%23B250B4?style=flat&logo=none) ![#DD2B40](https://img.shields.io/badge/-%23DD2B40?style=flat&logo=none) ![#DD423A](https://img.shields.io/badge/-%23DD423A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-23 01:54:29
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(332, 92%, 42%) |  rgb(205, 8, 100)  | #CD0864 |162 |
| 2 | hsl(82, 81%, 43%)  | rgb(133, 198, 20)  | #85C614 |148 |
| 3 |hsl(236, 100%, 55%) |  rgb(25, 40, 255)  | #1928FF | 27 |
| 4 | hsl(18, 53%, 30%)  |  rgb(117, 60, 35)  | #753C23 | 95 |
| 5 | hsl(346, 43%, 55%) | rgb(189, 90, 113)  | #BD5A71 |174 |
| 6 | hsl(299, 40%, 51%) | rgb(178, 80, 180)  | #B250B4 |140 |
| 7 | hsl(353, 73%, 52%) |  rgb(221, 43, 64)  | #DD2B40 |167 |
| 8 |  hsl(3, 71%, 55%)  |  rgb(221, 66, 58)  | #DD423A |167 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(332, 92%, 42%),rgb(205, 8, 100),162
hsl(82, 81%, 43%),rgb(133, 198, 20),148
hsl(236, 100%, 55%),rgb(25, 40, 255),27
hsl(18, 53%, 30%),rgb(117, 60, 35),95
hsl(346, 43%, 55%),rgb(189, 90, 113),174
hsl(299, 40%, 51%),rgb(178, 80, 180),140
hsl(353, 73%, 52%),rgb(221, 43, 64),167
hsl(3, 71%, 55%),rgb(221, 66, 58),167

Generated: 2026-07-23 01:54:29
```
