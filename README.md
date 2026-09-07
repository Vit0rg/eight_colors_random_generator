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

![#8FCD13](https://img.shields.io/badge/-%238FCD13?style=flat&logo=none) ![#60CDDC](https://img.shields.io/badge/-%2360CDDC?style=flat&logo=none) ![#375E94](https://img.shields.io/badge/-%23375E94?style=flat&logo=none) ![#842366](https://img.shields.io/badge/-%23842366?style=flat&logo=none) ![#D67A19](https://img.shields.io/badge/-%23D67A19?style=flat&logo=none) ![#C13BD2](https://img.shields.io/badge/-%23C13BD2?style=flat&logo=none) ![#4AE004](https://img.shields.io/badge/-%234AE004?style=flat&logo=none) ![#DA0174](https://img.shields.io/badge/-%23DA0174?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-07 19:29:22
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(80, 83%, 44%)  | rgb(143, 205, 19)  | #8FCD13 |148 |
| 2 | hsl(187, 64%, 62%) | rgb(96, 205, 220)  | #60CDDC |116 |
| 3 | hsl(215, 46%, 40%) |  rgb(55, 94, 148)  | #375E94 | 67 |
| 4 | hsl(319, 58%, 33%) | rgb(132, 35, 102)  | #842366 |132 |
| 5 | hsl(31, 79%, 47%)  | rgb(214, 122, 25)  | #D67A19 |172 |
| 6 | hsl(293, 63%, 53%) | rgb(193, 59, 210)  | #C13BD2 |170 |
| 7 | hsl(101, 96%, 45%) |  rgb(74, 224, 4)   | #4AE004 | 76 |
| 8 | hsl(328, 99%, 43%) |  rgb(218, 1, 116)  | #DA0174 |162 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(80, 83%, 44%),rgb(143, 205, 19),148
hsl(187, 64%, 62%),rgb(96, 205, 220),116
hsl(215, 46%, 40%),rgb(55, 94, 148),67
hsl(319, 58%, 33%),rgb(132, 35, 102),132
hsl(31, 79%, 47%),rgb(214, 122, 25),172
hsl(293, 63%, 53%),rgb(193, 59, 210),170
hsl(101, 96%, 45%),rgb(74, 224, 4),76
hsl(328, 99%, 43%),rgb(218, 1, 116),162

Generated: 2026-09-07 19:29:22
```
