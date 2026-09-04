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

![#A3E074](https://img.shields.io/badge/-%23A3E074?style=flat&logo=none) ![#3625ED](https://img.shields.io/badge/-%233625ED?style=flat&logo=none) ![#28AE13](https://img.shields.io/badge/-%2328AE13?style=flat&logo=none) ![#C9C930](https://img.shields.io/badge/-%23C9C930?style=flat&logo=none) ![#79EBCF](https://img.shields.io/badge/-%2379EBCF?style=flat&logo=none) ![#97A328](https://img.shields.io/badge/-%2397A328?style=flat&logo=none) ![#8E8729](https://img.shields.io/badge/-%238E8729?style=flat&logo=none) ![#D58AA3](https://img.shields.io/badge/-%23D58AA3?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-04 18:42:26
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(94, 64%, 67%)  | rgb(163, 224, 116) | #A3E074 |150 |
| 2 | hsl(245, 85%, 54%) |  rgb(54, 37, 237)  | #3625ED | 63 |
| 3 | hsl(112, 80%, 38%) |  rgb(40, 174, 19)  | #28AE13 | 70 |
| 4 | hsl(60, 61%, 49%)  | rgb(201, 201, 48)  | #C9C930 |185 |
| 5 | hsl(165, 75%, 70%) | rgb(121, 235, 207) | #79EBCF |122 |
| 6 | hsl(66, 60%, 40%)  | rgb(151, 163, 40)  | #97A328 |143 |
| 7 | hsl(56, 55%, 36%)  | rgb(142, 135, 41)  | #8E8729 |143 |
| 8 | hsl(340, 48%, 69%) | rgb(213, 138, 163) | #D58AA3 |181 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(94, 64%, 67%),rgb(163, 224, 116),150
hsl(245, 85%, 54%),rgb(54, 37, 237),63
hsl(112, 80%, 38%),rgb(40, 174, 19),70
hsl(60, 61%, 49%),rgb(201, 201, 48),185
hsl(165, 75%, 70%),rgb(121, 235, 207),122
hsl(66, 60%, 40%),rgb(151, 163, 40),143
hsl(56, 55%, 36%),rgb(142, 135, 41),143
hsl(340, 48%, 69%),rgb(213, 138, 163),181

Generated: 2026-09-04 18:42:26
```
