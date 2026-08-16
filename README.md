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

![#DA242D](https://img.shields.io/badge/-%23DA242D?style=flat&logo=none) ![#5AF028](https://img.shields.io/badge/-%235AF028?style=flat&logo=none) ![#DCDB7E](https://img.shields.io/badge/-%23DCDB7E?style=flat&logo=none) ![#A2CF85](https://img.shields.io/badge/-%23A2CF85?style=flat&logo=none) ![#4BCCB9](https://img.shields.io/badge/-%234BCCB9?style=flat&logo=none) ![#DD1C70](https://img.shields.io/badge/-%23DD1C70?style=flat&logo=none) ![#7AE074](https://img.shields.io/badge/-%237AE074?style=flat&logo=none) ![#4607C4](https://img.shields.io/badge/-%234607C4?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-16 16:13:09
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(357, 71%, 50%) |  rgb(218, 36, 45)  | #DA242D |167 |
| 2 | hsl(105, 87%, 55%) |  rgb(90, 240, 40)  | #5AF028 |119 |
| 3 | hsl(59, 58%, 68%)  | rgb(220, 219, 126) | #DCDB7E |186 |
| 4 | hsl(97, 44%, 67%)  | rgb(162, 207, 133) | #A2CF85 |151 |
| 5 | hsl(171, 56%, 55%) | rgb(75, 204, 185)  | #4BCCB9 | 80 |
| 6 | hsl(334, 77%, 49%) | rgb(221, 28, 112)  | #DD1C70 |168 |
| 7 | hsl(117, 64%, 67%) | rgb(122, 224, 116) | #7AE074 |114 |
| 8 | hsl(260, 93%, 40%) |  rgb(70, 7, 196)   | #4607C4 | 56 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(357, 71%, 50%),rgb(218, 36, 45),167
hsl(105, 87%, 55%),rgb(90, 240, 40),119
hsl(59, 58%, 68%),rgb(220, 219, 126),186
hsl(97, 44%, 67%),rgb(162, 207, 133),151
hsl(171, 56%, 55%),rgb(75, 204, 185),80
hsl(334, 77%, 49%),rgb(221, 28, 112),168
hsl(117, 64%, 67%),rgb(122, 224, 116),114
hsl(260, 93%, 40%),rgb(70, 7, 196),56

Generated: 2026-08-16 16:13:09
```
