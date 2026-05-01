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

![#47D167](https://img.shields.io/badge/-%2347D167?style=flat&logo=none) ![#B8CE25](https://img.shields.io/badge/-%23B8CE25?style=flat&logo=none) ![#7C9CD3](https://img.shields.io/badge/-%237C9CD3?style=flat&logo=none) ![#77C610](https://img.shields.io/badge/-%2377C610?style=flat&logo=none) ![#4BE665](https://img.shields.io/badge/-%234BE665?style=flat&logo=none) ![#E15337](https://img.shields.io/badge/-%23E15337?style=flat&logo=none) ![#67AE4A](https://img.shields.io/badge/-%2367AE4A?style=flat&logo=none) ![#222FBD](https://img.shields.io/badge/-%23222FBD?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-01 09:26:12
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(134, 60%, 55%) | rgb(71, 209, 103)  | #47D167 | 78 |
| 2 | hsl(68, 69%, 48%)  | rgb(184, 206, 37)  | #B8CE25 |185 |
| 3 | hsl(218, 50%, 66%) | rgb(124, 156, 211) | #7C9CD3 |110 |
| 4 | hsl(86, 85%, 42%)  | rgb(119, 198, 16)  | #77C610 |112 |
| 5 | hsl(130, 76%, 60%) | rgb(75, 230, 101)  | #4BE665 | 78 |
| 6 | hsl(10, 74%, 55%)  |  rgb(225, 83, 55)  | #E15337 |173 |
| 7 | hsl(103, 40%, 49%) | rgb(103, 174, 74)  | #67AE4A |107 |
| 8 | hsl(235, 69%, 44%) |  rgb(34, 47, 189)  | #222FBD | 62 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(134, 60%, 55%),rgb(71, 209, 103),78
hsl(68, 69%, 48%),rgb(184, 206, 37),185
hsl(218, 50%, 66%),rgb(124, 156, 211),110
hsl(86, 85%, 42%),rgb(119, 198, 16),112
hsl(130, 76%, 60%),rgb(75, 230, 101),78
hsl(10, 74%, 55%),rgb(225, 83, 55),173
hsl(103, 40%, 49%),rgb(103, 174, 74),107
hsl(235, 69%, 44%),rgb(34, 47, 189),62

Generated: 2026-05-01 09:26:12
```
