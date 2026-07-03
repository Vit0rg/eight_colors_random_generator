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

![#907B31](https://img.shields.io/badge/-%23907B31?style=flat&logo=none) ![#E179B4](https://img.shields.io/badge/-%23E179B4?style=flat&logo=none) ![#FDF85D](https://img.shields.io/badge/-%23FDF85D?style=flat&logo=none) ![#C3FB69](https://img.shields.io/badge/-%23C3FB69?style=flat&logo=none) ![#9A74E1](https://img.shields.io/badge/-%239A74E1?style=flat&logo=none) ![#202CAB](https://img.shields.io/badge/-%23202CAB?style=flat&logo=none) ![#ED2572](https://img.shields.io/badge/-%23ED2572?style=flat&logo=none) ![#DA5C99](https://img.shields.io/badge/-%23DA5C99?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-03 02:02:01
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(47, 49%, 38%)  | rgb(144, 123, 49)  | #907B31 |137 |
| 2 | hsl(326, 64%, 68%) | rgb(225, 121, 180) | #E179B4 |176 |
| 3 | hsl(58, 98%, 68%)  | rgb(253, 248, 93)  | #FDF85D |228 |
| 4 | hsl(83, 96%, 70%)  | rgb(195, 251, 105) | #C3FB69 |192 |
| 5 | hsl(261, 65%, 67%) | rgb(154, 116, 225) | #9A74E1 |140 |
| 6 | hsl(235, 68%, 40%) |  rgb(32, 44, 171)  | #202CAB | 61 |
| 7 | hsl(337, 85%, 54%) | rgb(237, 37, 114)  | #ED2572 |204 |
| 8 | hsl(331, 63%, 61%) | rgb(218, 92, 153)  | #DA5C99 |175 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(47, 49%, 38%),rgb(144, 123, 49),137
hsl(326, 64%, 68%),rgb(225, 121, 180),176
hsl(58, 98%, 68%),rgb(253, 248, 93),228
hsl(83, 96%, 70%),rgb(195, 251, 105),192
hsl(261, 65%, 67%),rgb(154, 116, 225),140
hsl(235, 68%, 40%),rgb(32, 44, 171),61
hsl(337, 85%, 54%),rgb(237, 37, 114),204
hsl(331, 63%, 61%),rgb(218, 92, 153),175

Generated: 2026-07-03 02:02:01
```
