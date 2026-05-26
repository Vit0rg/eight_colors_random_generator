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

![#58A7E3](https://img.shields.io/badge/-%2358A7E3?style=flat&logo=none) ![#7A3B2D](https://img.shields.io/badge/-%237A3B2D?style=flat&logo=none) ![#287D20](https://img.shields.io/badge/-%23287D20?style=flat&logo=none) ![#CC1984](https://img.shields.io/badge/-%23CC1984?style=flat&logo=none) ![#D782CC](https://img.shields.io/badge/-%23D782CC?style=flat&logo=none) ![#299A27](https://img.shields.io/badge/-%23299A27?style=flat&logo=none) ![#346687](https://img.shields.io/badge/-%23346687?style=flat&logo=none) ![#55C393](https://img.shields.io/badge/-%2355C393?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-26 02:25:52
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(206, 72%, 62%) | rgb(88, 167, 227)  | #58A7E3 |110 |
| 2 | hsl(11, 46%, 33%)  |  rgb(122, 59, 45)  | #7A3B2D | 95 |
| 3 | hsl(115, 59%, 31%) |  rgb(40, 125, 32)  | #287D20 | 65 |
| 4 | hsl(324, 78%, 45%) | rgb(204, 25, 132)  | #CC1984 |163 |
| 5 | hsl(308, 52%, 68%) | rgb(215, 130, 204) | #D782CC |182 |
| 6 | hsl(119, 59%, 38%) |  rgb(41, 154, 39)  | #299A27 | 71 |
| 7 | hsl(204, 44%, 37%) | rgb(52, 102, 135)  | #346687 | 67 |
| 8 | hsl(154, 48%, 55%) | rgb(85, 195, 147)  | #55C393 |115 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(206, 72%, 62%),rgb(88, 167, 227),110
hsl(11, 46%, 33%),rgb(122, 59, 45),95
hsl(115, 59%, 31%),rgb(40, 125, 32),65
hsl(324, 78%, 45%),rgb(204, 25, 132),163
hsl(308, 52%, 68%),rgb(215, 130, 204),182
hsl(119, 59%, 38%),rgb(41, 154, 39),71
hsl(204, 44%, 37%),rgb(52, 102, 135),67
hsl(154, 48%, 55%),rgb(85, 195, 147),115

Generated: 2026-05-26 02:25:52
```
