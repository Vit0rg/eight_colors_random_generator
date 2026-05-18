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

![#873C3A](https://img.shields.io/badge/-%23873C3A?style=flat&logo=none) ![#5E08C8](https://img.shields.io/badge/-%235E08C8?style=flat&logo=none) ![#3F9CE8](https://img.shields.io/badge/-%233F9CE8?style=flat&logo=none) ![#6F4FD8](https://img.shields.io/badge/-%236F4FD8?style=flat&logo=none) ![#ACB034](https://img.shields.io/badge/-%23ACB034?style=flat&logo=none) ![#C879B8](https://img.shields.io/badge/-%23C879B8?style=flat&logo=none) ![#4061A5](https://img.shields.io/badge/-%234061A5?style=flat&logo=none) ![#48E9D9](https://img.shields.io/badge/-%2348E9D9?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-18 02:30:25
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 |  hsl(2, 40%, 38%)  |  rgb(135, 60, 58)  | #873C3A |131 |
| 2 | hsl(267, 92%, 41%) |  rgb(94, 8, 200)   | #5E08C8 | 92 |
| 3 | hsl(207, 79%, 58%) | rgb(63, 156, 232)  | #3F9CE8 | 75 |
| 4 | hsl(254, 64%, 58%) | rgb(111, 79, 216)  | #6F4FD8 |104 |
| 5 | hsl(62, 54%, 45%)  | rgb(172, 176, 52)  | #ACB034 |143 |
| 6 | hsl(312, 42%, 63%) | rgb(200, 121, 184) | #C879B8 |176 |
| 7 | hsl(220, 44%, 45%) |  rgb(64, 97, 165)  | #4061A5 | 67 |
| 8 | hsl(174, 79%, 60%) | rgb(72, 233, 217)  | #48E9D9 | 86 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(2, 40%, 38%),rgb(135, 60, 58),131
hsl(267, 92%, 41%),rgb(94, 8, 200),92
hsl(207, 79%, 58%),rgb(63, 156, 232),75
hsl(254, 64%, 58%),rgb(111, 79, 216),104
hsl(62, 54%, 45%),rgb(172, 176, 52),143
hsl(312, 42%, 63%),rgb(200, 121, 184),176
hsl(220, 44%, 45%),rgb(64, 97, 165),67
hsl(174, 79%, 60%),rgb(72, 233, 217),86

Generated: 2026-05-18 02:30:25
```
