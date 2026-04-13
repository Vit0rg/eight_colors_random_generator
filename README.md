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

![#0720E3](https://img.shields.io/badge/-%230720E3?style=flat&logo=none) ![#7CE8B4](https://img.shields.io/badge/-%237CE8B4?style=flat&logo=none) ![#2C346C](https://img.shields.io/badge/-%232C346C?style=flat&logo=none) ![#4BE18C](https://img.shields.io/badge/-%234BE18C?style=flat&logo=none) ![#E00F6D](https://img.shields.io/badge/-%23E00F6D?style=flat&logo=none) ![#578031](https://img.shields.io/badge/-%23578031?style=flat&logo=none) ![#B3CE58](https://img.shields.io/badge/-%23B3CE58?style=flat&logo=none) ![#64BEAC](https://img.shields.io/badge/-%2364BEAC?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-13 01:51:22
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(233, 94%, 46%) |  rgb(7, 32, 227)   | #0720E3 | 26 |
| 2 | hsl(151, 70%, 70%) | rgb(124, 232, 180) | #7CE8B4 |122 |
| 3 | hsl(232, 42%, 30%) |  rgb(44, 52, 108)  | #2C346C | 60 |
| 4 | hsl(146, 72%, 59%) | rgb(75, 225, 140)  | #4BE18C | 79 |
| 5 | hsl(333, 87%, 47%) | rgb(224, 15, 109)  | #E00F6D |162 |
| 6 | hsl(91, 44%, 35%)  |  rgb(87, 128, 49)  | #578031 |107 |
| 7 | hsl(74, 55%, 58%)  | rgb(179, 206, 88)  | #B3CE58 |150 |
| 8 | hsl(168, 41%, 57%) | rgb(100, 190, 172) | #64BEAC |115 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(233, 94%, 46%),rgb(7, 32, 227),26
hsl(151, 70%, 70%),rgb(124, 232, 180),122
hsl(232, 42%, 30%),rgb(44, 52, 108),60
hsl(146, 72%, 59%),rgb(75, 225, 140),79
hsl(333, 87%, 47%),rgb(224, 15, 109),162
hsl(91, 44%, 35%),rgb(87, 128, 49),107
hsl(74, 55%, 58%),rgb(179, 206, 88),150
hsl(168, 41%, 57%),rgb(100, 190, 172),115

Generated: 2026-04-13 01:51:22
```
