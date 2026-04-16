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

![#C49B07](https://img.shields.io/badge/-%23C49B07?style=flat&logo=none) ![#2D95B7](https://img.shields.io/badge/-%232D95B7?style=flat&logo=none) ![#18D197](https://img.shields.io/badge/-%2318D197?style=flat&logo=none) ![#F14AD0](https://img.shields.io/badge/-%23F14AD0?style=flat&logo=none) ![#B83234](https://img.shields.io/badge/-%23B83234?style=flat&logo=none) ![#DE6C7D](https://img.shields.io/badge/-%23DE6C7D?style=flat&logo=none) ![#77CFC0](https://img.shields.io/badge/-%2377CFC0?style=flat&logo=none) ![#216777](https://img.shields.io/badge/-%23216777?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-16 09:09:43
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(47, 93%, 40%)  |  rgb(196, 155, 7)  | #C49B07 |178 |
| 2 | hsl(195, 60%, 45%) | rgb(45, 149, 183)  | #2D95B7 | 74 |
| 3 | hsl(161, 79%, 46%) | rgb(24, 209, 151)  | #18D197 | 43 |
| 4 | hsl(312, 86%, 62%) | rgb(241, 74, 208)  | #F14AD0 |206 |
| 5 | hsl(359, 57%, 46%) |  rgb(184, 50, 52)  | #B83234 |167 |
| 6 | hsl(351, 64%, 65%) | rgb(222, 108, 125) | #DE6C7D |174 |
| 7 | hsl(170, 48%, 64%) | rgb(119, 207, 192) | #77CFC0 |116 |
| 8 | hsl(191, 56%, 30%) | rgb(33, 103, 119)  | #216777 | 66 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(47, 93%, 40%),rgb(196, 155, 7),178
hsl(195, 60%, 45%),rgb(45, 149, 183),74
hsl(161, 79%, 46%),rgb(24, 209, 151),43
hsl(312, 86%, 62%),rgb(241, 74, 208),206
hsl(359, 57%, 46%),rgb(184, 50, 52),167
hsl(351, 64%, 65%),rgb(222, 108, 125),174
hsl(170, 48%, 64%),rgb(119, 207, 192),116
hsl(191, 56%, 30%),rgb(33, 103, 119),66

Generated: 2026-04-16 09:09:43
```
