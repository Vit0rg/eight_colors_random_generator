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

![#B147DA](https://img.shields.io/badge/-%23B147DA?style=flat&logo=none) ![#08D0E7](https://img.shields.io/badge/-%2308D0E7?style=flat&logo=none) ![#6C3DA2](https://img.shields.io/badge/-%236C3DA2?style=flat&logo=none) ![#9057D5](https://img.shields.io/badge/-%239057D5?style=flat&logo=none) ![#AE5DCE](https://img.shields.io/badge/-%23AE5DCE?style=flat&logo=none) ![#86982E](https://img.shields.io/badge/-%2386982E?style=flat&logo=none) ![#9E6EEC](https://img.shields.io/badge/-%239E6EEC?style=flat&logo=none) ![#BA5A0B](https://img.shields.io/badge/-%23BA5A0B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-12 01:50:25
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(283, 67%, 57%) | rgb(177, 71, 218)  | #B147DA |134 |
| 2 | hsl(186, 93%, 47%) |  rgb(8, 208, 231)  | #08D0E7 | 45 |
| 3 | hsl(268, 45%, 44%) | rgb(108, 61, 162)  | #6C3DA2 | 97 |
| 4 | hsl(267, 60%, 59%) | rgb(144, 87, 213)  | #9057D5 |140 |
| 5 | hsl(283, 54%, 59%) | rgb(174, 93, 206)  | #AE5DCE |140 |
| 6 | hsl(70, 53%, 39%)  | rgb(134, 152, 46)  | #86982E |143 |
| 7 | hsl(263, 77%, 68%) | rgb(158, 110, 236) | #9E6EEC |141 |
| 8 | hsl(27, 88%, 39%)  |  rgb(186, 90, 11)  | #BA5A0B |172 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(283, 67%, 57%),rgb(177, 71, 218),134
hsl(186, 93%, 47%),rgb(8, 208, 231),45
hsl(268, 45%, 44%),rgb(108, 61, 162),97
hsl(267, 60%, 59%),rgb(144, 87, 213),140
hsl(283, 54%, 59%),rgb(174, 93, 206),140
hsl(70, 53%, 39%),rgb(134, 152, 46),143
hsl(263, 77%, 68%),rgb(158, 110, 236),141
hsl(27, 88%, 39%),rgb(186, 90, 11),172

Generated: 2026-07-12 01:50:25
```
