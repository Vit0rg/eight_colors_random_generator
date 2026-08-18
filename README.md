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

![#5FB544](https://img.shields.io/badge/-%235FB544?style=flat&logo=none) ![#EE57B9](https://img.shields.io/badge/-%23EE57B9?style=flat&logo=none) ![#9C3BA4](https://img.shields.io/badge/-%239C3BA4?style=flat&logo=none) ![#B21E81](https://img.shields.io/badge/-%23B21E81?style=flat&logo=none) ![#32921A](https://img.shields.io/badge/-%2332921A?style=flat&logo=none) ![#30DDBA](https://img.shields.io/badge/-%2330DDBA?style=flat&logo=none) ![#55298E](https://img.shields.io/badge/-%2355298E?style=flat&logo=none) ![#F28D3F](https://img.shields.io/badge/-%23F28D3F?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-18 00:40:35
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(106, 45%, 49%) |  rgb(95, 181, 68)  | #5FB544 |113 |
| 2 | hsl(321, 82%, 64%) | rgb(238, 87, 185)  | #EE57B9 |212 |
| 3 | hsl(295, 47%, 44%) | rgb(156, 59, 164)  | #9C3BA4 |133 |
| 4 | hsl(320, 71%, 41%) | rgb(178, 30, 129)  | #B21E81 |133 |
| 5 | hsl(108, 69%, 34%) |  rgb(50, 146, 26)  | #32921A | 71 |
| 6 | hsl(168, 72%, 53%) | rgb(48, 221, 186)  | #30DDBA | 80 |
| 7 | hsl(266, 55%, 36%) |  rgb(85, 41, 142)  | #55298E | 97 |
| 8 | hsl(26, 88%, 60%)  | rgb(242, 141, 63)  | #F28D3F |215 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(106, 45%, 49%),rgb(95, 181, 68),113
hsl(321, 82%, 64%),rgb(238, 87, 185),212
hsl(295, 47%, 44%),rgb(156, 59, 164),133
hsl(320, 71%, 41%),rgb(178, 30, 129),133
hsl(108, 69%, 34%),rgb(50, 146, 26),71
hsl(168, 72%, 53%),rgb(48, 221, 186),80
hsl(266, 55%, 36%),rgb(85, 41, 142),97
hsl(26, 88%, 60%),rgb(242, 141, 63),215

Generated: 2026-08-18 00:40:35
```
