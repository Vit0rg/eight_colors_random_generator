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

![#322E7E](https://img.shields.io/badge/-%23322E7E?style=flat&logo=none) ![#FD1AF6](https://img.shields.io/badge/-%23FD1AF6?style=flat&logo=none) ![#19EBBD](https://img.shields.io/badge/-%2319EBBD?style=flat&logo=none) ![#D4D877](https://img.shields.io/badge/-%23D4D877?style=flat&logo=none) ![#3ED515](https://img.shields.io/badge/-%233ED515?style=flat&logo=none) ![#0D1896](https://img.shields.io/badge/-%230D1896?style=flat&logo=none) ![#1805C6](https://img.shields.io/badge/-%231805C6?style=flat&logo=none) ![#F56613](https://img.shields.io/badge/-%23F56613?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-21 10:58:43
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(243, 46%, 34%) |  rgb(50, 46, 126)  | #322E7E | 60 |
| 2 | hsl(302, 99%, 55%) | rgb(253, 26, 246)  | #FD1AF6 |207 |
| 3 | hsl(167, 84%, 51%) | rgb(25, 235, 189)  | #19EBBD | 50 |
| 4 | hsl(63, 56%, 66%)  | rgb(212, 216, 119) | #D4D877 |186 |
| 5 | hsl(107, 82%, 46%) |  rgb(62, 213, 21)  | #3ED515 | 76 |
| 6 | hsl(235, 84%, 32%) |  rgb(13, 24, 150)  | #0D1896 | 19 |
| 7 | hsl(246, 95%, 40%) |  rgb(24, 5, 198)   | #1805C6 | 20 |
| 8 | hsl(22, 92%, 52%)  | rgb(245, 102, 19)  | #F56613 |208 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(243, 46%, 34%),rgb(50, 46, 126),60
hsl(302, 99%, 55%),rgb(253, 26, 246),207
hsl(167, 84%, 51%),rgb(25, 235, 189),50
hsl(63, 56%, 66%),rgb(212, 216, 119),186
hsl(107, 82%, 46%),rgb(62, 213, 21),76
hsl(235, 84%, 32%),rgb(13, 24, 150),19
hsl(246, 95%, 40%),rgb(24, 5, 198),20
hsl(22, 92%, 52%),rgb(245, 102, 19),208

Generated: 2026-05-21 10:58:43
```
