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

![#01F362](https://img.shields.io/badge/-%2301F362?style=flat&logo=none) ![#02F2CA](https://img.shields.io/badge/-%2302F2CA?style=flat&logo=none) ![#2A3C6E](https://img.shields.io/badge/-%232A3C6E?style=flat&logo=none) ![#94CB80](https://img.shields.io/badge/-%2394CB80?style=flat&logo=none) ![#4FBC47](https://img.shields.io/badge/-%234FBC47?style=flat&logo=none) ![#990494](https://img.shields.io/badge/-%23990494?style=flat&logo=none) ![#238DC1](https://img.shields.io/badge/-%23238DC1?style=flat&logo=none) ![#26D3A5](https://img.shields.io/badge/-%2326D3A5?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-21 08:27:41
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(144, 99%, 48%) |  rgb(1, 243, 98)   | #01F362 | 48 |
| 2 | hsl(170, 98%, 48%) |  rgb(2, 242, 202)  | #02F2CA | 50 |
| 3 | hsl(224, 44%, 30%) |  rgb(42, 60, 110)  | #2A3C6E | 60 |
| 4 | hsl(104, 42%, 65%) | rgb(148, 203, 128) | #94CB80 |151 |
| 5 | hsl(116, 47%, 51%) |  rgb(79, 188, 71)  | #4FBC47 |113 |
| 6 | hsl(302, 94%, 31%) |  rgb(153, 4, 148)  | #990494 |127 |
| 7 | hsl(200, 69%, 45%) | rgb(35, 141, 193)  | #238DC1 | 74 |
| 8 | hsl(164, 69%, 49%) | rgb(38, 211, 165)  | #26D3A5 | 79 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(144, 99%, 48%),rgb(1, 243, 98),48
hsl(170, 98%, 48%),rgb(2, 242, 202),50
hsl(224, 44%, 30%),rgb(42, 60, 110),60
hsl(104, 42%, 65%),rgb(148, 203, 128),151
hsl(116, 47%, 51%),rgb(79, 188, 71),113
hsl(302, 94%, 31%),rgb(153, 4, 148),127
hsl(200, 69%, 45%),rgb(35, 141, 193),74
hsl(164, 69%, 49%),rgb(38, 211, 165),79

Generated: 2026-08-21 08:27:41
```
