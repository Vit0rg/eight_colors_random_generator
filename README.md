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

![#2FF8A8](https://img.shields.io/badge/-%232FF8A8?style=flat&logo=none) ![#A4036C](https://img.shields.io/badge/-%23A4036C?style=flat&logo=none) ![#71E52E](https://img.shields.io/badge/-%2371E52E?style=flat&logo=none) ![#4F1D7B](https://img.shields.io/badge/-%234F1D7B?style=flat&logo=none) ![#D4BE1B](https://img.shields.io/badge/-%23D4BE1B?style=flat&logo=none) ![#01B041](https://img.shields.io/badge/-%2301B041?style=flat&logo=none) ![#B23856](https://img.shields.io/badge/-%23B23856?style=flat&logo=none) ![#D93450](https://img.shields.io/badge/-%23D93450?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-17 12:10:01
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(156, 94%, 58%) | rgb(47, 248, 168)  | #2FF8A8 | 85 |
| 2 | hsl(321, 96%, 33%) |  rgb(164, 3, 108)  | #A4036C |126 |
| 3 | hsl(98, 78%, 54%)  | rgb(113, 229, 46)  | #71E52E |113 |
| 4 | hsl(272, 61%, 30%) |  rgb(79, 29, 123)  | #4F1D7B | 96 |
| 5 | hsl(53, 77%, 47%)  | rgb(212, 190, 27)  | #D4BE1B |185 |
| 6 | hsl(142, 98%, 35%) |  rgb(1, 176, 65)   | #01B041 | 35 |
| 7 | hsl(345, 52%, 46%) |  rgb(178, 56, 86)  | #B23856 |132 |
| 8 | hsl(350, 69%, 53%) |  rgb(217, 52, 80)  | #D93450 |168 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(156, 94%, 58%),rgb(47, 248, 168),85
hsl(321, 96%, 33%),rgb(164, 3, 108),126
hsl(98, 78%, 54%),rgb(113, 229, 46),113
hsl(272, 61%, 30%),rgb(79, 29, 123),96
hsl(53, 77%, 47%),rgb(212, 190, 27),185
hsl(142, 98%, 35%),rgb(1, 176, 65),35
hsl(345, 52%, 46%),rgb(178, 56, 86),132
hsl(350, 69%, 53%),rgb(217, 52, 80),168

Generated: 2026-06-17 12:10:01
```
