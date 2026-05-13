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

![#3036AB](https://img.shields.io/badge/-%233036AB?style=flat&logo=none) ![#207CEE](https://img.shields.io/badge/-%23207CEE?style=flat&logo=none) ![#751CE2](https://img.shields.io/badge/-%23751CE2?style=flat&logo=none) ![#7C81E3](https://img.shields.io/badge/-%237C81E3?style=flat&logo=none) ![#AD3249](https://img.shields.io/badge/-%23AD3249?style=flat&logo=none) ![#3B7D25](https://img.shields.io/badge/-%233B7D25?style=flat&logo=none) ![#42C668](https://img.shields.io/badge/-%2342C668?style=flat&logo=none) ![#0CF21C](https://img.shields.io/badge/-%230CF21C?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-13 17:57:37
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(237, 56%, 43%) |  rgb(48, 54, 171)  | #3036AB | 61 |
| 2 | hsl(213, 86%, 53%) | rgb(32, 124, 238)  | #207CEE | 69 |
| 3 | hsl(267, 78%, 50%) | rgb(117, 28, 226)  | #751CE2 | 98 |
| 4 | hsl(237, 65%, 69%) | rgb(124, 129, 227) | #7C81E3 |110 |
| 5 | hsl(349, 55%, 44%) |  rgb(173, 50, 73)  | #AD3249 |131 |
| 6 | hsl(105, 54%, 32%) |  rgb(59, 125, 37)  | #3B7D25 | 65 |
| 7 | hsl(137, 54%, 52%) | rgb(66, 198, 104)  | #42C668 | 78 |
| 8 | hsl(124, 90%, 50%) |  rgb(12, 242, 28)  | #0CF21C | 47 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(237, 56%, 43%),rgb(48, 54, 171),61
hsl(213, 86%, 53%),rgb(32, 124, 238),69
hsl(267, 78%, 50%),rgb(117, 28, 226),98
hsl(237, 65%, 69%),rgb(124, 129, 227),110
hsl(349, 55%, 44%),rgb(173, 50, 73),131
hsl(105, 54%, 32%),rgb(59, 125, 37),65
hsl(137, 54%, 52%),rgb(66, 198, 104),78
hsl(124, 90%, 50%),rgb(12, 242, 28),47

Generated: 2026-05-13 17:57:37
```
