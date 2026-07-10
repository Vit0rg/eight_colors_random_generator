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

![#6CE9E9](https://img.shields.io/badge/-%236CE9E9?style=flat&logo=none) ![#0AADA2](https://img.shields.io/badge/-%230AADA2?style=flat&logo=none) ![#C20366](https://img.shields.io/badge/-%23C20366?style=flat&logo=none) ![#AD0518](https://img.shields.io/badge/-%23AD0518?style=flat&logo=none) ![#4290FF](https://img.shields.io/badge/-%234290FF?style=flat&logo=none) ![#E9E448](https://img.shields.io/badge/-%23E9E448?style=flat&logo=none) ![#298E0A](https://img.shields.io/badge/-%23298E0A?style=flat&logo=none) ![#C573F1](https://img.shields.io/badge/-%23C573F1?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-10 02:00:15
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(180, 74%, 67%) | rgb(108, 233, 233) | #6CE9E9 |123 |
| 2 | hsl(176, 89%, 36%) | rgb(10, 173, 162)  | #0AADA2 | 37 |
| 3 | hsl(329, 96%, 39%) |  rgb(194, 3, 102)  | #C20366 |162 |
| 4 | hsl(353, 94%, 35%) |  rgb(173, 5, 24)   | #AD0518 |124 |
| 5 |hsl(215, 100%, 63%) | rgb(66, 144, 255)  | #4290FF | 75 |
| 6 | hsl(58, 79%, 60%)  | rgb(233, 228, 72)  | #E9E448 |221 |
| 7 | hsl(106, 86%, 30%) |  rgb(41, 142, 10)  | #298E0A | 70 |
| 8 | hsl(279, 83%, 70%) | rgb(197, 115, 241) | #C573F1 |177 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(180, 74%, 67%),rgb(108, 233, 233),123
hsl(176, 89%, 36%),rgb(10, 173, 162),37
hsl(329, 96%, 39%),rgb(194, 3, 102),162
hsl(353, 94%, 35%),rgb(173, 5, 24),124
hsl(215, 100%, 63%),rgb(66, 144, 255),75
hsl(58, 79%, 60%),rgb(233, 228, 72),221
hsl(106, 86%, 30%),rgb(41, 142, 10),70
hsl(279, 83%, 70%),rgb(197, 115, 241),177

Generated: 2026-07-10 02:00:15
```
