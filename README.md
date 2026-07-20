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

![#232276](https://img.shields.io/badge/-%23232276?style=flat&logo=none) ![#22BD49](https://img.shields.io/badge/-%2322BD49?style=flat&logo=none) ![#823064](https://img.shields.io/badge/-%23823064?style=flat&logo=none) ![#288AB8](https://img.shields.io/badge/-%23288AB8?style=flat&logo=none) ![#59E754](https://img.shields.io/badge/-%2359E754?style=flat&logo=none) ![#9A6FE6](https://img.shields.io/badge/-%239A6FE6?style=flat&logo=none) ![#00D655](https://img.shields.io/badge/-%2300D655?style=flat&logo=none) ![#F050E0](https://img.shields.io/badge/-%23F050E0?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-20 17:23:19
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(241, 55%, 30%) |  rgb(35, 34, 118)  | #232276 | 60 |
| 2 | hsl(135, 69%, 44%) |  rgb(34, 189, 73)  | #22BD49 | 77 |
| 3 | hsl(322, 46%, 35%) | rgb(130, 48, 100)  | #823064 |132 |
| 4 | hsl(199, 64%, 44%) | rgb(40, 138, 184)  | #288AB8 | 74 |
| 5 | hsl(118, 76%, 62%) |  rgb(89, 231, 84)  | #59E754 |120 |
| 6 | hsl(262, 71%, 67%) | rgb(154, 111, 230) | #9A6FE6 |140 |
| 7 |hsl(144, 100%, 42%) |  rgb(0, 214, 85)   | #00D655 | 42 |
| 8 | hsl(306, 85%, 63%) | rgb(240, 80, 224)  | #F050E0 |212 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(241, 55%, 30%),rgb(35, 34, 118),60
hsl(135, 69%, 44%),rgb(34, 189, 73),77
hsl(322, 46%, 35%),rgb(130, 48, 100),132
hsl(199, 64%, 44%),rgb(40, 138, 184),74
hsl(118, 76%, 62%),rgb(89, 231, 84),120
hsl(262, 71%, 67%),rgb(154, 111, 230),140
hsl(144, 100%, 42%),rgb(0, 214, 85),42
hsl(306, 85%, 63%),rgb(240, 80, 224),212

Generated: 2026-07-20 17:23:19
```
