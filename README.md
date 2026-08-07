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

![#6AD5F0](https://img.shields.io/badge/-%236AD5F0?style=flat&logo=none) ![#1FEC08](https://img.shields.io/badge/-%231FEC08?style=flat&logo=none) ![#CE5644](https://img.shields.io/badge/-%23CE5644?style=flat&logo=none) ![#03EC0F](https://img.shields.io/badge/-%2303EC0F?style=flat&logo=none) ![#84E0E0](https://img.shields.io/badge/-%2384E0E0?style=flat&logo=none) ![#6ADCCC](https://img.shields.io/badge/-%236ADCCC?style=flat&logo=none) ![#40D5DD](https://img.shields.io/badge/-%2340D5DD?style=flat&logo=none) ![#3A338E](https://img.shields.io/badge/-%233A338E?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-07 02:08:55
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(192, 82%, 68%) | rgb(106, 213, 240) | #6AD5F0 |117 |
| 2 | hsl(114, 93%, 48%) |  rgb(31, 236, 8)   | #1FEC08 | 82 |
| 3 |  hsl(8, 59%, 54%)  |  rgb(206, 86, 68)  | #CE5644 |173 |
| 4 | hsl(123, 97%, 47%) |  rgb(3, 236, 15)   | #03EC0F | 46 |
| 5 | hsl(180, 60%, 70%) | rgb(132, 224, 224) | #84E0E0 |152 |
| 6 | hsl(172, 62%, 64%) | rgb(106, 220, 204) | #6ADCCC |116 |
| 7 | hsl(183, 70%, 56%) | rgb(64, 213, 221)  | #40D5DD | 80 |
| 8 | hsl(245, 47%, 38%) |  rgb(58, 51, 142)  | #3A338E | 61 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(192, 82%, 68%),rgb(106, 213, 240),117
hsl(114, 93%, 48%),rgb(31, 236, 8),82
hsl(8, 59%, 54%),rgb(206, 86, 68),173
hsl(123, 97%, 47%),rgb(3, 236, 15),46
hsl(180, 60%, 70%),rgb(132, 224, 224),152
hsl(172, 62%, 64%),rgb(106, 220, 204),116
hsl(183, 70%, 56%),rgb(64, 213, 221),80
hsl(245, 47%, 38%),rgb(58, 51, 142),61

Generated: 2026-08-07 02:08:55
```
