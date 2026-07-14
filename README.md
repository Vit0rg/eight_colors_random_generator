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

![#B5A907](https://img.shields.io/badge/-%23B5A907?style=flat&logo=none) ![#BD9532](https://img.shields.io/badge/-%23BD9532?style=flat&logo=none) ![#73AB25](https://img.shields.io/badge/-%2373AB25?style=flat&logo=none) ![#ED342A](https://img.shields.io/badge/-%23ED342A?style=flat&logo=none) ![#A0AC43](https://img.shields.io/badge/-%23A0AC43?style=flat&logo=none) ![#FA284E](https://img.shields.io/badge/-%23FA284E?style=flat&logo=none) ![#C43543](https://img.shields.io/badge/-%23C43543?style=flat&logo=none) ![#315580](https://img.shields.io/badge/-%23315580?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-14 09:46:53
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(56, 92%, 37%)  |  rgb(181, 169, 7)  | #B5A907 |178 |
| 2 | hsl(43, 58%, 47%)  | rgb(189, 149, 50)  | #BD9532 |179 |
| 3 | hsl(85, 64%, 41%)  | rgb(115, 171, 37)  | #73AB25 |107 |
| 4 |  hsl(3, 85%, 55%)  |  rgb(237, 52, 42)  | #ED342A |203 |
| 5 | hsl(67, 44%, 47%)  | rgb(160, 172, 67)  | #A0AC43 |143 |
| 6 | hsl(349, 96%, 57%) |  rgb(250, 40, 78)  | #FA284E |204 |
| 7 | hsl(354, 57%, 49%) |  rgb(196, 53, 67)  | #C43543 |167 |
| 8 | hsl(213, 44%, 35%) |  rgb(49, 85, 128)  | #315580 | 67 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(56, 92%, 37%),rgb(181, 169, 7),178
hsl(43, 58%, 47%),rgb(189, 149, 50),179
hsl(85, 64%, 41%),rgb(115, 171, 37),107
hsl(3, 85%, 55%),rgb(237, 52, 42),203
hsl(67, 44%, 47%),rgb(160, 172, 67),143
hsl(349, 96%, 57%),rgb(250, 40, 78),204
hsl(354, 57%, 49%),rgb(196, 53, 67),167
hsl(213, 44%, 35%),rgb(49, 85, 128),67

Generated: 2026-07-14 09:46:53
```
