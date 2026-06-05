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

![#31A8AF](https://img.shields.io/badge/-%2331A8AF?style=flat&logo=none) ![#B37F37](https://img.shields.io/badge/-%23B37F37?style=flat&logo=none) ![#0206ED](https://img.shields.io/badge/-%230206ED?style=flat&logo=none) ![#63BFAE](https://img.shields.io/badge/-%2363BFAE?style=flat&logo=none) ![#04EF7A](https://img.shields.io/badge/-%2304EF7A?style=flat&logo=none) ![#1717BE](https://img.shields.io/badge/-%231717BE?style=flat&logo=none) ![#D06619](https://img.shields.io/badge/-%23D06619?style=flat&logo=none) ![#4381F4](https://img.shields.io/badge/-%234381F4?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-05 02:33:47
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(183, 56%, 44%) | rgb(49, 168, 175)  | #31A8AF | 73 |
| 2 | hsl(35, 53%, 46%)  | rgb(179, 127, 55)  | #B37F37 |137 |
| 3 | hsl(239, 98%, 47%) |   rgb(2, 6, 237)   | #0206ED | 21 |
| 4 | hsl(169, 42%, 57%) | rgb(99, 191, 174)  | #63BFAE |115 |
| 5 | hsl(150, 96%, 48%) |  rgb(4, 239, 122)  | #04EF7A | 48 |
| 6 | hsl(240, 78%, 42%) |  rgb(23, 23, 190)  | #1717BE | 20 |
| 7 | hsl(25, 78%, 46%)  | rgb(208, 102, 25)  | #D06619 |172 |
| 8 | hsl(219, 89%, 61%) | rgb(67, 129, 244)  | #4381F4 | 75 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(183, 56%, 44%),rgb(49, 168, 175),73
hsl(35, 53%, 46%),rgb(179, 127, 55),137
hsl(239, 98%, 47%),rgb(2, 6, 237),21
hsl(169, 42%, 57%),rgb(99, 191, 174),115
hsl(150, 96%, 48%),rgb(4, 239, 122),48
hsl(240, 78%, 42%),rgb(23, 23, 190),20
hsl(25, 78%, 46%),rgb(208, 102, 25),172
hsl(219, 89%, 61%),rgb(67, 129, 244),75

Generated: 2026-06-05 02:33:47
```
