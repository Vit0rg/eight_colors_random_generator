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

![#3B7E33](https://img.shields.io/badge/-%233B7E33?style=flat&logo=none) ![#D9FD0B](https://img.shields.io/badge/-%23D9FD0B?style=flat&logo=none) ![#05A324](https://img.shields.io/badge/-%2305A324?style=flat&logo=none) ![#266DC3](https://img.shields.io/badge/-%23266DC3?style=flat&logo=none) ![#3C9B17](https://img.shields.io/badge/-%233C9B17?style=flat&logo=none) ![#34FDD8](https://img.shields.io/badge/-%2334FDD8?style=flat&logo=none) ![#0C54A1](https://img.shields.io/badge/-%230C54A1?style=flat&logo=none) ![#0101B5](https://img.shields.io/badge/-%230101B5?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-08 12:21:45
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(114, 42%, 35%) |  rgb(59, 126, 51)  | #3B7E33 | 65 |
| 2 | hsl(69, 99%, 52%)  | rgb(217, 253, 11)  | #D9FD0B |190 |
| 3 | hsl(132, 94%, 33%) |  rgb(5, 163, 36)   | #05A324 | 35 |
| 4 | hsl(213, 67%, 46%) | rgb(38, 109, 195)  | #266DC3 | 68 |
| 5 | hsl(103, 74%, 35%) |  rgb(60, 155, 23)  | #3C9B17 | 70 |
| 6 | hsl(169, 99%, 60%) | rgb(52, 253, 216)  | #34FDD8 | 86 |
| 7 | hsl(211, 86%, 34%) |  rgb(12, 84, 161)  | #0C54A1 | 31 |
| 8 | hsl(240, 98%, 36%) |   rgb(1, 1, 181)   | #0101B5 | 20 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(114, 42%, 35%),rgb(59, 126, 51),65
hsl(69, 99%, 52%),rgb(217, 253, 11),190
hsl(132, 94%, 33%),rgb(5, 163, 36),35
hsl(213, 67%, 46%),rgb(38, 109, 195),68
hsl(103, 74%, 35%),rgb(60, 155, 23),70
hsl(169, 99%, 60%),rgb(52, 253, 216),86
hsl(211, 86%, 34%),rgb(12, 84, 161),31
hsl(240, 98%, 36%),rgb(1, 1, 181),20

Generated: 2026-06-08 12:21:45
```
