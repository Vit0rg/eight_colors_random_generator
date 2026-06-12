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

![#BE2112](https://img.shields.io/badge/-%23BE2112?style=flat&logo=none) ![#E4A57A](https://img.shields.io/badge/-%23E4A57A?style=flat&logo=none) ![#A2CB42](https://img.shields.io/badge/-%23A2CB42?style=flat&logo=none) ![#E8DF71](https://img.shields.io/badge/-%23E8DF71?style=flat&logo=none) ![#66EAC9](https://img.shields.io/badge/-%2366EAC9?style=flat&logo=none) ![#468E2E](https://img.shields.io/badge/-%23468E2E?style=flat&logo=none) ![#5CABC1](https://img.shields.io/badge/-%235CABC1?style=flat&logo=none) ![#F3BD6C](https://img.shields.io/badge/-%23F3BD6C?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-12 11:35:54
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 |  hsl(5, 82%, 41%)  |  rgb(190, 33, 18)  | #BE2112 |166 |
| 2 | hsl(24, 67%, 69%)  | rgb(228, 165, 122) | #E4A57A |180 |
| 3 | hsl(78, 57%, 53%)  | rgb(162, 203, 66)  | #A2CB42 |149 |
| 4 | hsl(55, 73%, 68%)  | rgb(232, 223, 113) | #E8DF71 |222 |
| 5 | hsl(165, 76%, 66%) | rgb(102, 234, 201) | #66EAC9 |122 |
| 6 | hsl(105, 51%, 37%) |  rgb(70, 142, 46)  | #468E2E | 71 |
| 7 | hsl(193, 45%, 56%) | rgb(92, 171, 193)  | #5CABC1 |110 |
| 8 | hsl(36, 85%, 69%)  | rgb(243, 189, 108) | #F3BD6C |222 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(5, 82%, 41%),rgb(190, 33, 18),166
hsl(24, 67%, 69%),rgb(228, 165, 122),180
hsl(78, 57%, 53%),rgb(162, 203, 66),149
hsl(55, 73%, 68%),rgb(232, 223, 113),222
hsl(165, 76%, 66%),rgb(102, 234, 201),122
hsl(105, 51%, 37%),rgb(70, 142, 46),71
hsl(193, 45%, 56%),rgb(92, 171, 193),110
hsl(36, 85%, 69%),rgb(243, 189, 108),222

Generated: 2026-06-12 11:35:54
```
