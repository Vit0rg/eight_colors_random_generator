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

![#C47F54](https://img.shields.io/badge/-%23C47F54?style=flat&logo=none) ![#D75ADC](https://img.shields.io/badge/-%23D75ADC?style=flat&logo=none) ![#5899CE](https://img.shields.io/badge/-%235899CE?style=flat&logo=none) ![#D6C319](https://img.shields.io/badge/-%23D6C319?style=flat&logo=none) ![#9D1F6F](https://img.shields.io/badge/-%239D1F6F?style=flat&logo=none) ![#443C9E](https://img.shields.io/badge/-%23443C9E?style=flat&logo=none) ![#79E0A6](https://img.shields.io/badge/-%2379E0A6?style=flat&logo=none) ![#FA2A0A](https://img.shields.io/badge/-%23FA2A0A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-09 18:56:10
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(23, 49%, 55%)  | rgb(196, 127, 84)  | #C47F54 |174 |
| 2 | hsl(298, 65%, 61%) | rgb(215, 90, 220)  | #D75ADC |176 |
| 3 | hsl(207, 55%, 58%) | rgb(88, 153, 206)  | #5899CE |110 |
| 4 | hsl(54, 79%, 47%)  | rgb(214, 195, 25)  | #D6C319 |184 |
| 5 | hsl(322, 67%, 37%) | rgb(157, 31, 111)  | #9D1F6F |132 |
| 6 | hsl(245, 45%, 43%) |  rgb(68, 60, 158)  | #443C9E | 61 |
| 7 | hsl(146, 63%, 68%) | rgb(121, 224, 166) | #79E0A6 |115 |
| 8 |  hsl(8, 96%, 51%)  |  rgb(250, 42, 10)  | #FA2A0A |202 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(23, 49%, 55%),rgb(196, 127, 84),174
hsl(298, 65%, 61%),rgb(215, 90, 220),176
hsl(207, 55%, 58%),rgb(88, 153, 206),110
hsl(54, 79%, 47%),rgb(214, 195, 25),184
hsl(322, 67%, 37%),rgb(157, 31, 111),132
hsl(245, 45%, 43%),rgb(68, 60, 158),61
hsl(146, 63%, 68%),rgb(121, 224, 166),115
hsl(8, 96%, 51%),rgb(250, 42, 10),202

Generated: 2026-09-09 18:56:10
```
