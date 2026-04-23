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

![#FDEB49](https://img.shields.io/badge/-%23FDEB49?style=flat&logo=none) ![#11A68F](https://img.shields.io/badge/-%2311A68F?style=flat&logo=none) ![#DEE96C](https://img.shields.io/badge/-%23DEE96C?style=flat&logo=none) ![#218295](https://img.shields.io/badge/-%23218295?style=flat&logo=none) ![#E56719](https://img.shields.io/badge/-%23E56719?style=flat&logo=none) ![#42BC60](https://img.shields.io/badge/-%2342BC60?style=flat&logo=none) ![#C545FC](https://img.shields.io/badge/-%23C545FC?style=flat&logo=none) ![#EF6742](https://img.shields.io/badge/-%23EF6742?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-23 01:50:10
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(54, 98%, 64%)  | rgb(253, 235, 73)  | #FDEB49 |227 |
| 2 | hsl(171, 81%, 36%) | rgb(17, 166, 143)  | #11A68F | 37 |
| 3 | hsl(65, 74%, 67%)  | rgb(222, 233, 108) | #DEE96C |192 |
| 4 | hsl(190, 63%, 36%) | rgb(33, 130, 149)  | #218295 | 73 |
| 5 | hsl(23, 80%, 50%)  | rgb(229, 103, 25)  | #E56719 |172 |
| 6 | hsl(135, 48%, 50%) |  rgb(66, 188, 96)  | #42BC60 | 78 |
| 7 | hsl(282, 97%, 63%) | rgb(197, 69, 252)  | #C545FC |171 |
| 8 | hsl(13, 85%, 60%)  | rgb(239, 103, 66)  | #EF6742 |209 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(54, 98%, 64%),rgb(253, 235, 73),227
hsl(171, 81%, 36%),rgb(17, 166, 143),37
hsl(65, 74%, 67%),rgb(222, 233, 108),192
hsl(190, 63%, 36%),rgb(33, 130, 149),73
hsl(23, 80%, 50%),rgb(229, 103, 25),172
hsl(135, 48%, 50%),rgb(66, 188, 96),78
hsl(282, 97%, 63%),rgb(197, 69, 252),171
hsl(13, 85%, 60%),rgb(239, 103, 66),209

Generated: 2026-04-23 01:50:10
```
