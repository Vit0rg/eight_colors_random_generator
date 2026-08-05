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

![#8952E9](https://img.shields.io/badge/-%238952E9?style=flat&logo=none) ![#0E2AE1](https://img.shields.io/badge/-%230E2AE1?style=flat&logo=none) ![#68C8E3](https://img.shields.io/badge/-%2368C8E3?style=flat&logo=none) ![#274580](https://img.shields.io/badge/-%23274580?style=flat&logo=none) ![#7AD0CA](https://img.shields.io/badge/-%237AD0CA?style=flat&logo=none) ![#88D051](https://img.shields.io/badge/-%2388D051?style=flat&logo=none) ![#BF7220](https://img.shields.io/badge/-%23BF7220?style=flat&logo=none) ![#B477ED](https://img.shields.io/badge/-%23B477ED?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-05 01:44:10
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(262, 78%, 62%) | rgb(137, 82, 233)  | #8952E9 |141 |
| 2 | hsl(232, 88%, 47%) |  rgb(14, 42, 225)  | #0E2AE1 | 26 |
| 3 | hsl(193, 69%, 65%) | rgb(104, 200, 227) | #68C8E3 |116 |
| 4 | hsl(220, 53%, 33%) |  rgb(39, 69, 128)  | #274580 | 61 |
| 5 | hsl(176, 48%, 65%) | rgb(122, 208, 202) | #7AD0CA |116 |
| 6 | hsl(94, 58%, 57%)  | rgb(136, 208, 81)  | #88D051 |150 |
| 7 | hsl(31, 71%, 44%)  | rgb(191, 114, 32)  | #BF7220 |173 |
| 8 | hsl(271, 77%, 70%) | rgb(180, 119, 237) | #B477ED |177 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(262, 78%, 62%),rgb(137, 82, 233),141
hsl(232, 88%, 47%),rgb(14, 42, 225),26
hsl(193, 69%, 65%),rgb(104, 200, 227),116
hsl(220, 53%, 33%),rgb(39, 69, 128),61
hsl(176, 48%, 65%),rgb(122, 208, 202),116
hsl(94, 58%, 57%),rgb(136, 208, 81),150
hsl(31, 71%, 44%),rgb(191, 114, 32),173
hsl(271, 77%, 70%),rgb(180, 119, 237),177

Generated: 2026-08-05 01:44:10
```
