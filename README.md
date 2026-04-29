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

![#1F0FFF](https://img.shields.io/badge/-%231F0FFF?style=flat&logo=none) ![#6EF6A2](https://img.shields.io/badge/-%236EF6A2?style=flat&logo=none) ![#27168D](https://img.shields.io/badge/-%2327168D?style=flat&logo=none) ![#B1371F](https://img.shields.io/badge/-%23B1371F?style=flat&logo=none) ![#A10CA1](https://img.shields.io/badge/-%23A10CA1?style=flat&logo=none) ![#10B0C6](https://img.shields.io/badge/-%2310B0C6?style=flat&logo=none) ![#891969](https://img.shields.io/badge/-%23891969?style=flat&logo=none) ![#2D79B7](https://img.shields.io/badge/-%232D79B7?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-29 02:04:25
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 |hsl(244, 100%, 53%) |  rgb(31, 15, 255)  | #1F0FFF | 57 |
| 2 | hsl(143, 89%, 70%) | rgb(110, 246, 162) | #6EF6A2 |121 |
| 3 | hsl(249, 73%, 32%) |  rgb(39, 22, 141)  | #27168D | 55 |
| 4 | hsl(10, 70%, 41%)  |  rgb(177, 55, 31)  | #B1371F |131 |
| 5 | hsl(300, 86%, 34%) | rgb(161, 12, 161)  | #A10CA1 |127 |
| 6 | hsl(187, 85%, 42%) | rgb(16, 176, 198)  | #10B0C6 | 38 |
| 7 | hsl(317, 69%, 32%) | rgb(137, 25, 105)  | #891969 |126 |
| 8 | hsl(207, 60%, 45%) | rgb(45, 121, 183)  | #2D79B7 | 68 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(244, 100%, 53%),rgb(31, 15, 255),57
hsl(143, 89%, 70%),rgb(110, 246, 162),121
hsl(249, 73%, 32%),rgb(39, 22, 141),55
hsl(10, 70%, 41%),rgb(177, 55, 31),131
hsl(300, 86%, 34%),rgb(161, 12, 161),127
hsl(187, 85%, 42%),rgb(16, 176, 198),38
hsl(317, 69%, 32%),rgb(137, 25, 105),126
hsl(207, 60%, 45%),rgb(45, 121, 183),68

Generated: 2026-04-29 02:04:25
```
