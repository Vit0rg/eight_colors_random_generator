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

![#C9EC78](https://img.shields.io/badge/-%23C9EC78?style=flat&logo=none) ![#08C3B4](https://img.shields.io/badge/-%2308C3B4?style=flat&logo=none) ![#C2B71E](https://img.shields.io/badge/-%23C2B71E?style=flat&logo=none) ![#7C354D](https://img.shields.io/badge/-%237C354D?style=flat&logo=none) ![#D2A603](https://img.shields.io/badge/-%23D2A603?style=flat&logo=none) ![#E437FA](https://img.shields.io/badge/-%23E437FA?style=flat&logo=none) ![#E96CAE](https://img.shields.io/badge/-%23E96CAE?style=flat&logo=none) ![#6CC59D](https://img.shields.io/badge/-%236CC59D?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-12 01:46:40
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(78, 76%, 70%)  | rgb(201, 236, 120) | #C9EC78 |192 |
| 2 | hsl(175, 92%, 40%) |  rgb(8, 195, 180)  | #08C3B4 | 44 |
| 3 | hsl(56, 73%, 44%)  | rgb(194, 183, 30)  | #C2B71E |185 |
| 4 | hsl(340, 40%, 35%) |  rgb(124, 53, 77)  | #7C354D | 96 |
| 5 | hsl(47, 97%, 42%)  |  rgb(210, 166, 3)  | #D2A603 |178 |
| 6 | hsl(293, 96%, 60%) | rgb(228, 55, 250)  | #E437FA |171 |
| 7 | hsl(328, 74%, 67%) | rgb(233, 108, 174) | #E96CAE |211 |
| 8 | hsl(153, 44%, 60%) | rgb(108, 197, 157) | #6CC59D |115 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(78, 76%, 70%),rgb(201, 236, 120),192
hsl(175, 92%, 40%),rgb(8, 195, 180),44
hsl(56, 73%, 44%),rgb(194, 183, 30),185
hsl(340, 40%, 35%),rgb(124, 53, 77),96
hsl(47, 97%, 42%),rgb(210, 166, 3),178
hsl(293, 96%, 60%),rgb(228, 55, 250),171
hsl(328, 74%, 67%),rgb(233, 108, 174),211
hsl(153, 44%, 60%),rgb(108, 197, 157),115

Generated: 2026-04-12 01:46:40
```
