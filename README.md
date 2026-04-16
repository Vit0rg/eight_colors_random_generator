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

![#892E1A](https://img.shields.io/badge/-%23892E1A?style=flat&logo=none) ![#E965F0](https://img.shields.io/badge/-%23E965F0?style=flat&logo=none) ![#3529B1](https://img.shields.io/badge/-%233529B1?style=flat&logo=none) ![#2C0791](https://img.shields.io/badge/-%232C0791?style=flat&logo=none) ![#8AD019](https://img.shields.io/badge/-%238AD019?style=flat&logo=none) ![#7D9239](https://img.shields.io/badge/-%237D9239?style=flat&logo=none) ![#391D85](https://img.shields.io/badge/-%23391D85?style=flat&logo=none) ![#67DAD0](https://img.shields.io/badge/-%2367DAD0?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-16 17:04:31
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(11, 68%, 32%)  |  rgb(137, 46, 26)  | #892E1A |131 |
| 2 | hsl(297, 83%, 67%) | rgb(233, 101, 240) | #E965F0 |213 |
| 3 | hsl(245, 62%, 43%) |  rgb(53, 41, 177)  | #3529B1 | 61 |
| 4 | hsl(256, 90%, 30%) |  rgb(44, 7, 145)   | #2C0791 | 55 |
| 5 | hsl(83, 78%, 46%)  | rgb(138, 208, 25)  | #8AD019 |148 |
| 6 | hsl(74, 44%, 40%)  | rgb(125, 146, 57)  | #7D9239 |107 |
| 7 | hsl(256, 64%, 32%) |  rgb(57, 29, 133)  | #391D85 | 61 |
| 8 | hsl(175, 61%, 63%) | rgb(103, 218, 208) | #67DAD0 |116 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(11, 68%, 32%),rgb(137, 46, 26),131
hsl(297, 83%, 67%),rgb(233, 101, 240),213
hsl(245, 62%, 43%),rgb(53, 41, 177),61
hsl(256, 90%, 30%),rgb(44, 7, 145),55
hsl(83, 78%, 46%),rgb(138, 208, 25),148
hsl(74, 44%, 40%),rgb(125, 146, 57),107
hsl(256, 64%, 32%),rgb(57, 29, 133),61
hsl(175, 61%, 63%),rgb(103, 218, 208),116

Generated: 2026-04-16 17:04:31
```
