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

![#C048B2](https://img.shields.io/badge/-%23C048B2?style=flat&logo=none) ![#804327](https://img.shields.io/badge/-%23804327?style=flat&logo=none) ![#F10352](https://img.shields.io/badge/-%23F10352?style=flat&logo=none) ![#9BC96D](https://img.shields.io/badge/-%239BC96D?style=flat&logo=none) ![#1E6BEF](https://img.shields.io/badge/-%231E6BEF?style=flat&logo=none) ![#3591BE](https://img.shields.io/badge/-%233591BE?style=flat&logo=none) ![#F78935](https://img.shields.io/badge/-%23F78935?style=flat&logo=none) ![#CE12E7](https://img.shields.io/badge/-%23CE12E7?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-27 16:57:58
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(307, 49%, 52%) | rgb(192, 72, 178)  | #C048B2 |169 |
| 2 | hsl(19, 53%, 33%)  |  rgb(128, 67, 39)  | #804327 |131 |
| 3 | hsl(340, 97%, 48%) |  rgb(241, 3, 82)   | #F10352 |198 |
| 4 | hsl(90, 46%, 61%)  | rgb(155, 201, 109) | #9BC96D |150 |
| 5 | hsl(218, 87%, 53%) | rgb(30, 107, 239)  | #1E6BEF | 69 |
| 6 | hsl(200, 56%, 48%) | rgb(53, 145, 190)  | #3591BE | 74 |
| 7 | hsl(26, 93%, 59%)  | rgb(247, 137, 53)  | #F78935 |215 |
| 8 | hsl(293, 85%, 49%) | rgb(206, 18, 231)  | #CE12E7 |165 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(307, 49%, 52%),rgb(192, 72, 178),169
hsl(19, 53%, 33%),rgb(128, 67, 39),131
hsl(340, 97%, 48%),rgb(241, 3, 82),198
hsl(90, 46%, 61%),rgb(155, 201, 109),150
hsl(218, 87%, 53%),rgb(30, 107, 239),69
hsl(200, 56%, 48%),rgb(53, 145, 190),74
hsl(26, 93%, 59%),rgb(247, 137, 53),215
hsl(293, 85%, 49%),rgb(206, 18, 231),165

Generated: 2026-06-27 16:57:58
```
