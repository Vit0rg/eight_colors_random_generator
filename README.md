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

![#BB3EBB](https://img.shields.io/badge/-%23BB3EBB?style=flat&logo=none) ![#45A59D](https://img.shields.io/badge/-%2345A59D?style=flat&logo=none) ![#1F34BB](https://img.shields.io/badge/-%231F34BB?style=flat&logo=none) ![#267244](https://img.shields.io/badge/-%23267244?style=flat&logo=none) ![#881F2C](https://img.shields.io/badge/-%23881F2C?style=flat&logo=none) ![#B3FC45](https://img.shields.io/badge/-%23B3FC45?style=flat&logo=none) ![#7B2C46](https://img.shields.io/badge/-%237B2C46?style=flat&logo=none) ![#12903E](https://img.shields.io/badge/-%2312903E?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-21 16:20:46
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(300, 50%, 49%) | rgb(187, 62, 187)  | #BB3EBB |170 |
| 2 | hsl(175, 41%, 46%) | rgb(69, 165, 157)  | #45A59D | 73 |
| 3 | hsl(232, 71%, 43%) |  rgb(31, 52, 187)  | #1F34BB | 62 |
| 4 | hsl(144, 50%, 30%) |  rgb(38, 114, 68)  | #267244 | 65 |
| 5 | hsl(353, 62%, 33%) |  rgb(136, 31, 44)  | #881F2C |131 |
| 6 | hsl(84, 97%, 63%)  | rgb(179, 252, 69)  | #B3FC45 |155 |
| 7 | hsl(340, 47%, 33%) |  rgb(123, 44, 70)  | #7B2C46 | 95 |
| 8 | hsl(141, 77%, 32%) |  rgb(18, 144, 62)  | #12903E | 35 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(300, 50%, 49%),rgb(187, 62, 187),170
hsl(175, 41%, 46%),rgb(69, 165, 157),73
hsl(232, 71%, 43%),rgb(31, 52, 187),62
hsl(144, 50%, 30%),rgb(38, 114, 68),65
hsl(353, 62%, 33%),rgb(136, 31, 44),131
hsl(84, 97%, 63%),rgb(179, 252, 69),155
hsl(340, 47%, 33%),rgb(123, 44, 70),95
hsl(141, 77%, 32%),rgb(18, 144, 62),35

Generated: 2026-08-21 16:20:46
```
