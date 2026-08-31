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

![#A430CE](https://img.shields.io/badge/-%23A430CE?style=flat&logo=none) ![#66F315](https://img.shields.io/badge/-%2366F315?style=flat&logo=none) ![#DB961D](https://img.shields.io/badge/-%23DB961D?style=flat&logo=none) ![#5CAE03](https://img.shields.io/badge/-%235CAE03?style=flat&logo=none) ![#BD3222](https://img.shields.io/badge/-%23BD3222?style=flat&logo=none) ![#EFBF57](https://img.shields.io/badge/-%23EFBF57?style=flat&logo=none) ![#2C7B6D](https://img.shields.io/badge/-%232C7B6D?style=flat&logo=none) ![#317B5B](https://img.shields.io/badge/-%23317B5B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-31 02:26:29
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(284, 62%, 50%) | rgb(164, 48, 206)  | #A430CE |134 |
| 2 | hsl(98, 91%, 52%)  | rgb(102, 243, 21)  | #66F315 |118 |
| 3 | hsl(38, 76%, 49%)  | rgb(219, 150, 29)  | #DB961D |179 |
| 4 | hsl(89, 96%, 35%)  |  rgb(92, 174, 3)   | #5CAE03 |106 |
| 5 |  hsl(6, 69%, 44%)  |  rgb(189, 50, 34)  | #BD3222 |167 |
| 6 | hsl(41, 83%, 64%)  | rgb(239, 191, 87)  | #EFBF57 |222 |
| 7 | hsl(169, 47%, 33%) | rgb(44, 123, 109)  | #2C7B6D | 66 |
| 8 | hsl(154, 43%, 34%) |  rgb(49, 123, 91)  | #317B5B | 66 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(284, 62%, 50%),rgb(164, 48, 206),134
hsl(98, 91%, 52%),rgb(102, 243, 21),118
hsl(38, 76%, 49%),rgb(219, 150, 29),179
hsl(89, 96%, 35%),rgb(92, 174, 3),106
hsl(6, 69%, 44%),rgb(189, 50, 34),167
hsl(41, 83%, 64%),rgb(239, 191, 87),222
hsl(169, 47%, 33%),rgb(44, 123, 109),66
hsl(154, 43%, 34%),rgb(49, 123, 91),66

Generated: 2026-08-31 02:26:29
```
