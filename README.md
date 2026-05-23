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

![#3CE548](https://img.shields.io/badge/-%233CE548?style=flat&logo=none) ![#F26378](https://img.shields.io/badge/-%23F26378?style=flat&logo=none) ![#851D61](https://img.shields.io/badge/-%23851D61?style=flat&logo=none) ![#D09E0A](https://img.shields.io/badge/-%23D09E0A?style=flat&logo=none) ![#36A323](https://img.shields.io/badge/-%2336A323?style=flat&logo=none) ![#B0451B](https://img.shields.io/badge/-%23B0451B?style=flat&logo=none) ![#D23703](https://img.shields.io/badge/-%23D23703?style=flat&logo=none) ![#73CDA5](https://img.shields.io/badge/-%2373CDA5?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-23 16:51:28
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(124, 77%, 57%) |  rgb(60, 229, 72)  | #3CE548 | 77 |
| 2 | hsl(351, 85%, 67%) | rgb(242, 99, 120)  | #F26378 |210 |
| 3 | hsl(321, 64%, 32%) |  rgb(133, 29, 97)  | #851D61 |132 |
| 4 | hsl(45, 90%, 43%)  | rgb(208, 158, 10)  | #D09E0A |178 |
| 5 | hsl(111, 64%, 39%) |  rgb(54, 163, 35)  | #36A323 | 71 |
| 6 | hsl(17, 73%, 40%)  |  rgb(176, 69, 27)  | #B0451B |131 |
| 7 | hsl(15, 97%, 42%)  |  rgb(210, 55, 3)   | #D23703 |166 |
| 8 | hsl(153, 48%, 63%) | rgb(115, 205, 165) | #73CDA5 |115 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(124, 77%, 57%),rgb(60, 229, 72),77
hsl(351, 85%, 67%),rgb(242, 99, 120),210
hsl(321, 64%, 32%),rgb(133, 29, 97),132
hsl(45, 90%, 43%),rgb(208, 158, 10),178
hsl(111, 64%, 39%),rgb(54, 163, 35),71
hsl(17, 73%, 40%),rgb(176, 69, 27),131
hsl(15, 97%, 42%),rgb(210, 55, 3),166
hsl(153, 48%, 63%),rgb(115, 205, 165),115

Generated: 2026-05-23 16:51:28
```
