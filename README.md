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

![#00D7DB](https://img.shields.io/badge/-%2300D7DB?style=flat&logo=none) ![#179F6D](https://img.shields.io/badge/-%23179F6D?style=flat&logo=none) ![#A7C04D](https://img.shields.io/badge/-%23A7C04D?style=flat&logo=none) ![#6C339D](https://img.shields.io/badge/-%236C339D?style=flat&logo=none) ![#80DAC5](https://img.shields.io/badge/-%2380DAC5?style=flat&logo=none) ![#629AD9](https://img.shields.io/badge/-%23629AD9?style=flat&logo=none) ![#9825A1](https://img.shields.io/badge/-%239825A1?style=flat&logo=none) ![#77702B](https://img.shields.io/badge/-%2377702B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-07 02:39:27
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 |hsl(181, 100%, 43%) |  rgb(0, 215, 219)  | #00D7DB | 44 |
| 2 | hsl(158, 74%, 36%) | rgb(23, 159, 109)  | #179F6D | 36 |
| 3 | hsl(73, 48%, 53%)  | rgb(167, 192, 77)  | #A7C04D |150 |
| 4 | hsl(272, 51%, 41%) | rgb(108, 51, 157)  | #6C339D | 97 |
| 5 | hsl(166, 55%, 68%) | rgb(128, 218, 197) | #80DAC5 |152 |
| 6 | hsl(212, 61%, 62%) | rgb(98, 154, 217)  | #629AD9 |110 |
| 7 | hsl(296, 62%, 39%) | rgb(152, 37, 161)  | #9825A1 |133 |
| 8 | hsl(54, 47%, 32%)  | rgb(119, 112, 43)  | #77702B |101 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(181, 100%, 43%),rgb(0, 215, 219),44
hsl(158, 74%, 36%),rgb(23, 159, 109),36
hsl(73, 48%, 53%),rgb(167, 192, 77),150
hsl(272, 51%, 41%),rgb(108, 51, 157),97
hsl(166, 55%, 68%),rgb(128, 218, 197),152
hsl(212, 61%, 62%),rgb(98, 154, 217),110
hsl(296, 62%, 39%),rgb(152, 37, 161),133
hsl(54, 47%, 32%),rgb(119, 112, 43),101

Generated: 2026-06-07 02:39:27
```
