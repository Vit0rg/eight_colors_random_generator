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

![#569F12](https://img.shields.io/badge/-%23569F12?style=flat&logo=none) ![#BEA907](https://img.shields.io/badge/-%23BEA907?style=flat&logo=none) ![#E47201](https://img.shields.io/badge/-%23E47201?style=flat&logo=none) ![#259685](https://img.shields.io/badge/-%23259685?style=flat&logo=none) ![#977101](https://img.shields.io/badge/-%23977101?style=flat&logo=none) ![#31EB66](https://img.shields.io/badge/-%2331EB66?style=flat&logo=none) ![#48EF50](https://img.shields.io/badge/-%2348EF50?style=flat&logo=none) ![#1CBE1F](https://img.shields.io/badge/-%231CBE1F?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-11 16:47:16
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(91, 79%, 35%)  |  rgb(86, 159, 18)  | #569F12 |106 |
| 2 | hsl(53, 92%, 39%)  |  rgb(190, 169, 7)  | #BEA907 |178 |
| 3 | hsl(30, 99%, 45%)  |  rgb(228, 114, 1)  | #E47201 |172 |
| 4 | hsl(171, 60%, 37%) | rgb(37, 150, 133)  | #259685 | 73 |
| 5 | hsl(45, 98%, 30%)  |  rgb(151, 113, 1)  | #977101 |136 |
| 6 | hsl(137, 83%, 56%) | rgb(49, 235, 102)  | #31EB66 | 84 |
| 7 | hsl(123, 84%, 61%) |  rgb(72, 239, 80)  | #48EF50 | 84 |
| 8 | hsl(121, 74%, 43%) |  rgb(28, 190, 31)  | #1CBE1F | 77 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(91, 79%, 35%),rgb(86, 159, 18),106
hsl(53, 92%, 39%),rgb(190, 169, 7),178
hsl(30, 99%, 45%),rgb(228, 114, 1),172
hsl(171, 60%, 37%),rgb(37, 150, 133),73
hsl(45, 98%, 30%),rgb(151, 113, 1),136
hsl(137, 83%, 56%),rgb(49, 235, 102),84
hsl(123, 84%, 61%),rgb(72, 239, 80),84
hsl(121, 74%, 43%),rgb(28, 190, 31),77

Generated: 2026-08-11 16:47:16
```
