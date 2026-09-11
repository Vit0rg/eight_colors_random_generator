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

![#408CAE](https://img.shields.io/badge/-%23408CAE?style=flat&logo=none) ![#55FA5B](https://img.shields.io/badge/-%2355FA5B?style=flat&logo=none) ![#C80ACB](https://img.shields.io/badge/-%23C80ACB?style=flat&logo=none) ![#F75E98](https://img.shields.io/badge/-%23F75E98?style=flat&logo=none) ![#68188F](https://img.shields.io/badge/-%2368188F?style=flat&logo=none) ![#B57316](https://img.shields.io/badge/-%23B57316?style=flat&logo=none) ![#16F7D2](https://img.shields.io/badge/-%2316F7D2?style=flat&logo=none) ![#8DACD1](https://img.shields.io/badge/-%238DACD1?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-11 02:07:16
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(199, 46%, 47%) | rgb(64, 140, 174)  | #408CAE | 73 |
| 2 | hsl(122, 95%, 66%) |  rgb(85, 250, 91)  | #55FA5B |120 |
| 3 | hsl(299, 90%, 42%) | rgb(200, 10, 203)  | #C80ACB |164 |
| 4 | hsl(337, 91%, 67%) | rgb(247, 94, 152)  | #F75E98 |211 |
| 5 | hsl(280, 71%, 33%) | rgb(104, 24, 143)  | #68188F | 91 |
| 6 | hsl(35, 78%, 40%)  | rgb(181, 115, 22)  | #B57316 |172 |
| 7 | hsl(170, 94%, 53%) | rgb(22, 247, 210)  | #16F7D2 | 50 |
| 8 | hsl(213, 43%, 69%) | rgb(141, 172, 209) | #8DACD1 |146 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(199, 46%, 47%),rgb(64, 140, 174),73
hsl(122, 95%, 66%),rgb(85, 250, 91),120
hsl(299, 90%, 42%),rgb(200, 10, 203),164
hsl(337, 91%, 67%),rgb(247, 94, 152),211
hsl(280, 71%, 33%),rgb(104, 24, 143),91
hsl(35, 78%, 40%),rgb(181, 115, 22),172
hsl(170, 94%, 53%),rgb(22, 247, 210),50
hsl(213, 43%, 69%),rgb(141, 172, 209),146

Generated: 2026-09-11 02:07:16
```
