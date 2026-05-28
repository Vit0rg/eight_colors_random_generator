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

![#94286A](https://img.shields.io/badge/-%2394286A?style=flat&logo=none) ![#3A9677](https://img.shields.io/badge/-%233A9677?style=flat&logo=none) ![#3D2B86](https://img.shields.io/badge/-%233D2B86?style=flat&logo=none) ![#8C83D7](https://img.shields.io/badge/-%238C83D7?style=flat&logo=none) ![#FACC60](https://img.shields.io/badge/-%23FACC60?style=flat&logo=none) ![#FE6C5C](https://img.shields.io/badge/-%23FE6C5C?style=flat&logo=none) ![#D27746](https://img.shields.io/badge/-%23D27746?style=flat&logo=none) ![#BFD368](https://img.shields.io/badge/-%23BFD368?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-28 11:29:24
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(323, 57%, 37%) | rgb(148, 40, 106)  | #94286A |132 |
| 2 | hsl(160, 44%, 41%) | rgb(58, 150, 119)  | #3A9677 | 72 |
| 3 | hsl(252, 51%, 35%) |  rgb(61, 43, 134)  | #3D2B86 | 61 |
| 4 | hsl(246, 51%, 68%) | rgb(140, 131, 215) | #8C83D7 |146 |
| 5 | hsl(42, 94%, 68%)  | rgb(250, 204, 96)  | #FACC60 |222 |
| 6 |  hsl(6, 99%, 68%)  | rgb(254, 108, 92)  | #FE6C5C |210 |
| 7 | hsl(21, 61%, 55%)  | rgb(210, 119, 70)  | #D27746 |173 |
| 8 | hsl(71, 55%, 62%)  | rgb(191, 211, 104) | #BFD368 |186 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(323, 57%, 37%),rgb(148, 40, 106),132
hsl(160, 44%, 41%),rgb(58, 150, 119),72
hsl(252, 51%, 35%),rgb(61, 43, 134),61
hsl(246, 51%, 68%),rgb(140, 131, 215),146
hsl(42, 94%, 68%),rgb(250, 204, 96),222
hsl(6, 99%, 68%),rgb(254, 108, 92),210
hsl(21, 61%, 55%),rgb(210, 119, 70),173
hsl(71, 55%, 62%),rgb(191, 211, 104),186

Generated: 2026-05-28 11:29:24
```
