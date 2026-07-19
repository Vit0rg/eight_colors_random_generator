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

![#BA208E](https://img.shields.io/badge/-%23BA208E?style=flat&logo=none) ![#911B89](https://img.shields.io/badge/-%23911B89?style=flat&logo=none) ![#109CCA](https://img.shields.io/badge/-%23109CCA?style=flat&logo=none) ![#9B64FB](https://img.shields.io/badge/-%239B64FB?style=flat&logo=none) ![#37A38A](https://img.shields.io/badge/-%2337A38A?style=flat&logo=none) ![#99CB76](https://img.shields.io/badge/-%2399CB76?style=flat&logo=none) ![#5645B3](https://img.shields.io/badge/-%235645B3?style=flat&logo=none) ![#F8CE25](https://img.shields.io/badge/-%23F8CE25?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-19 01:48:19
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(317, 70%, 43%) | rgb(186, 32, 142)  | #BA208E |169 |
| 2 | hsl(304, 68%, 34%) | rgb(145, 27, 137)  | #911B89 |133 |
| 3 | hsl(195, 85%, 43%) | rgb(16, 156, 202)  | #109CCA | 38 |
| 4 | hsl(262, 96%, 69%) | rgb(155, 100, 251) | #9B64FB |141 |
| 5 | hsl(166, 49%, 43%) | rgb(55, 163, 138)  | #37A38A | 73 |
| 6 | hsl(95, 45%, 63%)  | rgb(153, 203, 118) | #99CB76 |150 |
| 7 | hsl(249, 44%, 49%) |  rgb(86, 69, 179)  | #5645B3 | 97 |
| 8 | hsl(48, 94%, 56%)  | rgb(248, 206, 37)  | #F8CE25 |221 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(317, 70%, 43%),rgb(186, 32, 142),169
hsl(304, 68%, 34%),rgb(145, 27, 137),133
hsl(195, 85%, 43%),rgb(16, 156, 202),38
hsl(262, 96%, 69%),rgb(155, 100, 251),141
hsl(166, 49%, 43%),rgb(55, 163, 138),73
hsl(95, 45%, 63%),rgb(153, 203, 118),150
hsl(249, 44%, 49%),rgb(86, 69, 179),97
hsl(48, 94%, 56%),rgb(248, 206, 37),221

Generated: 2026-07-19 01:48:19
```
