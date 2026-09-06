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

![#69CD87](https://img.shields.io/badge/-%2369CD87?style=flat&logo=none) ![#C3F52D](https://img.shields.io/badge/-%23C3F52D?style=flat&logo=none) ![#0021E0](https://img.shields.io/badge/-%230021E0?style=flat&logo=none) ![#F30BE4](https://img.shields.io/badge/-%23F30BE4?style=flat&logo=none) ![#C6D778](https://img.shields.io/badge/-%23C6D778?style=flat&logo=none) ![#83D0D7](https://img.shields.io/badge/-%2383D0D7?style=flat&logo=none) ![#0894AA](https://img.shields.io/badge/-%230894AA?style=flat&logo=none) ![#309652](https://img.shields.io/badge/-%23309652?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-06 11:49:57
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(138, 50%, 61%) | rgb(105, 205, 135) | #69CD87 |115 |
| 2 | hsl(75, 91%, 57%)  | rgb(195, 245, 45)  | #C3F52D |191 |
| 3 |hsl(231, 100%, 44%) |  rgb(0, 33, 224)   | #0021E0 | 26 |
| 4 | hsl(304, 91%, 50%) | rgb(243, 11, 228)  | #F30BE4 |200 |
| 5 | hsl(71, 55%, 66%)  | rgb(198, 215, 120) | #C6D778 |186 |
| 6 | hsl(185, 51%, 68%) | rgb(131, 208, 215) | #83D0D7 |152 |
| 7 | hsl(188, 91%, 35%) |  rgb(8, 148, 170)  | #0894AA | 37 |
| 8 | hsl(140, 51%, 39%) |  rgb(48, 150, 82)  | #309652 | 72 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(138, 50%, 61%),rgb(105, 205, 135),115
hsl(75, 91%, 57%),rgb(195, 245, 45),191
hsl(231, 100%, 44%),rgb(0, 33, 224),26
hsl(304, 91%, 50%),rgb(243, 11, 228),200
hsl(71, 55%, 66%),rgb(198, 215, 120),186
hsl(185, 51%, 68%),rgb(131, 208, 215),152
hsl(188, 91%, 35%),rgb(8, 148, 170),37
hsl(140, 51%, 39%),rgb(48, 150, 82),72

Generated: 2026-09-06 11:49:57
```
