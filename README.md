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

![#E8EE6C](https://img.shields.io/badge/-%23E8EE6C?style=flat&logo=none) ![#E40596](https://img.shields.io/badge/-%23E40596?style=flat&logo=none) ![#C4D782](https://img.shields.io/badge/-%23C4D782?style=flat&logo=none) ![#A3B200](https://img.shields.io/badge/-%23A3B200?style=flat&logo=none) ![#608D24](https://img.shields.io/badge/-%23608D24?style=flat&logo=none) ![#0553DA](https://img.shields.io/badge/-%230553DA?style=flat&logo=none) ![#9418E6](https://img.shields.io/badge/-%239418E6?style=flat&logo=none) ![#2EDAA9](https://img.shields.io/badge/-%232EDAA9?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-05 02:08:01
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(63, 80%, 68%)  | rgb(232, 238, 108) | #E8EE6C |228 |
| 2 | hsl(321, 95%, 46%) |  rgb(228, 5, 150)  | #E40596 |163 |
| 3 | hsl(74, 52%, 68%)  | rgb(196, 215, 130) | #C4D782 |187 |
| 4 | hsl(65, 100%, 35%) |  rgb(163, 178, 0)  | #A3B200 |142 |
| 5 | hsl(86, 59%, 35%)  |  rgb(96, 141, 36)  | #608D24 |107 |
| 6 | hsl(218, 95%, 44%) |  rgb(5, 83, 218)   | #0553DA | 32 |
| 7 | hsl(276, 81%, 50%) | rgb(148, 24, 230)  | #9418E6 |128 |
| 8 | hsl(163, 70%, 52%) | rgb(46, 218, 169)  | #2EDAA9 | 79 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(63, 80%, 68%),rgb(232, 238, 108),228
hsl(321, 95%, 46%),rgb(228, 5, 150),163
hsl(74, 52%, 68%),rgb(196, 215, 130),187
hsl(65, 100%, 35%),rgb(163, 178, 0),142
hsl(86, 59%, 35%),rgb(96, 141, 36),107
hsl(218, 95%, 44%),rgb(5, 83, 218),32
hsl(276, 81%, 50%),rgb(148, 24, 230),128
hsl(163, 70%, 52%),rgb(46, 218, 169),79

Generated: 2026-07-05 02:08:01
```
