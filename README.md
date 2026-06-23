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

![#56EB8A](https://img.shields.io/badge/-%2356EB8A?style=flat&logo=none) ![#72A630](https://img.shields.io/badge/-%2372A630?style=flat&logo=none) ![#8B1263](https://img.shields.io/badge/-%238B1263?style=flat&logo=none) ![#B37903](https://img.shields.io/badge/-%23B37903?style=flat&logo=none) ![#DE4EC8](https://img.shields.io/badge/-%23DE4EC8?style=flat&logo=none) ![#C568D3](https://img.shields.io/badge/-%23C568D3?style=flat&logo=none) ![#3C599E](https://img.shields.io/badge/-%233C599E?style=flat&logo=none) ![#93BC4C](https://img.shields.io/badge/-%2393BC4C?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-23 10:54:52
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(141, 79%, 63%) | rgb(86, 235, 138)  | #56EB8A |121 |
| 2 | hsl(86, 55%, 42%)  | rgb(114, 166, 48)  | #72A630 |107 |
| 3 | hsl(320, 77%, 31%) |  rgb(139, 18, 99)  | #8B1263 |126 |
| 4 | hsl(40, 96%, 36%)  |  rgb(179, 121, 3)  | #B37903 |136 |
| 5 | hsl(309, 69%, 59%) | rgb(222, 78, 200)  | #DE4EC8 |176 |
| 6 | hsl(292, 55%, 62%) | rgb(197, 104, 211) | #C568D3 |176 |
| 7 | hsl(222, 45%, 43%) |  rgb(60, 89, 158)  | #3C599E | 67 |
| 8 | hsl(82, 46%, 52%)  | rgb(147, 188, 76)  | #93BC4C |149 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(141, 79%, 63%),rgb(86, 235, 138),121
hsl(86, 55%, 42%),rgb(114, 166, 48),107
hsl(320, 77%, 31%),rgb(139, 18, 99),126
hsl(40, 96%, 36%),rgb(179, 121, 3),136
hsl(309, 69%, 59%),rgb(222, 78, 200),176
hsl(292, 55%, 62%),rgb(197, 104, 211),176
hsl(222, 45%, 43%),rgb(60, 89, 158),67
hsl(82, 46%, 52%),rgb(147, 188, 76),149

Generated: 2026-06-23 10:54:52
```
