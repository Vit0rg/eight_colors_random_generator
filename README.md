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

![#65CA44](https://img.shields.io/badge/-%2365CA44?style=flat&logo=none) ![#7EDCB2](https://img.shields.io/badge/-%237EDCB2?style=flat&logo=none) ![#5220BF](https://img.shields.io/badge/-%235220BF?style=flat&logo=none) ![#E61859](https://img.shields.io/badge/-%23E61859?style=flat&logo=none) ![#1B38F3](https://img.shields.io/badge/-%231B38F3?style=flat&logo=none) ![#AA72DE](https://img.shields.io/badge/-%23AA72DE?style=flat&logo=none) ![#80A1E4](https://img.shields.io/badge/-%2380A1E4?style=flat&logo=none) ![#B6A720](https://img.shields.io/badge/-%23B6A720?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-04 18:08:38
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(105, 56%, 53%) | rgb(101, 202, 68)  | #65CA44 |113 |
| 2 | hsl(153, 58%, 68%) | rgb(126, 220, 178) | #7EDCB2 |115 |
| 3 | hsl(259, 71%, 44%) |  rgb(82, 32, 191)  | #5220BF | 98 |
| 4 | hsl(341, 81%, 50%) |  rgb(230, 24, 89)  | #E61859 |162 |
| 5 | hsl(232, 90%, 53%) |  rgb(27, 56, 243)  | #1B38F3 | 63 |
| 6 | hsl(271, 62%, 66%) | rgb(170, 114, 222) | #AA72DE |140 |
| 7 | hsl(220, 65%, 70%) | rgb(128, 161, 228) | #80A1E4 |146 |
| 8 | hsl(54, 70%, 42%)  | rgb(182, 167, 32)  | #B6A720 |179 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(105, 56%, 53%),rgb(101, 202, 68),113
hsl(153, 58%, 68%),rgb(126, 220, 178),115
hsl(259, 71%, 44%),rgb(82, 32, 191),98
hsl(341, 81%, 50%),rgb(230, 24, 89),162
hsl(232, 90%, 53%),rgb(27, 56, 243),63
hsl(271, 62%, 66%),rgb(170, 114, 222),140
hsl(220, 65%, 70%),rgb(128, 161, 228),146
hsl(54, 70%, 42%),rgb(182, 167, 32),179

Generated: 2026-06-04 18:08:38
```
