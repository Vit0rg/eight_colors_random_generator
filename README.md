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

![#BB17BE](https://img.shields.io/badge/-%23BB17BE?style=flat&logo=none) ![#E07F87](https://img.shields.io/badge/-%23E07F87?style=flat&logo=none) ![#DE7CBC](https://img.shields.io/badge/-%23DE7CBC?style=flat&logo=none) ![#7A931F](https://img.shields.io/badge/-%237A931F?style=flat&logo=none) ![#B02074](https://img.shields.io/badge/-%23B02074?style=flat&logo=none) ![#59238E](https://img.shields.io/badge/-%2359238E?style=flat&logo=none) ![#029633](https://img.shields.io/badge/-%23029633?style=flat&logo=none) ![#80BD1D](https://img.shields.io/badge/-%2380BD1D?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-14 02:27:59
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(299, 78%, 42%) | rgb(187, 23, 190)  | #BB17BE |164 |
| 2 | hsl(355, 61%, 69%) | rgb(224, 127, 135) | #E07F87 |175 |
| 3 | hsl(321, 60%, 68%) | rgb(222, 124, 188) | #DE7CBC |176 |
| 4 | hsl(73, 65%, 35%)  | rgb(122, 147, 31)  | #7A931F |107 |
| 5 | hsl(325, 69%, 41%) | rgb(176, 32, 116)  | #B02074 |132 |
| 6 | hsl(270, 60%, 35%) |  rgb(89, 35, 142)  | #59238E | 97 |
| 7 | hsl(140, 97%, 30%) |  rgb(2, 150, 51)   | #029633 | 35 |
| 8 | hsl(83, 73%, 43%)  | rgb(128, 189, 29)  | #80BD1D |149 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(299, 78%, 42%),rgb(187, 23, 190),164
hsl(355, 61%, 69%),rgb(224, 127, 135),175
hsl(321, 60%, 68%),rgb(222, 124, 188),176
hsl(73, 65%, 35%),rgb(122, 147, 31),107
hsl(325, 69%, 41%),rgb(176, 32, 116),132
hsl(270, 60%, 35%),rgb(89, 35, 142),97
hsl(140, 97%, 30%),rgb(2, 150, 51),35
hsl(83, 73%, 43%),rgb(128, 189, 29),149

Generated: 2026-09-14 02:27:59
```
