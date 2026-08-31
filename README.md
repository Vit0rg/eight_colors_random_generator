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

![#10D3E9](https://img.shields.io/badge/-%2310D3E9?style=flat&logo=none) ![#691A8E](https://img.shields.io/badge/-%23691A8E?style=flat&logo=none) ![#9E4DBB](https://img.shields.io/badge/-%239E4DBB?style=flat&logo=none) ![#8A2851](https://img.shields.io/badge/-%238A2851?style=flat&logo=none) ![#8E2CB8](https://img.shields.io/badge/-%238E2CB8?style=flat&logo=none) ![#F57450](https://img.shields.io/badge/-%23F57450?style=flat&logo=none) ![#2B6BD8](https://img.shields.io/badge/-%232B6BD8?style=flat&logo=none) ![#DE0B59](https://img.shields.io/badge/-%23DE0B59?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-31 21:13:21
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(186, 87%, 49%) | rgb(16, 211, 233)  | #10D3E9 | 45 |
| 2 | hsl(281, 69%, 33%) | rgb(105, 26, 142)  | #691A8E | 97 |
| 3 | hsl(284, 45%, 52%) | rgb(158, 77, 187)  | #9E4DBB |140 |
| 4 | hsl(335, 55%, 35%) |  rgb(138, 40, 81)  | #8A2851 |132 |
| 5 | hsl(282, 61%, 45%) | rgb(142, 44, 184)  | #8E2CB8 |134 |
| 6 | hsl(13, 90%, 64%)  | rgb(245, 116, 80)  | #F57450 |210 |
| 7 | hsl(218, 69%, 51%) | rgb(43, 107, 216)  | #2B6BD8 | 68 |
| 8 | hsl(338, 90%, 46%) |  rgb(222, 11, 89)  | #DE0B59 |162 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(186, 87%, 49%),rgb(16, 211, 233),45
hsl(281, 69%, 33%),rgb(105, 26, 142),97
hsl(284, 45%, 52%),rgb(158, 77, 187),140
hsl(335, 55%, 35%),rgb(138, 40, 81),132
hsl(282, 61%, 45%),rgb(142, 44, 184),134
hsl(13, 90%, 64%),rgb(245, 116, 80),210
hsl(218, 69%, 51%),rgb(43, 107, 216),68
hsl(338, 90%, 46%),rgb(222, 11, 89),162

Generated: 2026-08-31 21:13:21
```
