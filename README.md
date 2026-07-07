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

![#E4A629](https://img.shields.io/badge/-%23E4A629?style=flat&logo=none) ![#148E6C](https://img.shields.io/badge/-%23148E6C?style=flat&logo=none) ![#AE8C40](https://img.shields.io/badge/-%23AE8C40?style=flat&logo=none) ![#9F692C](https://img.shields.io/badge/-%239F692C?style=flat&logo=none) ![#54EAED](https://img.shields.io/badge/-%2354EAED?style=flat&logo=none) ![#2FBBF2](https://img.shields.io/badge/-%232FBBF2?style=flat&logo=none) ![#96BB2E](https://img.shields.io/badge/-%2396BB2E?style=flat&logo=none) ![#288428](https://img.shields.io/badge/-%23288428?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-07 02:08:50
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(40, 78%, 53%)  | rgb(228, 166, 41)  | #E4A629 |179 |
| 2 | hsl(163, 75%, 32%) | rgb(20, 142, 108)  | #148E6C | 36 |
| 3 | hsl(41, 46%, 47%)  | rgb(174, 140, 64)  | #AE8C40 |143 |
| 4 | hsl(32, 56%, 40%)  | rgb(159, 105, 44)  | #9F692C |137 |
| 5 | hsl(181, 81%, 63%) | rgb(84, 234, 237)  | #54EAED |123 |
| 6 | hsl(197, 89%, 57%) | rgb(47, 187, 242)  | #2FBBF2 | 81 |
| 7 | hsl(76, 60%, 46%)  | rgb(150, 187, 46)  | #96BB2E |149 |
| 8 | hsl(120, 53%, 34%) |  rgb(40, 132, 40)  | #288428 | 71 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(40, 78%, 53%),rgb(228, 166, 41),179
hsl(163, 75%, 32%),rgb(20, 142, 108),36
hsl(41, 46%, 47%),rgb(174, 140, 64),143
hsl(32, 56%, 40%),rgb(159, 105, 44),137
hsl(181, 81%, 63%),rgb(84, 234, 237),123
hsl(197, 89%, 57%),rgb(47, 187, 242),81
hsl(76, 60%, 46%),rgb(150, 187, 46),149
hsl(120, 53%, 34%),rgb(40, 132, 40),71

Generated: 2026-07-07 02:08:50
```
