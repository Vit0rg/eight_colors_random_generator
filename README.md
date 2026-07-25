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

![#2B7896](https://img.shields.io/badge/-%232B7896?style=flat&logo=none) ![#C4615D](https://img.shields.io/badge/-%23C4615D?style=flat&logo=none) ![#1B96D4](https://img.shields.io/badge/-%231B96D4?style=flat&logo=none) ![#40C996](https://img.shields.io/badge/-%2340C996?style=flat&logo=none) ![#0D9F98](https://img.shields.io/badge/-%230D9F98?style=flat&logo=none) ![#32AE27](https://img.shields.io/badge/-%2332AE27?style=flat&logo=none) ![#5F05C6](https://img.shields.io/badge/-%235F05C6?style=flat&logo=none) ![#F669C9](https://img.shields.io/badge/-%23F669C9?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-25 16:45:35
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(197, 55%, 38%) | rgb(43, 120, 150)  | #2B7896 | 67 |
| 2 |  hsl(2, 47%, 57%)  |  rgb(196, 97, 93)  | #C4615D |174 |
| 3 | hsl(200, 77%, 47%) | rgb(27, 150, 212)  | #1B96D4 | 74 |
| 4 | hsl(158, 56%, 52%) | rgb(64, 201, 150)  | #40C996 | 79 |
| 5 | hsl(177, 84%, 34%) | rgb(13, 159, 152)  | #0D9F98 | 37 |
| 6 | hsl(115, 63%, 42%) |  rgb(50, 174, 39)  | #32AE27 | 71 |
| 7 | hsl(268, 95%, 40%) |  rgb(95, 5, 198)   | #5F05C6 | 92 |
| 8 | hsl(319, 89%, 69%) | rgb(246, 105, 201) | #F669C9 |212 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(197, 55%, 38%),rgb(43, 120, 150),67
hsl(2, 47%, 57%),rgb(196, 97, 93),174
hsl(200, 77%, 47%),rgb(27, 150, 212),74
hsl(158, 56%, 52%),rgb(64, 201, 150),79
hsl(177, 84%, 34%),rgb(13, 159, 152),37
hsl(115, 63%, 42%),rgb(50, 174, 39),71
hsl(268, 95%, 40%),rgb(95, 5, 198),92
hsl(319, 89%, 69%),rgb(246, 105, 201),212

Generated: 2026-07-25 16:45:35
```
