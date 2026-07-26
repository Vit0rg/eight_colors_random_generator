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

![#A7CC75](https://img.shields.io/badge/-%23A7CC75?style=flat&logo=none) ![#CEBB6D](https://img.shields.io/badge/-%23CEBB6D?style=flat&logo=none) ![#A40E5E](https://img.shields.io/badge/-%23A40E5E?style=flat&logo=none) ![#D9F310](https://img.shields.io/badge/-%23D9F310?style=flat&logo=none) ![#F8B343](https://img.shields.io/badge/-%23F8B343?style=flat&logo=none) ![#E21603](https://img.shields.io/badge/-%23E21603?style=flat&logo=none) ![#44DF14](https://img.shields.io/badge/-%2344DF14?style=flat&logo=none) ![#72E8B9](https://img.shields.io/badge/-%2372E8B9?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-26 16:48:52
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(85, 46%, 63%)  | rgb(167, 204, 117) | #A7CC75 |150 |
| 2 | hsl(48, 50%, 62%)  | rgb(206, 187, 109) | #CEBB6D |186 |
| 3 | hsl(328, 84%, 35%) |  rgb(164, 14, 94)  | #A40E5E |126 |
| 4 | hsl(67, 91%, 51%)  | rgb(217, 243, 16)  | #D9F310 |190 |
| 5 | hsl(37, 93%, 62%)  | rgb(248, 179, 67)  | #F8B343 |215 |
| 6 |  hsl(5, 97%, 45%)  |  rgb(226, 22, 3)   | #E21603 |160 |
| 7 | hsl(106, 83%, 48%) |  rgb(68, 223, 20)  | #44DF14 | 76 |
| 8 | hsl(156, 72%, 68%) | rgb(114, 232, 185) | #72E8B9 |122 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(85, 46%, 63%),rgb(167, 204, 117),150
hsl(48, 50%, 62%),rgb(206, 187, 109),186
hsl(328, 84%, 35%),rgb(164, 14, 94),126
hsl(67, 91%, 51%),rgb(217, 243, 16),190
hsl(37, 93%, 62%),rgb(248, 179, 67),215
hsl(5, 97%, 45%),rgb(226, 22, 3),160
hsl(106, 83%, 48%),rgb(68, 223, 20),76
hsl(156, 72%, 68%),rgb(114, 232, 185),122

Generated: 2026-07-26 16:48:52
```
