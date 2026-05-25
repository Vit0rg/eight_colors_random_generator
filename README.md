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

![#4CE0AF](https://img.shields.io/badge/-%234CE0AF?style=flat&logo=none) ![#921A2E](https://img.shields.io/badge/-%23921A2E?style=flat&logo=none) ![#7ADA81](https://img.shields.io/badge/-%237ADA81?style=flat&logo=none) ![#16258D](https://img.shields.io/badge/-%2316258D?style=flat&logo=none) ![#2FC557](https://img.shields.io/badge/-%232FC557?style=flat&logo=none) ![#1F2998](https://img.shields.io/badge/-%231F2998?style=flat&logo=none) ![#4636F6](https://img.shields.io/badge/-%234636F6?style=flat&logo=none) ![#877D11](https://img.shields.io/badge/-%23877D11?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-25 02:35:17
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(160, 71%, 59%) | rgb(76, 224, 175)  | #4CE0AF | 79 |
| 2 | hsl(350, 69%, 34%) |  rgb(146, 26, 46)  | #921A2E |131 |
| 3 | hsl(124, 57%, 67%) | rgb(122, 218, 129) | #7ADA81 |115 |
| 4 | hsl(232, 73%, 32%) |  rgb(22, 37, 141)  | #16258D | 25 |
| 5 | hsl(136, 61%, 48%) |  rgb(47, 197, 87)  | #2FC557 | 78 |
| 6 | hsl(235, 66%, 36%) |  rgb(31, 41, 152)  | #1F2998 | 61 |
| 7 | hsl(245, 92%, 59%) |  rgb(70, 54, 246)  | #4636F6 | 63 |
| 8 | hsl(55, 77%, 30%)  | rgb(135, 125, 17)  | #877D11 |136 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(160, 71%, 59%),rgb(76, 224, 175),79
hsl(350, 69%, 34%),rgb(146, 26, 46),131
hsl(124, 57%, 67%),rgb(122, 218, 129),115
hsl(232, 73%, 32%),rgb(22, 37, 141),25
hsl(136, 61%, 48%),rgb(47, 197, 87),78
hsl(235, 66%, 36%),rgb(31, 41, 152),61
hsl(245, 92%, 59%),rgb(70, 54, 246),63
hsl(55, 77%, 30%),rgb(135, 125, 17),136

Generated: 2026-05-25 02:35:17
```
