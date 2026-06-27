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

![#F5FF38](https://img.shields.io/badge/-%23F5FF38?style=flat&logo=none) ![#39E475](https://img.shields.io/badge/-%2339E475?style=flat&logo=none) ![#3AF1F7](https://img.shields.io/badge/-%233AF1F7?style=flat&logo=none) ![#541AD9](https://img.shields.io/badge/-%23541AD9?style=flat&logo=none) ![#38F9C9](https://img.shields.io/badge/-%2338F9C9?style=flat&logo=none) ![#3DF4D0](https://img.shields.io/badge/-%233DF4D0?style=flat&logo=none) ![#4AF108](https://img.shields.io/badge/-%234AF108?style=flat&logo=none) ![#2BDFF7](https://img.shields.io/badge/-%232BDFF7?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-27 02:14:58
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(63, 100%, 61%) | rgb(245, 255, 56)  | #F5FF38 |227 |
| 2 | hsl(141, 76%, 56%) | rgb(57, 228, 117)  | #39E475 | 78 |
| 3 | hsl(182, 93%, 60%) | rgb(58, 241, 247)  | #3AF1F7 | 87 |
| 4 | hsl(258, 78%, 48%) |  rgb(84, 26, 217)  | #541AD9 | 98 |
| 5 | hsl(165, 95%, 60%) | rgb(56, 249, 201)  | #38F9C9 | 86 |
| 6 | hsl(168, 90%, 60%) | rgb(61, 244, 208)  | #3DF4D0 | 86 |
| 7 | hsl(103, 93%, 49%) |  rgb(74, 241, 8)   | #4AF108 | 82 |
| 8 | hsl(187, 93%, 57%) | rgb(43, 223, 247)  | #2BDFF7 | 81 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(63, 100%, 61%),rgb(245, 255, 56),227
hsl(141, 76%, 56%),rgb(57, 228, 117),78
hsl(182, 93%, 60%),rgb(58, 241, 247),87
hsl(258, 78%, 48%),rgb(84, 26, 217),98
hsl(165, 95%, 60%),rgb(56, 249, 201),86
hsl(168, 90%, 60%),rgb(61, 244, 208),86
hsl(103, 93%, 49%),rgb(74, 241, 8),82
hsl(187, 93%, 57%),rgb(43, 223, 247),81

Generated: 2026-06-27 02:14:58
```
