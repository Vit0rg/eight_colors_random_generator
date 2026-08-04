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

![#E0DE4C](https://img.shields.io/badge/-%23E0DE4C?style=flat&logo=none) ![#DD1CB6](https://img.shields.io/badge/-%23DD1CB6?style=flat&logo=none) ![#4ED844](https://img.shields.io/badge/-%234ED844?style=flat&logo=none) ![#A25942](https://img.shields.io/badge/-%23A25942?style=flat&logo=none) ![#6D6DC9](https://img.shields.io/badge/-%236D6DC9?style=flat&logo=none) ![#B22E84](https://img.shields.io/badge/-%23B22E84?style=flat&logo=none) ![#89CF86](https://img.shields.io/badge/-%2389CF86?style=flat&logo=none) ![#1E7A72](https://img.shields.io/badge/-%231E7A72?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-04 01:29:37
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(59, 71%, 59%)  | rgb(224, 222, 76)  | #E0DE4C |185 |
| 2 | hsl(312, 77%, 49%) | rgb(221, 28, 182)  | #DD1CB6 |170 |
| 3 | hsl(116, 66%, 56%) |  rgb(78, 216, 68)  | #4ED844 |113 |
| 4 | hsl(14, 42%, 45%)  |  rgb(162, 89, 66)  | #A25942 |137 |
| 5 | hsl(240, 46%, 61%) | rgb(109, 109, 201) | #6D6DC9 |104 |
| 6 | hsl(321, 59%, 44%) | rgb(178, 46, 132)  | #B22E84 |133 |
| 7 | hsl(118, 43%, 67%) | rgb(137, 207, 134) | #89CF86 |151 |
| 8 | hsl(175, 60%, 30%) | rgb(30, 122, 114)  | #1E7A72 | 66 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(59, 71%, 59%),rgb(224, 222, 76),185
hsl(312, 77%, 49%),rgb(221, 28, 182),170
hsl(116, 66%, 56%),rgb(78, 216, 68),113
hsl(14, 42%, 45%),rgb(162, 89, 66),137
hsl(240, 46%, 61%),rgb(109, 109, 201),104
hsl(321, 59%, 44%),rgb(178, 46, 132),133
hsl(118, 43%, 67%),rgb(137, 207, 134),151
hsl(175, 60%, 30%),rgb(30, 122, 114),66

Generated: 2026-08-04 01:29:37
```
