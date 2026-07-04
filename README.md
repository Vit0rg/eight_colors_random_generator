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

![#1EA6AD](https://img.shields.io/badge/-%231EA6AD?style=flat&logo=none) ![#06F326](https://img.shields.io/badge/-%2306F326?style=flat&logo=none) ![#2CC833](https://img.shields.io/badge/-%232CC833?style=flat&logo=none) ![#DC9D88](https://img.shields.io/badge/-%23DC9D88?style=flat&logo=none) ![#2EF990](https://img.shields.io/badge/-%232EF990?style=flat&logo=none) ![#383889](https://img.shields.io/badge/-%23383889?style=flat&logo=none) ![#75DBD4](https://img.shields.io/badge/-%2375DBD4?style=flat&logo=none) ![#B483D7](https://img.shields.io/badge/-%23B483D7?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-04 16:54:30
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(183, 70%, 40%) | rgb(30, 166, 173)  | #1EA6AD | 73 |
| 2 | hsl(128, 95%, 49%) |  rgb(6, 243, 38)   | #06F326 | 47 |
| 3 | hsl(123, 64%, 48%) |  rgb(44, 200, 51)  | #2CC833 | 77 |
| 4 | hsl(15, 55%, 70%)  | rgb(220, 157, 136) | #DC9D88 |181 |
| 5 | hsl(149, 95%, 58%) | rgb(46, 249, 144)  | #2EF990 | 85 |
| 6 | hsl(240, 42%, 38%) |  rgb(56, 56, 137)  | #383889 | 61 |
| 7 | hsl(176, 59%, 66%) | rgb(117, 219, 212) | #75DBD4 |116 |
| 8 | hsl(275, 51%, 68%) | rgb(180, 131, 215) | #B483D7 |182 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(183, 70%, 40%),rgb(30, 166, 173),73
hsl(128, 95%, 49%),rgb(6, 243, 38),47
hsl(123, 64%, 48%),rgb(44, 200, 51),77
hsl(15, 55%, 70%),rgb(220, 157, 136),181
hsl(149, 95%, 58%),rgb(46, 249, 144),85
hsl(240, 42%, 38%),rgb(56, 56, 137),61
hsl(176, 59%, 66%),rgb(117, 219, 212),116
hsl(275, 51%, 68%),rgb(180, 131, 215),182

Generated: 2026-07-04 16:54:30
```
