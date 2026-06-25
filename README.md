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

![#40F924](https://img.shields.io/badge/-%2340F924?style=flat&logo=none) ![#8E9210](https://img.shields.io/badge/-%238E9210?style=flat&logo=none) ![#F02DBC](https://img.shields.io/badge/-%23F02DBC?style=flat&logo=none) ![#30BA8A](https://img.shields.io/badge/-%2330BA8A?style=flat&logo=none) ![#71CDE4](https://img.shields.io/badge/-%2371CDE4?style=flat&logo=none) ![#713FA0](https://img.shields.io/badge/-%23713FA0?style=flat&logo=none) ![#8E48B6](https://img.shields.io/badge/-%238E48B6?style=flat&logo=none) ![#887425](https://img.shields.io/badge/-%23887425?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-25 02:28:44
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(112, 95%, 56%) |  rgb(64, 249, 36)  | #40F924 | 83 |
| 2 | hsl(62, 80%, 32%)  | rgb(142, 146, 16)  | #8E9210 |142 |
| 3 | hsl(316, 87%, 56%) | rgb(240, 45, 188)  | #F02DBC |206 |
| 4 | hsl(159, 59%, 46%) | rgb(48, 186, 138)  | #30BA8A | 79 |
| 5 | hsl(192, 68%, 67%) | rgb(113, 205, 228) | #71CDE4 |116 |
| 6 | hsl(271, 43%, 44%) | rgb(113, 63, 160)  | #713FA0 | 97 |
| 7 | hsl(278, 43%, 50%) | rgb(142, 72, 182)  | #8E48B6 |134 |
| 8 | hsl(48, 57%, 34%)  | rgb(136, 116, 37)  | #887425 |137 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(112, 95%, 56%),rgb(64, 249, 36),83
hsl(62, 80%, 32%),rgb(142, 146, 16),142
hsl(316, 87%, 56%),rgb(240, 45, 188),206
hsl(159, 59%, 46%),rgb(48, 186, 138),79
hsl(192, 68%, 67%),rgb(113, 205, 228),116
hsl(271, 43%, 44%),rgb(113, 63, 160),97
hsl(278, 43%, 50%),rgb(142, 72, 182),134
hsl(48, 57%, 34%),rgb(136, 116, 37),137

Generated: 2026-06-25 02:28:44
```
