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

![#18219E](https://img.shields.io/badge/-%2318219E?style=flat&logo=none) ![#69E1B9](https://img.shields.io/badge/-%2369E1B9?style=flat&logo=none) ![#2B7C82](https://img.shields.io/badge/-%232B7C82?style=flat&logo=none) ![#3B209C](https://img.shields.io/badge/-%233B209C?style=flat&logo=none) ![#E311F2](https://img.shields.io/badge/-%23E311F2?style=flat&logo=none) ![#23EFD8](https://img.shields.io/badge/-%2323EFD8?style=flat&logo=none) ![#DDE759](https://img.shields.io/badge/-%23DDE759?style=flat&logo=none) ![#D85954](https://img.shields.io/badge/-%23D85954?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-23 02:08:15
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(236, 73%, 36%) |  rgb(24, 33, 158)  | #18219E | 25 |
| 2 | hsl(160, 67%, 65%) | rgb(105, 225, 185) | #69E1B9 |116 |
| 3 | hsl(184, 50%, 34%) | rgb(43, 124, 130)  | #2B7C82 | 67 |
| 4 | hsl(253, 66%, 37%) |  rgb(59, 32, 156)  | #3B209C | 61 |
| 5 | hsl(296, 90%, 51%) | rgb(227, 17, 242)  | #E311F2 |165 |
| 6 | hsl(173, 87%, 54%) | rgb(35, 239, 216)  | #23EFD8 | 86 |
| 7 | hsl(64, 75%, 63%)  | rgb(221, 231, 89)  | #DDE759 |192 |
| 8 |  hsl(2, 63%, 59%)  |  rgb(216, 89, 84)  | #D85954 |174 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(236, 73%, 36%),rgb(24, 33, 158),25
hsl(160, 67%, 65%),rgb(105, 225, 185),116
hsl(184, 50%, 34%),rgb(43, 124, 130),67
hsl(253, 66%, 37%),rgb(59, 32, 156),61
hsl(296, 90%, 51%),rgb(227, 17, 242),165
hsl(173, 87%, 54%),rgb(35, 239, 216),86
hsl(64, 75%, 63%),rgb(221, 231, 89),192
hsl(2, 63%, 59%),rgb(216, 89, 84),174

Generated: 2026-05-23 02:08:15
```
