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

![#2EB28C](https://img.shields.io/badge/-%232EB28C?style=flat&logo=none) ![#049929](https://img.shields.io/badge/-%23049929?style=flat&logo=none) ![#84D877](https://img.shields.io/badge/-%2384D877?style=flat&logo=none) ![#6F732A](https://img.shields.io/badge/-%236F732A?style=flat&logo=none) ![#235275](https://img.shields.io/badge/-%23235275?style=flat&logo=none) ![#FA425A](https://img.shields.io/badge/-%23FA425A?style=flat&logo=none) ![#7F1E20](https://img.shields.io/badge/-%237F1E20?style=flat&logo=none) ![#E67841](https://img.shields.io/badge/-%23E67841?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-09 08:30:29
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(163, 59%, 44%) | rgb(46, 178, 140)  | #2EB28C | 73 |
| 2 | hsl(135, 94%, 31%) |  rgb(4, 153, 41)   | #049929 | 35 |
| 3 | hsl(112, 56%, 66%) | rgb(132, 216, 119) | #84D877 |150 |
| 4 | hsl(63, 46%, 31%)  | rgb(111, 115, 42)  | #6F732A |101 |
| 5 | hsl(206, 54%, 30%) |  rgb(35, 82, 117)  | #235275 | 66 |
| 6 | hsl(352, 95%, 62%) |  rgb(250, 66, 90)  | #FA425A |204 |
| 7 | hsl(359, 61%, 31%) |  rgb(127, 30, 32)  | #7F1E20 | 95 |
| 8 | hsl(20, 77%, 58%)  | rgb(230, 120, 65)  | #E67841 |173 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(163, 59%, 44%),rgb(46, 178, 140),73
hsl(135, 94%, 31%),rgb(4, 153, 41),35
hsl(112, 56%, 66%),rgb(132, 216, 119),150
hsl(63, 46%, 31%),rgb(111, 115, 42),101
hsl(206, 54%, 30%),rgb(35, 82, 117),66
hsl(352, 95%, 62%),rgb(250, 66, 90),204
hsl(359, 61%, 31%),rgb(127, 30, 32),95
hsl(20, 77%, 58%),rgb(230, 120, 65),173

Generated: 2026-08-09 08:30:29
```
