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

![#1E8D16](https://img.shields.io/badge/-%231E8D16?style=flat&logo=none) ![#DE4D48](https://img.shields.io/badge/-%23DE4D48?style=flat&logo=none) ![#C7D36D](https://img.shields.io/badge/-%23C7D36D?style=flat&logo=none) ![#C0A23E](https://img.shields.io/badge/-%23C0A23E?style=flat&logo=none) ![#49972F](https://img.shields.io/badge/-%2349972F?style=flat&logo=none) ![#1E01FD](https://img.shields.io/badge/-%231E01FD?style=flat&logo=none) ![#A2190A](https://img.shields.io/badge/-%23A2190A?style=flat&logo=none) ![#7C2750](https://img.shields.io/badge/-%237C2750?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-14 02:15:16
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(116, 73%, 32%) |  rgb(30, 141, 22)  | #1E8D16 | 70 |
| 2 |  hsl(2, 70%, 58%)  |  rgb(222, 77, 72)  | #DE4D48 |173 |
| 3 | hsl(67, 54%, 63%)  | rgb(199, 211, 109) | #C7D36D |186 |
| 4 | hsl(46, 51%, 50%)  | rgb(192, 162, 62)  | #C0A23E |179 |
| 5 | hsl(105, 52%, 39%) |  rgb(73, 151, 47)  | #49972F | 71 |
| 6 | hsl(247, 99%, 50%) |  rgb(30, 1, 253)   | #1E01FD | 57 |
| 7 |  hsl(6, 88%, 34%)  |  rgb(162, 25, 10)  | #A2190A |124 |
| 8 | hsl(331, 52%, 32%) |  rgb(124, 39, 80)  | #7C2750 | 96 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(116, 73%, 32%),rgb(30, 141, 22),70
hsl(2, 70%, 58%),rgb(222, 77, 72),173
hsl(67, 54%, 63%),rgb(199, 211, 109),186
hsl(46, 51%, 50%),rgb(192, 162, 62),179
hsl(105, 52%, 39%),rgb(73, 151, 47),71
hsl(247, 99%, 50%),rgb(30, 1, 253),57
hsl(6, 88%, 34%),rgb(162, 25, 10),124
hsl(331, 52%, 32%),rgb(124, 39, 80),96

Generated: 2026-05-14 02:15:16
```
