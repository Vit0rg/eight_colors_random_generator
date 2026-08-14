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

![#BEEE76](https://img.shields.io/badge/-%23BEEE76?style=flat&logo=none) ![#07DCE3](https://img.shields.io/badge/-%2307DCE3?style=flat&logo=none) ![#975B39](https://img.shields.io/badge/-%23975B39?style=flat&logo=none) ![#0D9041](https://img.shields.io/badge/-%230D9041?style=flat&logo=none) ![#8A223C](https://img.shields.io/badge/-%238A223C?style=flat&logo=none) ![#E5805B](https://img.shields.io/badge/-%23E5805B?style=flat&logo=none) ![#C2F14A](https://img.shields.io/badge/-%23C2F14A?style=flat&logo=none) ![#B71F2E](https://img.shields.io/badge/-%23B71F2E?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-14 01:07:48
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(84, 78%, 70%)  | rgb(190, 238, 118) | #BEEE76 |192 |
| 2 | hsl(182, 94%, 46%) |  rgb(7, 220, 227)  | #07DCE3 | 44 |
| 3 | hsl(22, 45%, 41%)  |  rgb(151, 91, 57)  | #975B39 |137 |
| 4 | hsl(144, 83%, 31%) |  rgb(13, 144, 65)  | #0D9041 | 35 |
| 5 | hsl(345, 60%, 34%) |  rgb(138, 34, 60)  | #8A223C |131 |
| 6 | hsl(16, 73%, 63%)  | rgb(229, 128, 91)  | #E5805B |180 |
| 7 | hsl(77, 86%, 62%)  | rgb(194, 241, 74)  | #C2F14A |191 |
| 8 | hsl(354, 71%, 42%) |  rgb(183, 31, 46)  | #B71F2E |167 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(84, 78%, 70%),rgb(190, 238, 118),192
hsl(182, 94%, 46%),rgb(7, 220, 227),44
hsl(22, 45%, 41%),rgb(151, 91, 57),137
hsl(144, 83%, 31%),rgb(13, 144, 65),35
hsl(345, 60%, 34%),rgb(138, 34, 60),131
hsl(16, 73%, 63%),rgb(229, 128, 91),180
hsl(77, 86%, 62%),rgb(194, 241, 74),191
hsl(354, 71%, 42%),rgb(183, 31, 46),167

Generated: 2026-08-14 01:07:48
```
