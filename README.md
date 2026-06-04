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

![#1DA4A0](https://img.shields.io/badge/-%231DA4A0?style=flat&logo=none) ![#F34879](https://img.shields.io/badge/-%23F34879?style=flat&logo=none) ![#95CB6B](https://img.shields.io/badge/-%2395CB6B?style=flat&logo=none) ![#05E4C7](https://img.shields.io/badge/-%2305E4C7?style=flat&logo=none) ![#FD155B](https://img.shields.io/badge/-%23FD155B?style=flat&logo=none) ![#6508E7](https://img.shields.io/badge/-%236508E7?style=flat&logo=none) ![#421FA1](https://img.shields.io/badge/-%23421FA1?style=flat&logo=none) ![#F6EB4A](https://img.shields.io/badge/-%23F6EB4A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-04 10:54:54
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(178, 70%, 38%) | rgb(29, 164, 160)  | #1DA4A0 | 73 |
| 2 | hsl(343, 88%, 62%) | rgb(243, 72, 121)  | #F34879 |204 |
| 3 | hsl(94, 48%, 61%)  | rgb(149, 203, 107) | #95CB6B |150 |
| 4 | hsl(172, 95%, 46%) |  rgb(5, 228, 199)  | #05E4C7 | 44 |
| 5 | hsl(342, 99%, 54%) |  rgb(253, 21, 91)  | #FD155B |198 |
| 6 | hsl(265, 93%, 47%) |  rgb(101, 8, 231)  | #6508E7 | 93 |
| 7 | hsl(256, 67%, 38%) |  rgb(66, 31, 161)  | #421FA1 | 61 |
| 8 | hsl(56, 91%, 63%)  | rgb(246, 235, 74)  | #F6EB4A |227 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(178, 70%, 38%),rgb(29, 164, 160),73
hsl(343, 88%, 62%),rgb(243, 72, 121),204
hsl(94, 48%, 61%),rgb(149, 203, 107),150
hsl(172, 95%, 46%),rgb(5, 228, 199),44
hsl(342, 99%, 54%),rgb(253, 21, 91),198
hsl(265, 93%, 47%),rgb(101, 8, 231),93
hsl(256, 67%, 38%),rgb(66, 31, 161),61
hsl(56, 91%, 63%),rgb(246, 235, 74),227

Generated: 2026-06-04 10:54:54
```
