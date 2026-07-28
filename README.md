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

![#282A75](https://img.shields.io/badge/-%23282A75?style=flat&logo=none) ![#F7AD35](https://img.shields.io/badge/-%23F7AD35?style=flat&logo=none) ![#560AA7](https://img.shields.io/badge/-%23560AA7?style=flat&logo=none) ![#4B88B3](https://img.shields.io/badge/-%234B88B3?style=flat&logo=none) ![#D1AF8E](https://img.shields.io/badge/-%23D1AF8E?style=flat&logo=none) ![#77CA99](https://img.shields.io/badge/-%2377CA99?style=flat&logo=none) ![#997ED7](https://img.shields.io/badge/-%23997ED7?style=flat&logo=none) ![#5132EA](https://img.shields.io/badge/-%235132EA?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-28 10:25:13
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(238, 49%, 31%) |  rgb(40, 42, 117)  | #282A75 | 60 |
| 2 | hsl(37, 93%, 59%)  | rgb(247, 173, 53)  | #F7AD35 |215 |
| 3 | hsl(269, 88%, 35%) |  rgb(86, 10, 167)  | #560AA7 | 91 |
| 4 | hsl(205, 41%, 50%) | rgb(75, 136, 179)  | #4B88B3 | 73 |
| 5 | hsl(30, 42%, 69%)  | rgb(209, 175, 142) | #D1AF8E |181 |
| 6 | hsl(145, 44%, 63%) | rgb(119, 202, 153) | #77CA99 |115 |
| 7 | hsl(258, 53%, 67%) | rgb(153, 126, 215) | #997ED7 |140 |
| 8 | hsl(250, 82%, 56%) |  rgb(81, 50, 234)  | #5132EA | 99 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(238, 49%, 31%),rgb(40, 42, 117),60
hsl(37, 93%, 59%),rgb(247, 173, 53),215
hsl(269, 88%, 35%),rgb(86, 10, 167),91
hsl(205, 41%, 50%),rgb(75, 136, 179),73
hsl(30, 42%, 69%),rgb(209, 175, 142),181
hsl(145, 44%, 63%),rgb(119, 202, 153),115
hsl(258, 53%, 67%),rgb(153, 126, 215),140
hsl(250, 82%, 56%),rgb(81, 50, 234),99

Generated: 2026-07-28 10:25:13
```
