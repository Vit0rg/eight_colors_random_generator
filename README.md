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

![#79AB16](https://img.shields.io/badge/-%2379AB16?style=flat&logo=none) ![#5787EE](https://img.shields.io/badge/-%235787EE?style=flat&logo=none) ![#BA68ED](https://img.shields.io/badge/-%23BA68ED?style=flat&logo=none) ![#1DB386](https://img.shields.io/badge/-%231DB386?style=flat&logo=none) ![#732F45](https://img.shields.io/badge/-%23732F45?style=flat&logo=none) ![#6961FE](https://img.shields.io/badge/-%236961FE?style=flat&logo=none) ![#A21A69](https://img.shields.io/badge/-%23A21A69?style=flat&logo=none) ![#83A2E1](https://img.shields.io/badge/-%2383A2E1?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-04 17:29:03
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(80, 77%, 38%)  | rgb(121, 171, 22)  | #79AB16 |106 |
| 2 | hsl(221, 82%, 64%) | rgb(87, 135, 238)  | #5787EE |111 |
| 3 | hsl(277, 79%, 67%) | rgb(186, 104, 237) | #BA68ED |177 |
| 4 | hsl(162, 72%, 41%) | rgb(29, 179, 134)  | #1DB386 | 73 |
| 5 | hsl(341, 42%, 32%) |  rgb(115, 47, 69)  | #732F45 | 95 |
| 6 | hsl(243, 99%, 69%) | rgb(105, 97, 254)  | #6961FE |105 |
| 7 | hsl(325, 72%, 37%) | rgb(162, 26, 105)  | #A21A69 |132 |
| 8 | hsl(220, 61%, 70%) | rgb(131, 162, 225) | #83A2E1 |146 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(80, 77%, 38%),rgb(121, 171, 22),106
hsl(221, 82%, 64%),rgb(87, 135, 238),111
hsl(277, 79%, 67%),rgb(186, 104, 237),177
hsl(162, 72%, 41%),rgb(29, 179, 134),73
hsl(341, 42%, 32%),rgb(115, 47, 69),95
hsl(243, 99%, 69%),rgb(105, 97, 254),105
hsl(325, 72%, 37%),rgb(162, 26, 105),132
hsl(220, 61%, 70%),rgb(131, 162, 225),146

Generated: 2026-08-04 17:29:03
```
