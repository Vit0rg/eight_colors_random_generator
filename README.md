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

![#C25658](https://img.shields.io/badge/-%23C25658?style=flat&logo=none) ![#F7F759](https://img.shields.io/badge/-%23F7F759?style=flat&logo=none) ![#817817](https://img.shields.io/badge/-%23817817?style=flat&logo=none) ![#325589](https://img.shields.io/badge/-%23325589?style=flat&logo=none) ![#812629](https://img.shields.io/badge/-%23812629?style=flat&logo=none) ![#13CFDC](https://img.shields.io/badge/-%2313CFDC?style=flat&logo=none) ![#1C9054](https://img.shields.io/badge/-%231C9054?style=flat&logo=none) ![#D51C0B](https://img.shields.io/badge/-%23D51C0B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-13 10:13:41
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(359, 47%, 55%) |  rgb(194, 86, 88)  | #C25658 |174 |
| 2 | hsl(60, 91%, 66%)  | rgb(247, 247, 89)  | #F7F759 |228 |
| 3 | hsl(55, 69%, 30%)  | rgb(129, 120, 23)  | #817817 |136 |
| 4 | hsl(216, 46%, 37%) |  rgb(50, 85, 137)  | #325589 | 67 |
| 5 | hsl(358, 54%, 33%) |  rgb(129, 38, 41)  | #812629 |131 |
| 6 | hsl(184, 84%, 47%) | rgb(19, 207, 220)  | #13CFDC | 44 |
| 7 | hsl(149, 67%, 34%) |  rgb(28, 144, 84)  | #1C9054 | 72 |
| 8 |  hsl(5, 90%, 44%)  |  rgb(213, 28, 11)  | #D51C0B |166 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(359, 47%, 55%),rgb(194, 86, 88),174
hsl(60, 91%, 66%),rgb(247, 247, 89),228
hsl(55, 69%, 30%),rgb(129, 120, 23),136
hsl(216, 46%, 37%),rgb(50, 85, 137),67
hsl(358, 54%, 33%),rgb(129, 38, 41),131
hsl(184, 84%, 47%),rgb(19, 207, 220),44
hsl(149, 67%, 34%),rgb(28, 144, 84),72
hsl(5, 90%, 44%),rgb(213, 28, 11),166

Generated: 2026-05-13 10:13:41
```
