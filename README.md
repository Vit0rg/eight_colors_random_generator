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

![#9A79E1](https://img.shields.io/badge/-%239A79E1?style=flat&logo=none) ![#F6EF31](https://img.shields.io/badge/-%23F6EF31?style=flat&logo=none) ![#16A9DE](https://img.shields.io/badge/-%2316A9DE?style=flat&logo=none) ![#70C600](https://img.shields.io/badge/-%2370C600?style=flat&logo=none) ![#E7E778](https://img.shields.io/badge/-%23E7E778?style=flat&logo=none) ![#266DC9](https://img.shields.io/badge/-%23266DC9?style=flat&logo=none) ![#81D9B4](https://img.shields.io/badge/-%2381D9B4?style=flat&logo=none) ![#9B8521](https://img.shields.io/badge/-%239B8521?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-02 16:36:58
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(259, 64%, 68%) | rgb(154, 121, 225) | #9A79E1 |140 |
| 2 | hsl(58, 92%, 58%)  | rgb(246, 239, 49)  | #F6EF31 |227 |
| 3 | hsl(196, 82%, 48%) | rgb(22, 169, 222)  | #16A9DE | 38 |
| 4 | hsl(86, 100%, 39%) |  rgb(112, 198, 0)  | #70C600 |112 |
| 5 | hsl(60, 70%, 69%)  | rgb(231, 231, 120) | #E7E778 |228 |
| 6 | hsl(214, 68%, 47%) | rgb(38, 109, 201)  | #266DC9 | 68 |
| 7 | hsl(155, 54%, 68%) | rgb(129, 217, 180) | #81D9B4 |152 |
| 8 | hsl(49, 65%, 37%)  | rgb(155, 133, 33)  | #9B8521 |143 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(259, 64%, 68%),rgb(154, 121, 225),140
hsl(58, 92%, 58%),rgb(246, 239, 49),227
hsl(196, 82%, 48%),rgb(22, 169, 222),38
hsl(86, 100%, 39%),rgb(112, 198, 0),112
hsl(60, 70%, 69%),rgb(231, 231, 120),228
hsl(214, 68%, 47%),rgb(38, 109, 201),68
hsl(155, 54%, 68%),rgb(129, 217, 180),152
hsl(49, 65%, 37%),rgb(155, 133, 33),143

Generated: 2026-05-02 16:36:58
```
