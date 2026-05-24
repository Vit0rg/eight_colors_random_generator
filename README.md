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

![#2A5DBB](https://img.shields.io/badge/-%232A5DBB?style=flat&logo=none) ![#3BDC8C](https://img.shields.io/badge/-%233BDC8C?style=flat&logo=none) ![#612E84](https://img.shields.io/badge/-%23612E84?style=flat&logo=none) ![#8A661D](https://img.shields.io/badge/-%238A661D?style=flat&logo=none) ![#CBDE39](https://img.shields.io/badge/-%23CBDE39?style=flat&logo=none) ![#9C9C39](https://img.shields.io/badge/-%239C9C39?style=flat&logo=none) ![#E5B651](https://img.shields.io/badge/-%23E5B651?style=flat&logo=none) ![#88A42C](https://img.shields.io/badge/-%2388A42C?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-24 09:47:57
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(219, 63%, 45%) |  rgb(42, 93, 187)  | #2A5DBB | 68 |
| 2 | hsl(150, 70%, 55%) | rgb(59, 220, 140)  | #3BDC8C | 79 |
| 3 | hsl(276, 48%, 35%) |  rgb(97, 46, 132)  | #612E84 | 97 |
| 4 | hsl(40, 65%, 33%)  | rgb(138, 102, 29)  | #8A661D |137 |
| 5 | hsl(67, 72%, 55%)  | rgb(203, 222, 57)  | #CBDE39 |185 |
| 6 | hsl(60, 46%, 42%)  | rgb(156, 156, 57)  | #9C9C39 |143 |
| 7 | hsl(41, 74%, 61%)  | rgb(229, 182, 81)  | #E5B651 |186 |
| 8 | hsl(74, 57%, 41%)  | rgb(136, 164, 44)  | #88A42C |143 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(219, 63%, 45%),rgb(42, 93, 187),68
hsl(150, 70%, 55%),rgb(59, 220, 140),79
hsl(276, 48%, 35%),rgb(97, 46, 132),97
hsl(40, 65%, 33%),rgb(138, 102, 29),137
hsl(67, 72%, 55%),rgb(203, 222, 57),185
hsl(60, 46%, 42%),rgb(156, 156, 57),143
hsl(41, 74%, 61%),rgb(229, 182, 81),186
hsl(74, 57%, 41%),rgb(136, 164, 44),143

Generated: 2026-05-24 09:47:57
```
