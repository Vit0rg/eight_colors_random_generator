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

![#3F979B](https://img.shields.io/badge/-%233F979B?style=flat&logo=none) ![#4003F6](https://img.shields.io/badge/-%234003F6?style=flat&logo=none) ![#33B1A5](https://img.shields.io/badge/-%2333B1A5?style=flat&logo=none) ![#00F4A7](https://img.shields.io/badge/-%2300F4A7?style=flat&logo=none) ![#9140AE](https://img.shields.io/badge/-%239140AE?style=flat&logo=none) ![#BD7E08](https://img.shields.io/badge/-%23BD7E08?style=flat&logo=none) ![#548121](https://img.shields.io/badge/-%23548121?style=flat&logo=none) ![#2C23A8](https://img.shields.io/badge/-%232C23A8?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-10 10:44:14
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(183, 42%, 43%) | rgb(63, 151, 155)  | #3F979B | 73 |
| 2 | hsl(255, 97%, 49%) |  rgb(64, 3, 246)   | #4003F6 | 57 |
| 3 | hsl(174, 55%, 45%) | rgb(51, 177, 165)  | #33B1A5 | 73 |
| 4 |hsl(161, 100%, 48%) |  rgb(0, 244, 167)  | #00F4A7 | 49 |
| 5 | hsl(284, 46%, 47%) | rgb(145, 64, 174)  | #9140AE |133 |
| 6 | hsl(39, 91%, 39%)  |  rgb(189, 126, 8)  | #BD7E08 |172 |
| 7 | hsl(88, 59%, 32%)  |  rgb(84, 129, 33)  | #548121 |107 |
| 8 | hsl(244, 65%, 40%) |  rgb(44, 35, 168)  | #2C23A8 | 61 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(183, 42%, 43%),rgb(63, 151, 155),73
hsl(255, 97%, 49%),rgb(64, 3, 246),57
hsl(174, 55%, 45%),rgb(51, 177, 165),73
hsl(161, 100%, 48%),rgb(0, 244, 167),49
hsl(284, 46%, 47%),rgb(145, 64, 174),133
hsl(39, 91%, 39%),rgb(189, 126, 8),172
hsl(88, 59%, 32%),rgb(84, 129, 33),107
hsl(244, 65%, 40%),rgb(44, 35, 168),61

Generated: 2026-07-10 10:44:14
```
