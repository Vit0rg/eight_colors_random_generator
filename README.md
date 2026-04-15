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

![#30B536](https://img.shields.io/badge/-%2330B536?style=flat&logo=none) ![#76831F](https://img.shields.io/badge/-%2376831F?style=flat&logo=none) ![#9A62C5](https://img.shields.io/badge/-%239A62C5?style=flat&logo=none) ![#6BE5E9](https://img.shields.io/badge/-%236BE5E9?style=flat&logo=none) ![#0AF6FF](https://img.shields.io/badge/-%230AF6FF?style=flat&logo=none) ![#DF2ACD](https://img.shields.io/badge/-%23DF2ACD?style=flat&logo=none) ![#AC0BBA](https://img.shields.io/badge/-%23AC0BBA?style=flat&logo=none) ![#9E7DD8](https://img.shields.io/badge/-%239E7DD8?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-15 09:10:32
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(123, 58%, 45%) |  rgb(48, 181, 54)  | #30B536 | 77 |
| 2 | hsl(68, 61%, 32%)  | rgb(118, 131, 31)  | #76831F |107 |
| 3 | hsl(274, 46%, 58%) | rgb(154, 98, 197)  | #9A62C5 |140 |
| 4 | hsl(182, 75%, 67%) | rgb(107, 229, 233) | #6BE5E9 |117 |
| 5 |hsl(182, 100%, 52%) | rgb(10, 246, 255)  | #0AF6FF | 51 |
| 6 | hsl(306, 74%, 52%) | rgb(223, 42, 205)  | #DF2ACD |170 |
| 7 | hsl(295, 88%, 39%) | rgb(172, 11, 186)  | #AC0BBA |128 |
| 8 | hsl(262, 54%, 67%) | rgb(158, 125, 216) | #9E7DD8 |140 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(123, 58%, 45%),rgb(48, 181, 54),77
hsl(68, 61%, 32%),rgb(118, 131, 31),107
hsl(274, 46%, 58%),rgb(154, 98, 197),140
hsl(182, 75%, 67%),rgb(107, 229, 233),117
hsl(182, 100%, 52%),rgb(10, 246, 255),51
hsl(306, 74%, 52%),rgb(223, 42, 205),170
hsl(295, 88%, 39%),rgb(172, 11, 186),128
hsl(262, 54%, 67%),rgb(158, 125, 216),140

Generated: 2026-04-15 09:10:32
```
