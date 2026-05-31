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

![#C4B507](https://img.shields.io/badge/-%23C4B507?style=flat&logo=none) ![#AE37AA](https://img.shields.io/badge/-%23AE37AA?style=flat&logo=none) ![#7D63D8](https://img.shields.io/badge/-%237D63D8?style=flat&logo=none) ![#F1F155](https://img.shields.io/badge/-%23F1F155?style=flat&logo=none) ![#882E3F](https://img.shields.io/badge/-%23882E3F?style=flat&logo=none) ![#1EC6FA](https://img.shields.io/badge/-%231EC6FA?style=flat&logo=none) ![#9F6AC2](https://img.shields.io/badge/-%239F6AC2?style=flat&logo=none) ![#655CE9](https://img.shields.io/badge/-%23655CE9?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-31 10:07:28
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(55, 93%, 40%)  |  rgb(196, 181, 7)  | #C4B507 |184 |
| 2 | hsl(302, 52%, 45%) | rgb(174, 55, 170)  | #AE37AA |133 |
| 3 | hsl(253, 60%, 62%) | rgb(125, 99, 216)  | #7D63D8 |104 |
| 4 | hsl(60, 85%, 64%)  | rgb(241, 241, 85)  | #F1F155 |228 |
| 5 | hsl(349, 49%, 36%) |  rgb(136, 46, 63)  | #882E3F |131 |
| 6 | hsl(194, 96%, 55%) | rgb(30, 198, 250)  | #1EC6FA | 81 |
| 7 | hsl(276, 42%, 59%) | rgb(159, 106, 194) | #9F6AC2 |140 |
| 8 | hsl(244, 77%, 64%) | rgb(101, 92, 233)  | #655CE9 |105 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(55, 93%, 40%),rgb(196, 181, 7),184
hsl(302, 52%, 45%),rgb(174, 55, 170),133
hsl(253, 60%, 62%),rgb(125, 99, 216),104
hsl(60, 85%, 64%),rgb(241, 241, 85),228
hsl(349, 49%, 36%),rgb(136, 46, 63),131
hsl(194, 96%, 55%),rgb(30, 198, 250),81
hsl(276, 42%, 59%),rgb(159, 106, 194),140
hsl(244, 77%, 64%),rgb(101, 92, 233),105

Generated: 2026-05-31 10:07:28
```
