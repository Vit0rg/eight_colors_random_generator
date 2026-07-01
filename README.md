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

![#C7F06F](https://img.shields.io/badge/-%23C7F06F?style=flat&logo=none) ![#2ED4F9](https://img.shields.io/badge/-%232ED4F9?style=flat&logo=none) ![#72C4AB](https://img.shields.io/badge/-%2372C4AB?style=flat&logo=none) ![#C04BD2](https://img.shields.io/badge/-%23C04BD2?style=flat&logo=none) ![#76EEAA](https://img.shields.io/badge/-%2376EEAA?style=flat&logo=none) ![#58A5CE](https://img.shields.io/badge/-%2358A5CE?style=flat&logo=none) ![#81C165](https://img.shields.io/badge/-%2381C165?style=flat&logo=none) ![#D6AD60](https://img.shields.io/badge/-%23D6AD60?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-01 17:46:08
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(79, 82%, 69%)  | rgb(199, 240, 111) | #C7F06F |192 |
| 2 | hsl(191, 95%, 58%) | rgb(46, 212, 249)  | #2ED4F9 | 81 |
| 3 | hsl(162, 41%, 61%) | rgb(114, 196, 171) | #72C4AB |115 |
| 4 | hsl(292, 60%, 56%) | rgb(192, 75, 210)  | #C04BD2 |170 |
| 5 | hsl(146, 79%, 70%) | rgb(118, 238, 170) | #76EEAA |121 |
| 6 | hsl(201, 55%, 58%) | rgb(88, 165, 206)  | #58A5CE |110 |
| 7 | hsl(102, 43%, 58%) | rgb(129, 193, 101) | #81C165 |150 |
| 8 | hsl(39, 59%, 61%)  | rgb(214, 173, 96)  | #D6AD60 |180 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(79, 82%, 69%),rgb(199, 240, 111),192
hsl(191, 95%, 58%),rgb(46, 212, 249),81
hsl(162, 41%, 61%),rgb(114, 196, 171),115
hsl(292, 60%, 56%),rgb(192, 75, 210),170
hsl(146, 79%, 70%),rgb(118, 238, 170),121
hsl(201, 55%, 58%),rgb(88, 165, 206),110
hsl(102, 43%, 58%),rgb(129, 193, 101),150
hsl(39, 59%, 61%),rgb(214, 173, 96),180

Generated: 2026-07-01 17:46:08
```
