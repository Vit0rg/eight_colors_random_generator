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

![#963FED](https://img.shields.io/badge/-%23963FED?style=flat&logo=none) ![#BA7FCC](https://img.shields.io/badge/-%23BA7FCC?style=flat&logo=none) ![#D64672](https://img.shields.io/badge/-%23D64672?style=flat&logo=none) ![#8758C4](https://img.shields.io/badge/-%238758C4?style=flat&logo=none) ![#16ED3A](https://img.shields.io/badge/-%2316ED3A?style=flat&logo=none) ![#52B8D5](https://img.shields.io/badge/-%2352B8D5?style=flat&logo=none) ![#2E21B9](https://img.shields.io/badge/-%232E21B9?style=flat&logo=none) ![#85DF9A](https://img.shields.io/badge/-%2385DF9A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-08 01:49:36
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(270, 83%, 59%) | rgb(150, 63, 237)  | #963FED |135 |
| 2 | hsl(286, 43%, 65%) | rgb(186, 127, 204) | #BA7FCC |176 |
| 3 | hsl(342, 64%, 56%) | rgb(214, 70, 114)  | #D64672 |168 |
| 4 | hsl(266, 48%, 56%) | rgb(135, 88, 196)  | #8758C4 |140 |
| 5 | hsl(130, 86%, 51%) |  rgb(22, 237, 58)  | #16ED3A | 47 |
| 6 | hsl(193, 61%, 58%) | rgb(82, 184, 213)  | #52B8D5 |116 |
| 7 | hsl(245, 69%, 43%) |  rgb(46, 33, 185)  | #2E21B9 | 62 |
| 8 | hsl(134, 59%, 70%) | rgb(133, 223, 154) | #85DF9A |151 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(270, 83%, 59%),rgb(150, 63, 237),135
hsl(286, 43%, 65%),rgb(186, 127, 204),176
hsl(342, 64%, 56%),rgb(214, 70, 114),168
hsl(266, 48%, 56%),rgb(135, 88, 196),140
hsl(130, 86%, 51%),rgb(22, 237, 58),47
hsl(193, 61%, 58%),rgb(82, 184, 213),116
hsl(245, 69%, 43%),rgb(46, 33, 185),62
hsl(134, 59%, 70%),rgb(133, 223, 154),151

Generated: 2026-07-08 01:49:36
```
