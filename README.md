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

![#F9CE61](https://img.shields.io/badge/-%23F9CE61?style=flat&logo=none) ![#0564B2](https://img.shields.io/badge/-%230564B2?style=flat&logo=none) ![#5E88C3](https://img.shields.io/badge/-%235E88C3?style=flat&logo=none) ![#5A8612](https://img.shields.io/badge/-%235A8612?style=flat&logo=none) ![#D9332A](https://img.shields.io/badge/-%23D9332A?style=flat&logo=none) ![#401E7A](https://img.shields.io/badge/-%23401E7A?style=flat&logo=none) ![#E1EA61](https://img.shields.io/badge/-%23E1EA61?style=flat&logo=none) ![#9E002A](https://img.shields.io/badge/-%239E002A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-17 00:41:25
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(43, 93%, 68%)  | rgb(249, 206, 97)  | #F9CE61 |222 |
| 2 | hsl(207, 94%, 36%) |  rgb(5, 100, 178)  | #0564B2 | 31 |
| 3 | hsl(215, 46%, 57%) | rgb(94, 136, 195)  | #5E88C3 |110 |
| 4 | hsl(83, 76%, 30%)  |  rgb(90, 134, 18)  | #5A8612 |106 |
| 5 |  hsl(3, 70%, 51%)  |  rgb(217, 51, 42)  | #D9332A |167 |
| 6 | hsl(262, 60%, 30%) |  rgb(64, 30, 122)  | #401E7A | 60 |
| 7 | hsl(64, 77%, 65%)  | rgb(225, 234, 97)  | #E1EA61 |192 |
| 8 |hsl(344, 100%, 31%) |  rgb(158, 0, 42)   | #9E002A |125 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(43, 93%, 68%),rgb(249, 206, 97),222
hsl(207, 94%, 36%),rgb(5, 100, 178),31
hsl(215, 46%, 57%),rgb(94, 136, 195),110
hsl(83, 76%, 30%),rgb(90, 134, 18),106
hsl(3, 70%, 51%),rgb(217, 51, 42),167
hsl(262, 60%, 30%),rgb(64, 30, 122),60
hsl(64, 77%, 65%),rgb(225, 234, 97),192
hsl(344, 100%, 31%),rgb(158, 0, 42),125

Generated: 2026-08-17 00:41:25
```
