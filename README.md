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

![#251CE2](https://img.shields.io/badge/-%23251CE2?style=flat&logo=none) ![#176AC4](https://img.shields.io/badge/-%23176AC4?style=flat&logo=none) ![#3B9295](https://img.shields.io/badge/-%233B9295?style=flat&logo=none) ![#D2975F](https://img.shields.io/badge/-%23D2975F?style=flat&logo=none) ![#4F39BB](https://img.shields.io/badge/-%234F39BB?style=flat&logo=none) ![#4BE429](https://img.shields.io/badge/-%234BE429?style=flat&logo=none) ![#21A908](https://img.shields.io/badge/-%2321A908?style=flat&logo=none) ![#4ED483](https://img.shields.io/badge/-%234ED483?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-09 16:22:25
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(243, 78%, 50%) |  rgb(37, 28, 226)  | #251CE2 | 62 |
| 2 | hsl(211, 79%, 43%) | rgb(23, 106, 196)  | #176AC4 | 32 |
| 3 | hsl(182, 43%, 41%) | rgb(59, 146, 149)  | #3B9295 | 73 |
| 4 | hsl(29, 56%, 60%)  | rgb(210, 151, 95)  | #D2975F |180 |
| 5 | hsl(250, 53%, 48%) |  rgb(79, 57, 187)  | #4F39BB | 98 |
| 6 | hsl(109, 78%, 53%) |  rgb(75, 228, 41)  | #4BE429 | 77 |
| 7 | hsl(111, 90%, 35%) |  rgb(33, 169, 8)   | #21A908 | 70 |
| 8 | hsl(144, 61%, 57%) | rgb(78, 212, 131)  | #4ED483 |115 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(243, 78%, 50%),rgb(37, 28, 226),62
hsl(211, 79%, 43%),rgb(23, 106, 196),32
hsl(182, 43%, 41%),rgb(59, 146, 149),73
hsl(29, 56%, 60%),rgb(210, 151, 95),180
hsl(250, 53%, 48%),rgb(79, 57, 187),98
hsl(109, 78%, 53%),rgb(75, 228, 41),77
hsl(111, 90%, 35%),rgb(33, 169, 8),70
hsl(144, 61%, 57%),rgb(78, 212, 131),115

Generated: 2026-08-09 16:22:25
```
