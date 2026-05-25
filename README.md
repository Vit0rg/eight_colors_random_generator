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

![#D65F04](https://img.shields.io/badge/-%23D65F04?style=flat&logo=none) ![#35829B](https://img.shields.io/badge/-%2335829B?style=flat&logo=none) ![#6AF348](https://img.shields.io/badge/-%236AF348?style=flat&logo=none) ![#F3E86B](https://img.shields.io/badge/-%23F3E86B?style=flat&logo=none) ![#4CEA81](https://img.shields.io/badge/-%234CEA81?style=flat&logo=none) ![#A5722B](https://img.shields.io/badge/-%23A5722B?style=flat&logo=none) ![#CCA54B](https://img.shields.io/badge/-%23CCA54B?style=flat&logo=none) ![#7DA6E7](https://img.shields.io/badge/-%237DA6E7?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-25 17:27:53
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(26, 96%, 43%)  |  rgb(214, 95, 4)   | #D65F04 |172 |
| 2 | hsl(195, 49%, 41%) | rgb(53, 130, 155)  | #35829B | 73 |
| 3 | hsl(108, 88%, 62%) | rgb(106, 243, 72)  | #6AF348 |119 |
| 4 | hsl(55, 86%, 69%)  | rgb(243, 232, 107) | #F3E86B |228 |
| 5 | hsl(140, 79%, 61%) | rgb(76, 234, 129)  | #4CEA81 | 85 |
| 6 | hsl(35, 58%, 41%)  | rgb(165, 114, 43)  | #A5722B |137 |
| 7 | hsl(42, 56%, 55%)  | rgb(204, 165, 75)  | #CCA54B |179 |
| 8 | hsl(217, 69%, 70%) | rgb(125, 166, 231) | #7DA6E7 |111 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(26, 96%, 43%),rgb(214, 95, 4),172
hsl(195, 49%, 41%),rgb(53, 130, 155),73
hsl(108, 88%, 62%),rgb(106, 243, 72),119
hsl(55, 86%, 69%),rgb(243, 232, 107),228
hsl(140, 79%, 61%),rgb(76, 234, 129),85
hsl(35, 58%, 41%),rgb(165, 114, 43),137
hsl(42, 56%, 55%),rgb(204, 165, 75),179
hsl(217, 69%, 70%),rgb(125, 166, 231),111

Generated: 2026-05-25 17:27:53
```
