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

![#DB6694](https://img.shields.io/badge/-%23DB6694?style=flat&logo=none) ![#FE57D4](https://img.shields.io/badge/-%23FE57D4?style=flat&logo=none) ![#E065C8](https://img.shields.io/badge/-%23E065C8?style=flat&logo=none) ![#9C57D5](https://img.shields.io/badge/-%239C57D5?style=flat&logo=none) ![#E9DD52](https://img.shields.io/badge/-%23E9DD52?style=flat&logo=none) ![#66FE8C](https://img.shields.io/badge/-%2366FE8C?style=flat&logo=none) ![#95DF70](https://img.shields.io/badge/-%2395DF70?style=flat&logo=none) ![#88C5D2](https://img.shields.io/badge/-%2388C5D2?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-13 09:02:48
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(336, 62%, 63%) | rgb(219, 102, 148) | #DB6694 |175 |
| 2 | hsl(315, 99%, 67%) | rgb(254, 87, 212)  | #FE57D4 |212 |
| 3 | hsl(312, 67%, 64%) | rgb(224, 101, 200) | #E065C8 |176 |
| 4 | hsl(273, 60%, 59%) | rgb(156, 87, 213)  | #9C57D5 |140 |
| 5 | hsl(55, 78%, 62%)  | rgb(233, 221, 82)  | #E9DD52 |222 |
| 6 | hsl(135, 99%, 70%) | rgb(102, 254, 140) | #66FE8C |121 |
| 7 | hsl(100, 64%, 66%) | rgb(149, 223, 112) | #95DF70 |150 |
| 8 | hsl(190, 45%, 68%) | rgb(136, 197, 210) | #88C5D2 |152 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(336, 62%, 63%),rgb(219, 102, 148),175
hsl(315, 99%, 67%),rgb(254, 87, 212),212
hsl(312, 67%, 64%),rgb(224, 101, 200),176
hsl(273, 60%, 59%),rgb(156, 87, 213),140
hsl(55, 78%, 62%),rgb(233, 221, 82),222
hsl(135, 99%, 70%),rgb(102, 254, 140),121
hsl(100, 64%, 66%),rgb(149, 223, 112),150
hsl(190, 45%, 68%),rgb(136, 197, 210),152

Generated: 2026-08-13 09:02:48
```
