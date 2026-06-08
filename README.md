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

![#D1C789](https://img.shields.io/badge/-%23D1C789?style=flat&logo=none) ![#46C748](https://img.shields.io/badge/-%2346C748?style=flat&logo=none) ![#E96F0B](https://img.shields.io/badge/-%23E96F0B?style=flat&logo=none) ![#F49461](https://img.shields.io/badge/-%23F49461?style=flat&logo=none) ![#C343EE](https://img.shields.io/badge/-%23C343EE?style=flat&logo=none) ![#7AFB17](https://img.shields.io/badge/-%237AFB17?style=flat&logo=none) ![#61C3D5](https://img.shields.io/badge/-%2361C3D5?style=flat&logo=none) ![#6F2E58](https://img.shields.io/badge/-%236F2E58?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-08 18:19:09
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(52, 44%, 68%)  | rgb(209, 199, 137) | #D1C789 |187 |
| 2 | hsl(121, 54%, 53%) |  rgb(70, 199, 72)  | #46C748 | 77 |
| 3 | hsl(27, 91%, 48%)  | rgb(233, 111, 11)  | #E96F0B |208 |
| 4 | hsl(21, 87%, 67%)  | rgb(244, 148, 97)  | #F49461 |216 |
| 5 | hsl(285, 84%, 60%) | rgb(195, 67, 238)  | #C343EE |171 |
| 6 | hsl(94, 97%, 54%)  | rgb(122, 251, 23)  | #7AFB17 |118 |
| 7 | hsl(189, 58%, 61%) | rgb(97, 195, 213)  | #61C3D5 |116 |
| 8 | hsl(321, 41%, 31%) |  rgb(111, 46, 88)  | #6F2E58 | 96 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(52, 44%, 68%),rgb(209, 199, 137),187
hsl(121, 54%, 53%),rgb(70, 199, 72),77
hsl(27, 91%, 48%),rgb(233, 111, 11),208
hsl(21, 87%, 67%),rgb(244, 148, 97),216
hsl(285, 84%, 60%),rgb(195, 67, 238),171
hsl(94, 97%, 54%),rgb(122, 251, 23),118
hsl(189, 58%, 61%),rgb(97, 195, 213),116
hsl(321, 41%, 31%),rgb(111, 46, 88),96

Generated: 2026-06-08 18:19:09
```
