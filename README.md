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

![#337BA7](https://img.shields.io/badge/-%23337BA7?style=flat&logo=none) ![#1BB9F3](https://img.shields.io/badge/-%231BB9F3?style=flat&logo=none) ![#69BDE6](https://img.shields.io/badge/-%2369BDE6?style=flat&logo=none) ![#216F8B](https://img.shields.io/badge/-%23216F8B?style=flat&logo=none) ![#395FAC](https://img.shields.io/badge/-%23395FAC?style=flat&logo=none) ![#72CE87](https://img.shields.io/badge/-%2372CE87?style=flat&logo=none) ![#184A8F](https://img.shields.io/badge/-%23184A8F?style=flat&logo=none) ![#108DAC](https://img.shields.io/badge/-%23108DAC?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-31 01:55:23
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(203, 53%, 43%) | rgb(51, 123, 167)  | #337BA7 | 67 |
| 2 | hsl(196, 90%, 53%) | rgb(27, 185, 243)  | #1BB9F3 | 81 |
| 3 | hsl(200, 72%, 66%) | rgb(105, 189, 230) | #69BDE6 |116 |
| 4 | hsl(196, 61%, 34%) | rgb(33, 111, 139)  | #216F8B | 67 |
| 5 | hsl(220, 50%, 45%) |  rgb(57, 95, 172)  | #395FAC | 67 |
| 6 | hsl(134, 49%, 63%) | rgb(114, 206, 135) | #72CE87 |115 |
| 7 | hsl(215, 71%, 33%) |  rgb(24, 74, 143)  | #184A8F | 25 |
| 8 | hsl(192, 83%, 37%) | rgb(16, 141, 172)  | #108DAC | 37 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(203, 53%, 43%),rgb(51, 123, 167),67
hsl(196, 90%, 53%),rgb(27, 185, 243),81
hsl(200, 72%, 66%),rgb(105, 189, 230),116
hsl(196, 61%, 34%),rgb(33, 111, 139),67
hsl(220, 50%, 45%),rgb(57, 95, 172),67
hsl(134, 49%, 63%),rgb(114, 206, 135),115
hsl(215, 71%, 33%),rgb(24, 74, 143),25
hsl(192, 83%, 37%),rgb(16, 141, 172),37

Generated: 2026-07-31 01:55:23
```
