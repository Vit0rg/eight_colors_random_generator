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

![#D2342C](https://img.shields.io/badge/-%23D2342C?style=flat&logo=none) ![#12149B](https://img.shields.io/badge/-%2312149B?style=flat&logo=none) ![#3D25B6](https://img.shields.io/badge/-%233D25B6?style=flat&logo=none) ![#889904](https://img.shields.io/badge/-%23889904?style=flat&logo=none) ![#6D059D](https://img.shields.io/badge/-%236D059D?style=flat&logo=none) ![#1D4680](https://img.shields.io/badge/-%231D4680?style=flat&logo=none) ![#0E269E](https://img.shields.io/badge/-%230E269E?style=flat&logo=none) ![#B8097D](https://img.shields.io/badge/-%23B8097D?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-22 02:50:27
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 |  hsl(3, 65%, 50%)  |  rgb(210, 52, 44)  | #D2342C |167 |
| 2 | hsl(239, 79%, 34%) |  rgb(18, 20, 155)  | #12149B | 19 |
| 3 | hsl(250, 66%, 43%) |  rgb(61, 37, 182)  | #3D25B6 | 62 |
| 4 | hsl(67, 94%, 31%)  |  rgb(136, 153, 4)  | #889904 |142 |
| 5 | hsl(281, 93%, 32%) |  rgb(109, 5, 157)  | #6D059D | 91 |
| 6 | hsl(215, 63%, 31%) |  rgb(29, 70, 128)  | #1D4680 | 61 |
| 7 | hsl(230, 83%, 34%) |  rgb(14, 38, 158)  | #0E269E | 25 |
| 8 | hsl(320, 90%, 38%) |  rgb(184, 9, 125)  | #B8097D |162 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(3, 65%, 50%),rgb(210, 52, 44),167
hsl(239, 79%, 34%),rgb(18, 20, 155),19
hsl(250, 66%, 43%),rgb(61, 37, 182),62
hsl(67, 94%, 31%),rgb(136, 153, 4),142
hsl(281, 93%, 32%),rgb(109, 5, 157),91
hsl(215, 63%, 31%),rgb(29, 70, 128),61
hsl(230, 83%, 34%),rgb(14, 38, 158),25
hsl(320, 90%, 38%),rgb(184, 9, 125),162

Generated: 2026-06-22 02:50:27
```
