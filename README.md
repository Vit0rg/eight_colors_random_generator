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

![#F48860](https://img.shields.io/badge/-%23F48860?style=flat&logo=none) ![#7F7323](https://img.shields.io/badge/-%237F7323?style=flat&logo=none) ![#3CEB50](https://img.shields.io/badge/-%233CEB50?style=flat&logo=none) ![#1D90F5](https://img.shields.io/badge/-%231D90F5?style=flat&logo=none) ![#058AB7](https://img.shields.io/badge/-%23058AB7?style=flat&logo=none) ![#BC5238](https://img.shields.io/badge/-%23BC5238?style=flat&logo=none) ![#E5D823](https://img.shields.io/badge/-%23E5D823?style=flat&logo=none) ![#270DEC](https://img.shields.io/badge/-%23270DEC?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-16 01:46:52
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(16, 88%, 67%)  | rgb(244, 136, 96)  | #F48860 |216 |
| 2 | hsl(52, 56%, 32%)  | rgb(127, 115, 35)  | #7F7323 |101 |
| 3 | hsl(127, 82%, 58%) |  rgb(60, 235, 80)  | #3CEB50 | 84 |
| 4 | hsl(208, 92%, 54%) | rgb(29, 144, 245)  | #1D90F5 | 75 |
| 5 | hsl(195, 94%, 37%) |  rgb(5, 138, 183)  | #058AB7 | 38 |
| 6 | hsl(12, 54%, 48%)  |  rgb(188, 82, 56)  | #BC5238 |173 |
| 7 | hsl(56, 79%, 52%)  | rgb(229, 216, 35)  | #E5D823 |185 |
| 8 | hsl(247, 89%, 49%) |  rgb(39, 13, 236)  | #270DEC | 57 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(16, 88%, 67%),rgb(244, 136, 96),216
hsl(52, 56%, 32%),rgb(127, 115, 35),101
hsl(127, 82%, 58%),rgb(60, 235, 80),84
hsl(208, 92%, 54%),rgb(29, 144, 245),75
hsl(195, 94%, 37%),rgb(5, 138, 183),38
hsl(12, 54%, 48%),rgb(188, 82, 56),173
hsl(56, 79%, 52%),rgb(229, 216, 35),185
hsl(247, 89%, 49%),rgb(39, 13, 236),57

Generated: 2026-07-16 01:46:52
```
