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

![#4DE984](https://img.shields.io/badge/-%234DE984?style=flat&logo=none) ![#4A3FAB](https://img.shields.io/badge/-%234A3FAB?style=flat&logo=none) ![#74EC69](https://img.shields.io/badge/-%2374EC69?style=flat&logo=none) ![#46C367](https://img.shields.io/badge/-%2346C367?style=flat&logo=none) ![#A1C557](https://img.shields.io/badge/-%23A1C557?style=flat&logo=none) ![#FF47B5](https://img.shields.io/badge/-%23FF47B5?style=flat&logo=none) ![#21C45D](https://img.shields.io/badge/-%2321C45D?style=flat&logo=none) ![#60D676](https://img.shields.io/badge/-%2360D676?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-30 02:31:23
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(141, 78%, 61%) | rgb(77, 233, 132)  | #4DE984 |121 |
| 2 | hsl(246, 46%, 46%) |  rgb(74, 63, 171)  | #4A3FAB | 61 |
| 3 | hsl(115, 78%, 67%) | rgb(116, 236, 105) | #74EC69 |120 |
| 4 | hsl(136, 51%, 52%) | rgb(70, 195, 103)  | #46C367 | 78 |
| 5 | hsl(80, 49%, 56%)  | rgb(161, 197, 87)  | #A1C557 |150 |
| 6 |hsl(324, 100%, 64%) | rgb(255, 71, 181)  | #FF47B5 |206 |
| 7 | hsl(142, 71%, 45%) |  rgb(33, 196, 93)  | #21C45D | 78 |
| 8 | hsl(131, 59%, 61%) | rgb(96, 214, 118)  | #60D676 |114 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(141, 78%, 61%),rgb(77, 233, 132),121
hsl(246, 46%, 46%),rgb(74, 63, 171),61
hsl(115, 78%, 67%),rgb(116, 236, 105),120
hsl(136, 51%, 52%),rgb(70, 195, 103),78
hsl(80, 49%, 56%),rgb(161, 197, 87),150
hsl(324, 100%, 64%),rgb(255, 71, 181),206
hsl(142, 71%, 45%),rgb(33, 196, 93),78
hsl(131, 59%, 61%),rgb(96, 214, 118),114

Generated: 2026-06-30 02:31:23
```
