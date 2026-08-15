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

![#229E60](https://img.shields.io/badge/-%23229E60?style=flat&logo=none) ![#1D7580](https://img.shields.io/badge/-%231D7580?style=flat&logo=none) ![#308696](https://img.shields.io/badge/-%23308696?style=flat&logo=none) ![#5D49AB](https://img.shields.io/badge/-%235D49AB?style=flat&logo=none) ![#2B0A98](https://img.shields.io/badge/-%232B0A98?style=flat&logo=none) ![#E06AB1](https://img.shields.io/badge/-%23E06AB1?style=flat&logo=none) ![#4480CE](https://img.shields.io/badge/-%234480CE?style=flat&logo=none) ![#EB3785](https://img.shields.io/badge/-%23EB3785?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-15 16:12:43
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(150, 64%, 38%) |  rgb(34, 158, 96)  | #229E60 | 72 |
| 2 | hsl(187, 63%, 31%) | rgb(29, 117, 128)  | #1D7580 | 67 |
| 3 | hsl(189, 51%, 39%) | rgb(48, 134, 150)  | #308696 | 73 |
| 4 | hsl(252, 40%, 48%) |  rgb(93, 73, 171)  | #5D49AB | 97 |
| 5 | hsl(254, 87%, 32%) |  rgb(43, 10, 152)  | #2B0A98 | 55 |
| 6 | hsl(324, 66%, 65%) | rgb(224, 106, 177) | #E06AB1 |175 |
| 7 | hsl(214, 59%, 54%) | rgb(68, 128, 206)  | #4480CE | 74 |
| 8 | hsl(334, 82%, 57%) | rgb(235, 55, 133)  | #EB3785 |205 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(150, 64%, 38%),rgb(34, 158, 96),72
hsl(187, 63%, 31%),rgb(29, 117, 128),67
hsl(189, 51%, 39%),rgb(48, 134, 150),73
hsl(252, 40%, 48%),rgb(93, 73, 171),97
hsl(254, 87%, 32%),rgb(43, 10, 152),55
hsl(324, 66%, 65%),rgb(224, 106, 177),175
hsl(214, 59%, 54%),rgb(68, 128, 206),74
hsl(334, 82%, 57%),rgb(235, 55, 133),205

Generated: 2026-08-15 16:12:43
```
