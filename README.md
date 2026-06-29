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

![#56C69D](https://img.shields.io/badge/-%2356C69D?style=flat&logo=none) ![#AA58ED](https://img.shields.io/badge/-%23AA58ED?style=flat&logo=none) ![#44ACE7](https://img.shields.io/badge/-%2344ACE7?style=flat&logo=none) ![#FF6A00](https://img.shields.io/badge/-%23FF6A00?style=flat&logo=none) ![#4032C2](https://img.shields.io/badge/-%234032C2?style=flat&logo=none) ![#CB2975](https://img.shields.io/badge/-%23CB2975?style=flat&logo=none) ![#C90C7D](https://img.shields.io/badge/-%23C90C7D?style=flat&logo=none) ![#F924F2](https://img.shields.io/badge/-%23F924F2?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-29 18:03:29
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(158, 50%, 56%) | rgb(86, 198, 157)  | #56C69D |115 |
| 2 | hsl(273, 81%, 64%) | rgb(170, 88, 237)  | #AA58ED |141 |
| 3 | hsl(202, 78%, 59%) | rgb(68, 172, 231)  | #44ACE7 | 75 |
| 4 | hsl(25, 100%, 50%) |  rgb(255, 106, 0)  | #FF6A00 |208 |
| 5 | hsl(246, 59%, 48%) |  rgb(64, 50, 194)  | #4032C2 | 62 |
| 6 | hsl(332, 66%, 48%) | rgb(203, 41, 117)  | #CB2975 |168 |
| 7 | hsl(324, 88%, 42%) | rgb(201, 12, 125)  | #C90C7D |162 |
| 8 | hsl(302, 95%, 56%) | rgb(249, 36, 242)  | #F924F2 |207 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(158, 50%, 56%),rgb(86, 198, 157),115
hsl(273, 81%, 64%),rgb(170, 88, 237),141
hsl(202, 78%, 59%),rgb(68, 172, 231),75
hsl(25, 100%, 50%),rgb(255, 106, 0),208
hsl(246, 59%, 48%),rgb(64, 50, 194),62
hsl(332, 66%, 48%),rgb(203, 41, 117),168
hsl(324, 88%, 42%),rgb(201, 12, 125),162
hsl(302, 95%, 56%),rgb(249, 36, 242),207

Generated: 2026-06-29 18:03:29
```
