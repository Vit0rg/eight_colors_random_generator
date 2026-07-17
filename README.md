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

![#85CF95](https://img.shields.io/badge/-%2385CF95?style=flat&logo=none) ![#DB1943](https://img.shields.io/badge/-%23DB1943?style=flat&logo=none) ![#F460C5](https://img.shields.io/badge/-%23F460C5?style=flat&logo=none) ![#8E2D99](https://img.shields.io/badge/-%238E2D99?style=flat&logo=none) ![#2F2F7D](https://img.shields.io/badge/-%232F2F7D?style=flat&logo=none) ![#51A90D](https://img.shields.io/badge/-%2351A90D?style=flat&logo=none) ![#AFCB84](https://img.shields.io/badge/-%23AFCB84?style=flat&logo=none) ![#BB532A](https://img.shields.io/badge/-%23BB532A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-17 09:47:36
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(133, 44%, 67%) | rgb(133, 207, 149) | #85CF95 |151 |
| 2 | hsl(347, 79%, 48%) |  rgb(219, 25, 67)  | #DB1943 |161 |
| 3 | hsl(319, 88%, 67%) | rgb(244, 96, 197)  | #F460C5 |212 |
| 4 | hsl(294, 54%, 39%) | rgb(142, 45, 153)  | #8E2D99 |133 |
| 5 | hsl(240, 45%, 34%) |  rgb(47, 47, 125)  | #2F2F7D | 60 |
| 6 | hsl(94, 85%, 36%)  |  rgb(81, 169, 13)  | #51A90D |106 |
| 7 | hsl(84, 41%, 66%)  | rgb(175, 203, 132) | #AFCB84 |151 |
| 8 | hsl(17, 63%, 45%)  |  rgb(187, 83, 42)  | #BB532A |173 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(133, 44%, 67%),rgb(133, 207, 149),151
hsl(347, 79%, 48%),rgb(219, 25, 67),161
hsl(319, 88%, 67%),rgb(244, 96, 197),212
hsl(294, 54%, 39%),rgb(142, 45, 153),133
hsl(240, 45%, 34%),rgb(47, 47, 125),60
hsl(94, 85%, 36%),rgb(81, 169, 13),106
hsl(84, 41%, 66%),rgb(175, 203, 132),151
hsl(17, 63%, 45%),rgb(187, 83, 42),173

Generated: 2026-07-17 09:47:36
```
