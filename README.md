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

![#B473C3](https://img.shields.io/badge/-%23B473C3?style=flat&logo=none) ![#21E295](https://img.shields.io/badge/-%2321E295?style=flat&logo=none) ![#B0E42F](https://img.shields.io/badge/-%23B0E42F?style=flat&logo=none) ![#A20B77](https://img.shields.io/badge/-%23A20B77?style=flat&logo=none) ![#A2B840](https://img.shields.io/badge/-%23A2B840?style=flat&logo=none) ![#DD45B4](https://img.shields.io/badge/-%23DD45B4?style=flat&logo=none) ![#7FF268](https://img.shields.io/badge/-%237FF268?style=flat&logo=none) ![#1A2EC5](https://img.shields.io/badge/-%231A2EC5?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-16 19:12:46
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(289, 40%, 61%) | rgb(180, 115, 195) | #B473C3 |176 |
| 2 | hsl(156, 77%, 51%) | rgb(33, 226, 149)  | #21E295 | 79 |
| 3 | hsl(77, 77%, 54%)  | rgb(176, 228, 47)  | #B0E42F |149 |
| 4 | hsl(317, 87%, 34%) | rgb(162, 11, 119)  | #A20B77 |126 |
| 5 | hsl(71, 48%, 49%)  | rgb(162, 184, 64)  | #A2B840 |149 |
| 6 | hsl(316, 69%, 57%) | rgb(221, 69, 180)  | #DD45B4 |170 |
| 7 | hsl(110, 85%, 68%) | rgb(127, 242, 104) | #7FF268 |120 |
| 8 | hsl(233, 76%, 44%) |  rgb(26, 46, 197)  | #1A2EC5 | 62 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(289, 40%, 61%),rgb(180, 115, 195),176
hsl(156, 77%, 51%),rgb(33, 226, 149),79
hsl(77, 77%, 54%),rgb(176, 228, 47),149
hsl(317, 87%, 34%),rgb(162, 11, 119),126
hsl(71, 48%, 49%),rgb(162, 184, 64),149
hsl(316, 69%, 57%),rgb(221, 69, 180),170
hsl(110, 85%, 68%),rgb(127, 242, 104),120
hsl(233, 76%, 44%),rgb(26, 46, 197),62

Generated: 2026-09-16 19:12:46
```
