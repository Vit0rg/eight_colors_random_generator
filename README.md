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

![#31799A](https://img.shields.io/badge/-%2331799A?style=flat&logo=none) ![#01E463](https://img.shields.io/badge/-%2301E463?style=flat&logo=none) ![#9222A4](https://img.shields.io/badge/-%239222A4?style=flat&logo=none) ![#CBE362](https://img.shields.io/badge/-%23CBE362?style=flat&logo=none) ![#B6624D](https://img.shields.io/badge/-%23B6624D?style=flat&logo=none) ![#6F1ACF](https://img.shields.io/badge/-%236F1ACF?style=flat&logo=none) ![#B2D877](https://img.shields.io/badge/-%23B2D877?style=flat&logo=none) ![#26AF48](https://img.shields.io/badge/-%2326AF48?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-25 11:43:46
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(199, 51%, 40%) | rgb(49, 121, 154)  | #31799A | 67 |
| 2 | hsl(146, 99%, 45%) |  rgb(1, 228, 99)   | #01E463 | 42 |
| 3 | hsl(292, 65%, 39%) | rgb(146, 34, 164)  | #9222A4 |133 |
| 4 | hsl(71, 70%, 64%)  | rgb(203, 227, 98)  | #CBE362 |186 |
| 5 | hsl(12, 42%, 51%)  |  rgb(182, 98, 77)  | #B6624D |174 |
| 6 | hsl(268, 77%, 46%) | rgb(111, 26, 207)  | #6F1ACF | 98 |
| 7 | hsl(84, 56%, 66%)  | rgb(178, 216, 119) | #B2D877 |150 |
| 8 | hsl(135, 64%, 42%) |  rgb(38, 175, 72)  | #26AF48 | 71 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(199, 51%, 40%),rgb(49, 121, 154),67
hsl(146, 99%, 45%),rgb(1, 228, 99),42
hsl(292, 65%, 39%),rgb(146, 34, 164),133
hsl(71, 70%, 64%),rgb(203, 227, 98),186
hsl(12, 42%, 51%),rgb(182, 98, 77),174
hsl(268, 77%, 46%),rgb(111, 26, 207),98
hsl(84, 56%, 66%),rgb(178, 216, 119),150
hsl(135, 64%, 42%),rgb(38, 175, 72),71

Generated: 2026-05-25 11:43:46
```
