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

![#8F97D5](https://img.shields.io/badge/-%238F97D5?style=flat&logo=none) ![#B9F324](https://img.shields.io/badge/-%23B9F324?style=flat&logo=none) ![#85E665](https://img.shields.io/badge/-%2385E665?style=flat&logo=none) ![#112F92](https://img.shields.io/badge/-%23112F92?style=flat&logo=none) ![#0FF522](https://img.shields.io/badge/-%230FF522?style=flat&logo=none) ![#0A92AD](https://img.shields.io/badge/-%230A92AD?style=flat&logo=none) ![#26AB01](https://img.shields.io/badge/-%2326AB01?style=flat&logo=none) ![#DEBB86](https://img.shields.io/badge/-%23DEBB86?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-14 16:40:32
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(233, 46%, 70%) | rgb(143, 151, 213) | #8F97D5 |146 |
| 2 | hsl(77, 90%, 55%)  | rgb(185, 243, 36)  | #B9F324 |191 |
| 3 | hsl(105, 72%, 65%) | rgb(133, 230, 101) | #85E665 |150 |
| 4 | hsl(226, 79%, 32%) |  rgb(17, 47, 146)  | #112F92 | 25 |
| 5 | hsl(125, 92%, 51%) |  rgb(15, 245, 34)  | #0FF522 | 47 |
| 6 | hsl(190, 89%, 36%) | rgb(10, 146, 173)  | #0A92AD | 37 |
| 7 | hsl(107, 98%, 34%) |  rgb(38, 171, 1)   | #26AB01 | 70 |
| 8 | hsl(36, 58%, 70%)  | rgb(222, 187, 134) | #DEBB86 |187 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(233, 46%, 70%),rgb(143, 151, 213),146
hsl(77, 90%, 55%),rgb(185, 243, 36),191
hsl(105, 72%, 65%),rgb(133, 230, 101),150
hsl(226, 79%, 32%),rgb(17, 47, 146),25
hsl(125, 92%, 51%),rgb(15, 245, 34),47
hsl(190, 89%, 36%),rgb(10, 146, 173),37
hsl(107, 98%, 34%),rgb(38, 171, 1),70
hsl(36, 58%, 70%),rgb(222, 187, 134),187

Generated: 2026-08-14 16:40:32
```
