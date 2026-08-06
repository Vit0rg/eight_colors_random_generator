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

![#DB7742](https://img.shields.io/badge/-%23DB7742?style=flat&logo=none) ![#CD3B13](https://img.shields.io/badge/-%23CD3B13?style=flat&logo=none) ![#F4EC00](https://img.shields.io/badge/-%23F4EC00?style=flat&logo=none) ![#8C5111](https://img.shields.io/badge/-%238C5111?style=flat&logo=none) ![#B1A51F](https://img.shields.io/badge/-%23B1A51F?style=flat&logo=none) ![#112987](https://img.shields.io/badge/-%23112987?style=flat&logo=none) ![#0B009D](https://img.shields.io/badge/-%230B009D?style=flat&logo=none) ![#A7FD24](https://img.shields.io/badge/-%23A7FD24?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-06 10:28:31
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(21, 68%, 56%)  | rgb(219, 119, 66)  | #DB7742 |173 |
| 2 | hsl(13, 83%, 44%)  |  rgb(205, 59, 19)  | #CD3B13 |166 |
| 3 | hsl(58, 100%, 48%) |  rgb(244, 236, 0)  | #F4EC00 |226 |
| 4 | hsl(31, 78%, 31%)  |  rgb(140, 81, 17)  | #8C5111 |136 |
| 5 | hsl(55, 70%, 41%)  | rgb(177, 165, 31)  | #B1A51F |143 |
| 6 | hsl(228, 77%, 30%) |  rgb(17, 41, 135)  | #112987 | 25 |
| 7 | hsl(244, 99%, 31%) |  rgb(11, 0, 157)   | #0B009D | 19 |
| 8 | hsl(84, 99%, 57%)  | rgb(167, 253, 36)  | #A7FD24 |155 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(21, 68%, 56%),rgb(219, 119, 66),173
hsl(13, 83%, 44%),rgb(205, 59, 19),166
hsl(58, 100%, 48%),rgb(244, 236, 0),226
hsl(31, 78%, 31%),rgb(140, 81, 17),136
hsl(55, 70%, 41%),rgb(177, 165, 31),143
hsl(228, 77%, 30%),rgb(17, 41, 135),25
hsl(244, 99%, 31%),rgb(11, 0, 157),19
hsl(84, 99%, 57%),rgb(167, 253, 36),155

Generated: 2026-08-06 10:28:31
```
