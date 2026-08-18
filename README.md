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

![#61DB93](https://img.shields.io/badge/-%2361DB93?style=flat&logo=none) ![#61C62E](https://img.shields.io/badge/-%2361C62E?style=flat&logo=none) ![#CDC00E](https://img.shields.io/badge/-%23CDC00E?style=flat&logo=none) ![#6357CF](https://img.shields.io/badge/-%236357CF?style=flat&logo=none) ![#0AB29E](https://img.shields.io/badge/-%230AB29E?style=flat&logo=none) ![#7C7FE3](https://img.shields.io/badge/-%237C7FE3?style=flat&logo=none) ![#F433AD](https://img.shields.io/badge/-%23F433AD?style=flat&logo=none) ![#05B740](https://img.shields.io/badge/-%2305B740?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-18 16:20:05
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(145, 63%, 62%) | rgb(97, 219, 147)  | #61DB93 |115 |
| 2 | hsl(100, 62%, 48%) |  rgb(97, 198, 46)  | #61C62E |113 |
| 3 | hsl(56, 87%, 43%)  | rgb(205, 192, 14)  | #CDC00E |184 |
| 4 | hsl(246, 56%, 58%) |  rgb(99, 87, 207)  | #6357CF |104 |
| 5 | hsl(173, 89%, 37%) | rgb(10, 178, 158)  | #0AB29E | 37 |
| 6 | hsl(238, 65%, 69%) | rgb(124, 127, 227) | #7C7FE3 |104 |
| 7 | hsl(322, 90%, 58%) | rgb(244, 51, 173)  | #F433AD |205 |
| 8 | hsl(140, 94%, 37%) |  rgb(5, 183, 64)   | #05B740 | 41 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(145, 63%, 62%),rgb(97, 219, 147),115
hsl(100, 62%, 48%),rgb(97, 198, 46),113
hsl(56, 87%, 43%),rgb(205, 192, 14),184
hsl(246, 56%, 58%),rgb(99, 87, 207),104
hsl(173, 89%, 37%),rgb(10, 178, 158),37
hsl(238, 65%, 69%),rgb(124, 127, 227),104
hsl(322, 90%, 58%),rgb(244, 51, 173),205
hsl(140, 94%, 37%),rgb(5, 183, 64),41

Generated: 2026-08-18 16:20:05
```
