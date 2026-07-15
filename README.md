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

![#32B219](https://img.shields.io/badge/-%2332B219?style=flat&logo=none) ![#51CC09](https://img.shields.io/badge/-%2351CC09?style=flat&logo=none) ![#05A39D](https://img.shields.io/badge/-%2305A39D?style=flat&logo=none) ![#D471BB](https://img.shields.io/badge/-%23D471BB?style=flat&logo=none) ![#44E425](https://img.shields.io/badge/-%2344E425?style=flat&logo=none) ![#15CF69](https://img.shields.io/badge/-%2315CF69?style=flat&logo=none) ![#F127BE](https://img.shields.io/badge/-%23F127BE?style=flat&logo=none) ![#C9B55E](https://img.shields.io/badge/-%23C9B55E?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-15 01:26:11
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(110, 75%, 40%) |  rgb(50, 178, 25)  | #32B219 | 70 |
| 2 | hsl(98, 91%, 42%)  |  rgb(81, 204, 9)   | #51CC09 |112 |
| 3 | hsl(178, 94%, 33%) |  rgb(5, 163, 157)  | #05A39D | 37 |
| 4 | hsl(315, 54%, 64%) | rgb(212, 113, 187) | #D471BB |176 |
| 5 | hsl(110, 78%, 52%) |  rgb(68, 228, 37)  | #44E425 | 77 |
| 6 | hsl(147, 81%, 45%) | rgb(21, 207, 105)  | #15CF69 | 42 |
| 7 | hsl(315, 88%, 55%) | rgb(241, 39, 190)  | #F127BE |206 |
| 8 | hsl(49, 50%, 58%)  | rgb(201, 181, 94)  | #C9B55E |186 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(110, 75%, 40%),rgb(50, 178, 25),70
hsl(98, 91%, 42%),rgb(81, 204, 9),112
hsl(178, 94%, 33%),rgb(5, 163, 157),37
hsl(315, 54%, 64%),rgb(212, 113, 187),176
hsl(110, 78%, 52%),rgb(68, 228, 37),77
hsl(147, 81%, 45%),rgb(21, 207, 105),42
hsl(315, 88%, 55%),rgb(241, 39, 190),206
hsl(49, 50%, 58%),rgb(201, 181, 94),186

Generated: 2026-07-15 01:26:11
```
