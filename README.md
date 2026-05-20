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

![#9373D7](https://img.shields.io/badge/-%239373D7?style=flat&logo=none) ![#3CF0E7](https://img.shields.io/badge/-%233CF0E7?style=flat&logo=none) ![#3399BC](https://img.shields.io/badge/-%233399BC?style=flat&logo=none) ![#919E0A](https://img.shields.io/badge/-%23919E0A?style=flat&logo=none) ![#079503](https://img.shields.io/badge/-%23079503?style=flat&logo=none) ![#0630CA](https://img.shields.io/badge/-%230630CA?style=flat&logo=none) ![#1465BC](https://img.shields.io/badge/-%231465BC?style=flat&logo=none) ![#B1292B](https://img.shields.io/badge/-%23B1292B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-20 10:42:10
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(259, 56%, 65%) | rgb(147, 115, 215) | #9373D7 |140 |
| 2 | hsl(177, 86%, 59%) | rgb(60, 240, 231)  | #3CF0E7 | 87 |
| 3 | hsl(195, 57%, 47%) | rgb(51, 153, 188)  | #3399BC | 74 |
| 4 | hsl(65, 88%, 33%)  | rgb(145, 158, 10)  | #919E0A |142 |
| 5 | hsl(118, 96%, 30%) |   rgb(7, 149, 3)   | #079503 | 34 |
| 6 | hsl(227, 94%, 41%) |  rgb(6, 48, 202)   | #0630CA | 26 |
| 7 | hsl(211, 80%, 41%) | rgb(20, 101, 188)  | #1465BC | 32 |
| 8 | hsl(359, 62%, 43%) |  rgb(177, 41, 43)  | #B1292B |131 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(259, 56%, 65%),rgb(147, 115, 215),140
hsl(177, 86%, 59%),rgb(60, 240, 231),87
hsl(195, 57%, 47%),rgb(51, 153, 188),74
hsl(65, 88%, 33%),rgb(145, 158, 10),142
hsl(118, 96%, 30%),rgb(7, 149, 3),34
hsl(227, 94%, 41%),rgb(6, 48, 202),26
hsl(211, 80%, 41%),rgb(20, 101, 188),32
hsl(359, 62%, 43%),rgb(177, 41, 43),131

Generated: 2026-05-20 10:42:10
```
