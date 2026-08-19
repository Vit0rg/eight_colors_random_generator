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

![#3FAE37](https://img.shields.io/badge/-%233FAE37?style=flat&logo=none) ![#681B9C](https://img.shields.io/badge/-%23681B9C?style=flat&logo=none) ![#A16806](https://img.shields.io/badge/-%23A16806?style=flat&logo=none) ![#72C4A2](https://img.shields.io/badge/-%2372C4A2?style=flat&logo=none) ![#3205D5](https://img.shields.io/badge/-%233205D5?style=flat&logo=none) ![#5D88F2](https://img.shields.io/badge/-%235D88F2?style=flat&logo=none) ![#34C083](https://img.shields.io/badge/-%2334C083?style=flat&logo=none) ![#C3CB84](https://img.shields.io/badge/-%23C3CB84?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-19 16:19:44
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(116, 52%, 45%) |  rgb(63, 174, 55)  | #3FAE37 | 71 |
| 2 | hsl(276, 70%, 36%) | rgb(104, 27, 156)  | #681B9C | 97 |
| 3 | hsl(38, 92%, 33%)  |  rgb(161, 104, 6)  | #A16806 |136 |
| 4 | hsl(155, 41%, 61%) | rgb(114, 196, 162) | #72C4A2 |115 |
| 5 | hsl(253, 95%, 43%) |  rgb(50, 5, 213)   | #3205D5 | 56 |
| 6 | hsl(223, 86%, 66%) | rgb(93, 136, 242)  | #5D88F2 |111 |
| 7 | hsl(154, 57%, 48%) | rgb(52, 192, 131)  | #34C083 | 79 |
| 8 | hsl(67, 41%, 66%)  | rgb(195, 203, 132) | #C3CB84 |187 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(116, 52%, 45%),rgb(63, 174, 55),71
hsl(276, 70%, 36%),rgb(104, 27, 156),97
hsl(38, 92%, 33%),rgb(161, 104, 6),136
hsl(155, 41%, 61%),rgb(114, 196, 162),115
hsl(253, 95%, 43%),rgb(50, 5, 213),56
hsl(223, 86%, 66%),rgb(93, 136, 242),111
hsl(154, 57%, 48%),rgb(52, 192, 131),79
hsl(67, 41%, 66%),rgb(195, 203, 132),187

Generated: 2026-08-19 16:19:44
```
