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

![#50C10F](https://img.shields.io/badge/-%2350C10F?style=flat&logo=none) ![#1186D4](https://img.shields.io/badge/-%231186D4?style=flat&logo=none) ![#F13A30](https://img.shields.io/badge/-%23F13A30?style=flat&logo=none) ![#FD3A57](https://img.shields.io/badge/-%23FD3A57?style=flat&logo=none) ![#45AB20](https://img.shields.io/badge/-%2345AB20?style=flat&logo=none) ![#A26FE5](https://img.shields.io/badge/-%23A26FE5?style=flat&logo=none) ![#238A1E](https://img.shields.io/badge/-%23238A1E?style=flat&logo=none) ![#0CDD9B](https://img.shields.io/badge/-%230CDD9B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-04 02:46:56
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(98, 85%, 41%)  |  rgb(80, 193, 15)  | #50C10F |112 |
| 2 | hsl(204, 85%, 45%) | rgb(17, 134, 212)  | #1186D4 | 38 |
| 3 |  hsl(3, 88%, 57%)  |  rgb(241, 58, 48)  | #F13A30 |203 |
| 4 | hsl(351, 98%, 61%) |  rgb(253, 58, 87)  | #FD3A57 |204 |
| 5 | hsl(104, 68%, 40%) |  rgb(69, 171, 32)  | #45AB20 | 71 |
| 6 | hsl(266, 70%, 67%) | rgb(162, 111, 229) | #A26FE5 |140 |
| 7 | hsl(117, 64%, 33%) |  rgb(35, 138, 30)  | #238A1E | 71 |
| 8 | hsl(161, 89%, 46%) | rgb(12, 221, 155)  | #0CDD9B | 43 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(98, 85%, 41%),rgb(80, 193, 15),112
hsl(204, 85%, 45%),rgb(17, 134, 212),38
hsl(3, 88%, 57%),rgb(241, 58, 48),203
hsl(351, 98%, 61%),rgb(253, 58, 87),204
hsl(104, 68%, 40%),rgb(69, 171, 32),71
hsl(266, 70%, 67%),rgb(162, 111, 229),140
hsl(117, 64%, 33%),rgb(35, 138, 30),71
hsl(161, 89%, 46%),rgb(12, 221, 155),43

Generated: 2026-06-04 02:46:56
```
