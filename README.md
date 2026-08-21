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

![#D0D67A](https://img.shields.io/badge/-%23D0D67A?style=flat&logo=none) ![#DC7EDC](https://img.shields.io/badge/-%23DC7EDC?style=flat&logo=none) ![#A119A8](https://img.shields.io/badge/-%23A119A8?style=flat&logo=none) ![#537424](https://img.shields.io/badge/-%23537424?style=flat&logo=none) ![#8C3539](https://img.shields.io/badge/-%238C3539?style=flat&logo=none) ![#47D435](https://img.shields.io/badge/-%2347D435?style=flat&logo=none) ![#E609E6](https://img.shields.io/badge/-%23E609E6?style=flat&logo=none) ![#CBFB1C](https://img.shields.io/badge/-%23CBFB1C?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-21 00:43:35
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(64, 53%, 66%)  | rgb(208, 214, 122) | #D0D67A |186 |
| 2 | hsl(300, 58%, 68%) | rgb(220, 126, 220) | #DC7EDC |176 |
| 3 | hsl(297, 74%, 38%) | rgb(161, 25, 168)  | #A119A8 |127 |
| 4 | hsl(85, 52%, 30%)  |  rgb(83, 116, 36)  | #537424 |101 |
| 5 | hsl(357, 45%, 38%) |  rgb(140, 53, 57)  | #8C3539 |131 |
| 6 | hsl(113, 65%, 52%) |  rgb(71, 212, 53)  | #47D435 | 77 |
| 7 | hsl(300, 92%, 47%) |  rgb(230, 9, 230)  | #E609E6 |164 |
| 8 | hsl(73, 97%, 55%)  | rgb(203, 251, 28)  | #CBFB1C |191 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(64, 53%, 66%),rgb(208, 214, 122),186
hsl(300, 58%, 68%),rgb(220, 126, 220),176
hsl(297, 74%, 38%),rgb(161, 25, 168),127
hsl(85, 52%, 30%),rgb(83, 116, 36),101
hsl(357, 45%, 38%),rgb(140, 53, 57),131
hsl(113, 65%, 52%),rgb(71, 212, 53),77
hsl(300, 92%, 47%),rgb(230, 9, 230),164
hsl(73, 97%, 55%),rgb(203, 251, 28),191

Generated: 2026-08-21 00:43:35
```
