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

![#E0A45B](https://img.shields.io/badge/-%23E0A45B?style=flat&logo=none) ![#35BE7E](https://img.shields.io/badge/-%2335BE7E?style=flat&logo=none) ![#2B9BAA](https://img.shields.io/badge/-%232B9BAA?style=flat&logo=none) ![#346992](https://img.shields.io/badge/-%23346992?style=flat&logo=none) ![#EF1A99](https://img.shields.io/badge/-%23EF1A99?style=flat&logo=none) ![#90CE49](https://img.shields.io/badge/-%2390CE49?style=flat&logo=none) ![#E877E0](https://img.shields.io/badge/-%23E877E0?style=flat&logo=none) ![#A87C46](https://img.shields.io/badge/-%23A87C46?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-25 10:34:18
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(33, 69%, 62%)  | rgb(224, 164, 91)  | #E0A45B |180 |
| 2 | hsl(152, 56%, 48%) | rgb(53, 190, 126)  | #35BE7E | 78 |
| 3 | hsl(187, 59%, 42%) | rgb(43, 155, 170)  | #2B9BAA | 73 |
| 4 | hsl(206, 47%, 39%) | rgb(52, 105, 146)  | #346992 | 67 |
| 5 | hsl(324, 87%, 52%) | rgb(239, 26, 153)  | #EF1A99 |205 |
| 6 | hsl(88, 58%, 55%)  | rgb(144, 206, 73)  | #90CE49 |149 |
| 7 | hsl(304, 71%, 69%) | rgb(232, 119, 224) | #E877E0 |212 |
| 8 | hsl(33, 41%, 47%)  | rgb(168, 124, 70)  | #A87C46 |137 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(33, 69%, 62%),rgb(224, 164, 91),180
hsl(152, 56%, 48%),rgb(53, 190, 126),78
hsl(187, 59%, 42%),rgb(43, 155, 170),73
hsl(206, 47%, 39%),rgb(52, 105, 146),67
hsl(324, 87%, 52%),rgb(239, 26, 153),205
hsl(88, 58%, 55%),rgb(144, 206, 73),149
hsl(304, 71%, 69%),rgb(232, 119, 224),212
hsl(33, 41%, 47%),rgb(168, 124, 70),137

Generated: 2026-06-25 10:34:18
```
