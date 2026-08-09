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

![#5B30C9](https://img.shields.io/badge/-%235B30C9?style=flat&logo=none) ![#0156AB](https://img.shields.io/badge/-%230156AB?style=flat&logo=none) ![#5CC1DF](https://img.shields.io/badge/-%235CC1DF?style=flat&logo=none) ![#389DB2](https://img.shields.io/badge/-%23389DB2?style=flat&logo=none) ![#D084CA](https://img.shields.io/badge/-%23D084CA?style=flat&logo=none) ![#E69864](https://img.shields.io/badge/-%23E69864?style=flat&logo=none) ![#A0A841](https://img.shields.io/badge/-%23A0A841?style=flat&logo=none) ![#D906C4](https://img.shields.io/badge/-%23D906C4?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-09 00:58:49
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(257, 61%, 49%) |  rgb(91, 48, 201)  | #5B30C9 | 98 |
| 2 | hsl(210, 98%, 34%) |  rgb(1, 86, 171)   | #0156AB | 31 |
| 3 | hsl(194, 68%, 62%) | rgb(92, 193, 223)  | #5CC1DF |116 |
| 4 | hsl(190, 52%, 46%) | rgb(56, 157, 178)  | #389DB2 | 73 |
| 5 | hsl(305, 45%, 67%) | rgb(208, 132, 202) | #D084CA |182 |
| 6 | hsl(24, 73%, 65%)  | rgb(230, 152, 100) | #E69864 |180 |
| 7 | hsl(65, 44%, 46%)  | rgb(160, 168, 65)  | #A0A841 |143 |
| 8 | hsl(306, 94%, 44%) |  rgb(217, 6, 196)  | #D906C4 |164 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(257, 61%, 49%),rgb(91, 48, 201),98
hsl(210, 98%, 34%),rgb(1, 86, 171),31
hsl(194, 68%, 62%),rgb(92, 193, 223),116
hsl(190, 52%, 46%),rgb(56, 157, 178),73
hsl(305, 45%, 67%),rgb(208, 132, 202),182
hsl(24, 73%, 65%),rgb(230, 152, 100),180
hsl(65, 44%, 46%),rgb(160, 168, 65),143
hsl(306, 94%, 44%),rgb(217, 6, 196),164

Generated: 2026-08-09 00:58:49
```
