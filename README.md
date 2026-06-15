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

![#C54887](https://img.shields.io/badge/-%23C54887?style=flat&logo=none) ![#B2F95B](https://img.shields.io/badge/-%23B2F95B?style=flat&logo=none) ![#FC9516](https://img.shields.io/badge/-%23FC9516?style=flat&logo=none) ![#C180DF](https://img.shields.io/badge/-%23C180DF?style=flat&logo=none) ![#A26FD1](https://img.shields.io/badge/-%23A26FD1?style=flat&logo=none) ![#3A14AD](https://img.shields.io/badge/-%233A14AD?style=flat&logo=none) ![#A8622E](https://img.shields.io/badge/-%23A8622E?style=flat&logo=none) ![#007AF4](https://img.shields.io/badge/-%23007AF4?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-15 13:47:00
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(330, 52%, 53%) | rgb(197, 72, 135)  | #C54887 |169 |
| 2 | hsl(87, 94%, 67%)  | rgb(178, 249, 91)  | #B2F95B |156 |
| 3 | hsl(33, 98%, 54%)  | rgb(252, 149, 22)  | #FC9516 |214 |
| 4 | hsl(281, 60%, 69%) | rgb(193, 128, 223) | #C180DF |182 |
| 5 | hsl(271, 52%, 63%) | rgb(162, 111, 209) | #A26FD1 |140 |
| 6 | hsl(255, 79%, 38%) |  rgb(58, 20, 173)  | #3A14AD | 55 |
| 7 | hsl(26, 57%, 42%)  |  rgb(168, 98, 46)  | #A8622E |137 |
| 8 |hsl(210, 100%, 48%) |  rgb(0, 122, 244)  | #007AF4 | 33 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(330, 52%, 53%),rgb(197, 72, 135),169
hsl(87, 94%, 67%),rgb(178, 249, 91),156
hsl(33, 98%, 54%),rgb(252, 149, 22),214
hsl(281, 60%, 69%),rgb(193, 128, 223),182
hsl(271, 52%, 63%),rgb(162, 111, 209),140
hsl(255, 79%, 38%),rgb(58, 20, 173),55
hsl(26, 57%, 42%),rgb(168, 98, 46),137
hsl(210, 100%, 48%),rgb(0, 122, 244),33

Generated: 2026-06-15 13:47:00
```
