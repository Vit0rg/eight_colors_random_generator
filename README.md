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

![#D33A60](https://img.shields.io/badge/-%23D33A60?style=flat&logo=none) ![#AED193](https://img.shields.io/badge/-%23AED193?style=flat&logo=none) ![#61DF63](https://img.shields.io/badge/-%2361DF63?style=flat&logo=none) ![#E17809](https://img.shields.io/badge/-%23E17809?style=flat&logo=none) ![#73452F](https://img.shields.io/badge/-%2373452F?style=flat&logo=none) ![#5575F6](https://img.shields.io/badge/-%235575F6?style=flat&logo=none) ![#558E0A](https://img.shields.io/badge/-%23558E0A?style=flat&logo=none) ![#48B64A](https://img.shields.io/badge/-%2348B64A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-17 16:15:44
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(345, 64%, 53%) |  rgb(211, 58, 96)  | #D33A60 |168 |
| 2 | hsl(94, 41%, 70%)  | rgb(174, 209, 147) | #AED193 |151 |
| 3 | hsl(121, 67%, 63%) |  rgb(97, 223, 99)  | #61DF63 |114 |
| 4 | hsl(31, 92%, 46%)  |  rgb(225, 120, 9)  | #E17809 |172 |
| 5 | hsl(19, 42%, 32%)  |  rgb(115, 69, 47)  | #73452F | 95 |
| 6 | hsl(228, 90%, 65%) | rgb(85, 117, 246)  | #5575F6 |105 |
| 7 | hsl(86, 86%, 30%)  |  rgb(85, 142, 10)  | #558E0A |106 |
| 8 | hsl(121, 43%, 50%) |  rgb(72, 182, 74)  | #48B64A | 77 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(345, 64%, 53%),rgb(211, 58, 96),168
hsl(94, 41%, 70%),rgb(174, 209, 147),151
hsl(121, 67%, 63%),rgb(97, 223, 99),114
hsl(31, 92%, 46%),rgb(225, 120, 9),172
hsl(19, 42%, 32%),rgb(115, 69, 47),95
hsl(228, 90%, 65%),rgb(85, 117, 246),105
hsl(86, 86%, 30%),rgb(85, 142, 10),106
hsl(121, 43%, 50%),rgb(72, 182, 74),77

Generated: 2026-08-17 16:15:44
```
