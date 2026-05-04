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

![#88921A](https://img.shields.io/badge/-%2388921A?style=flat&logo=none) ![#CC469F](https://img.shields.io/badge/-%23CC469F?style=flat&logo=none) ![#43E446](https://img.shields.io/badge/-%2343E446?style=flat&logo=none) ![#F12CA5](https://img.shields.io/badge/-%23F12CA5?style=flat&logo=none) ![#E46BB6](https://img.shields.io/badge/-%23E46BB6?style=flat&logo=none) ![#9D0063](https://img.shields.io/badge/-%239D0063?style=flat&logo=none) ![#703428](https://img.shields.io/badge/-%23703428?style=flat&logo=none) ![#E865EB](https://img.shields.io/badge/-%23E865EB?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-04 10:06:10
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(65, 69%, 34%)  | rgb(136, 146, 26)  | #88921A |143 |
| 2 | hsl(320, 57%, 54%) | rgb(204, 70, 159)  | #CC469F |169 |
| 3 | hsl(121, 75%, 58%) |  rgb(67, 228, 70)  | #43E446 | 77 |
| 4 | hsl(323, 88%, 56%) | rgb(241, 44, 165)  | #F12CA5 |205 |
| 5 | hsl(323, 70%, 66%) | rgb(228, 107, 182) | #E46BB6 |176 |
| 6 | hsl(322, 99%, 31%) |  rgb(157, 0, 99)   | #9D0063 |126 |
| 7 | hsl(10, 47%, 30%)  |  rgb(112, 52, 40)  | #703428 | 95 |
| 8 | hsl(299, 77%, 66%) | rgb(232, 101, 235) | #E865EB |213 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(65, 69%, 34%),rgb(136, 146, 26),143
hsl(320, 57%, 54%),rgb(204, 70, 159),169
hsl(121, 75%, 58%),rgb(67, 228, 70),77
hsl(323, 88%, 56%),rgb(241, 44, 165),205
hsl(323, 70%, 66%),rgb(228, 107, 182),176
hsl(322, 99%, 31%),rgb(157, 0, 99),126
hsl(10, 47%, 30%),rgb(112, 52, 40),95
hsl(299, 77%, 66%),rgb(232, 101, 235),213

Generated: 2026-05-04 10:06:10
```
