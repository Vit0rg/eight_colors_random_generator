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

![#926CCA](https://img.shields.io/badge/-%23926CCA?style=flat&logo=none) ![#6BD0A1](https://img.shields.io/badge/-%236BD0A1?style=flat&logo=none) ![#F43DC0](https://img.shields.io/badge/-%23F43DC0?style=flat&logo=none) ![#6DF7E0](https://img.shields.io/badge/-%236DF7E0?style=flat&logo=none) ![#2AA183](https://img.shields.io/badge/-%232AA183?style=flat&logo=none) ![#CFDB46](https://img.shields.io/badge/-%23CFDB46?style=flat&logo=none) ![#A1CD27](https://img.shields.io/badge/-%23A1CD27?style=flat&logo=none) ![#9101F8](https://img.shields.io/badge/-%239101F8?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-19 08:43:02
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(264, 47%, 61%) | rgb(146, 108, 202) | #926CCA |140 |
| 2 | hsl(152, 52%, 62%) | rgb(107, 208, 161) | #6BD0A1 |115 |
| 3 | hsl(317, 90%, 60%) | rgb(244, 61, 192)  | #F43DC0 |206 |
| 4 | hsl(170, 90%, 70%) | rgb(109, 247, 224) | #6DF7E0 |122 |
| 5 | hsl(165, 58%, 40%) | rgb(42, 161, 131)  | #2AA183 | 73 |
| 6 | hsl(65, 68%, 57%)  | rgb(207, 219, 70)  | #CFDB46 |185 |
| 7 | hsl(76, 68%, 48%)  | rgb(161, 205, 39)  | #A1CD27 |149 |
| 8 | hsl(275, 99%, 49%) |  rgb(145, 1, 248)  | #9101F8 |129 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(264, 47%, 61%),rgb(146, 108, 202),140
hsl(152, 52%, 62%),rgb(107, 208, 161),115
hsl(317, 90%, 60%),rgb(244, 61, 192),206
hsl(170, 90%, 70%),rgb(109, 247, 224),122
hsl(165, 58%, 40%),rgb(42, 161, 131),73
hsl(65, 68%, 57%),rgb(207, 219, 70),185
hsl(76, 68%, 48%),rgb(161, 205, 39),149
hsl(275, 99%, 49%),rgb(145, 1, 248),129

Generated: 2026-04-19 08:43:02
```
