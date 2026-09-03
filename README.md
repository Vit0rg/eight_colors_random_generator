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

![#202AF3](https://img.shields.io/badge/-%23202AF3?style=flat&logo=none) ![#0D2F95](https://img.shields.io/badge/-%230D2F95?style=flat&logo=none) ![#EE76A4](https://img.shields.io/badge/-%23EE76A4?style=flat&logo=none) ![#AB2ACF](https://img.shields.io/badge/-%23AB2ACF?style=flat&logo=none) ![#7142D5](https://img.shields.io/badge/-%237142D5?style=flat&logo=none) ![#8DC741](https://img.shields.io/badge/-%238DC741?style=flat&logo=none) ![#4718E0](https://img.shields.io/badge/-%234718E0?style=flat&logo=none) ![#72CF34](https://img.shields.io/badge/-%2372CF34?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-03 02:07:51
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(237, 90%, 54%) |  rgb(32, 42, 243)  | #202AF3 | 63 |
| 2 | hsl(225, 83%, 32%) |  rgb(13, 47, 149)  | #0D2F95 | 25 |
| 3 | hsl(337, 78%, 70%) | rgb(238, 118, 164) | #EE76A4 |211 |
| 4 | hsl(287, 66%, 49%) | rgb(171, 42, 207)  | #AB2ACF |134 |
| 5 | hsl(259, 64%, 55%) | rgb(113, 66, 213)  | #7142D5 | 98 |
| 6 | hsl(86, 55%, 52%)  | rgb(141, 199, 65)  | #8DC741 |149 |
| 7 | hsl(254, 80%, 49%) |  rgb(71, 24, 224)  | #4718E0 | 56 |
| 8 | hsl(96, 62%, 51%)  | rgb(114, 207, 52)  | #72CF34 |113 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(237, 90%, 54%),rgb(32, 42, 243),63
hsl(225, 83%, 32%),rgb(13, 47, 149),25
hsl(337, 78%, 70%),rgb(238, 118, 164),211
hsl(287, 66%, 49%),rgb(171, 42, 207),134
hsl(259, 64%, 55%),rgb(113, 66, 213),98
hsl(86, 55%, 52%),rgb(141, 199, 65),149
hsl(254, 80%, 49%),rgb(71, 24, 224),56
hsl(96, 62%, 51%),rgb(114, 207, 52),113

Generated: 2026-09-03 02:07:51
```
