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

![#4CE572](https://img.shields.io/badge/-%234CE572?style=flat&logo=none) ![#557E33](https://img.shields.io/badge/-%23557E33?style=flat&logo=none) ![#928620](https://img.shields.io/badge/-%23928620?style=flat&logo=none) ![#938A23](https://img.shields.io/badge/-%23938A23?style=flat&logo=none) ![#3F189A](https://img.shields.io/badge/-%233F189A?style=flat&logo=none) ![#3DA25C](https://img.shields.io/badge/-%233DA25C?style=flat&logo=none) ![#43A314](https://img.shields.io/badge/-%2343A314?style=flat&logo=none) ![#3C8220](https://img.shields.io/badge/-%233C8220?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-29 11:19:39
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(135, 75%, 60%) | rgb(76, 229, 114)  | #4CE572 | 78 |
| 2 | hsl(93, 42%, 35%)  |  rgb(85, 126, 51)  | #557E33 |101 |
| 3 | hsl(54, 64%, 35%)  | rgb(146, 134, 32)  | #928620 |143 |
| 4 | hsl(55, 61%, 36%)  | rgb(147, 138, 35)  | #938A23 |143 |
| 5 | hsl(258, 73%, 35%) |  rgb(63, 24, 154)  | #3F189A | 55 |
| 6 | hsl(138, 45%, 44%) |  rgb(61, 162, 92)  | #3DA25C | 72 |
| 7 | hsl(100, 78%, 36%) |  rgb(67, 163, 20)  | #43A314 | 70 |
| 8 | hsl(103, 60%, 32%) |  rgb(60, 130, 32)  | #3C8220 | 71 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(135, 75%, 60%),rgb(76, 229, 114),78
hsl(93, 42%, 35%),rgb(85, 126, 51),101
hsl(54, 64%, 35%),rgb(146, 134, 32),143
hsl(55, 61%, 36%),rgb(147, 138, 35),143
hsl(258, 73%, 35%),rgb(63, 24, 154),55
hsl(138, 45%, 44%),rgb(61, 162, 92),72
hsl(100, 78%, 36%),rgb(67, 163, 20),70
hsl(103, 60%, 32%),rgb(60, 130, 32),71

Generated: 2026-05-29 11:19:39
```
