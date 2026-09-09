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

![#52BBB3](https://img.shields.io/badge/-%2352BBB3?style=flat&logo=none) ![#EB60D4](https://img.shields.io/badge/-%23EB60D4?style=flat&logo=none) ![#138544](https://img.shields.io/badge/-%23138544?style=flat&logo=none) ![#447825](https://img.shields.io/badge/-%23447825?style=flat&logo=none) ![#D1663C](https://img.shields.io/badge/-%23D1663C?style=flat&logo=none) ![#CBD97C](https://img.shields.io/badge/-%23CBD97C?style=flat&logo=none) ![#49B139](https://img.shields.io/badge/-%2349B139?style=flat&logo=none) ![#DB7FC4](https://img.shields.io/badge/-%23DB7FC4?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-09 02:12:52
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(175, 44%, 53%) | rgb(82, 187, 179)  | #52BBB3 |115 |
| 2 | hsl(310, 78%, 65%) | rgb(235, 96, 212)  | #EB60D4 |212 |
| 3 | hsl(146, 75%, 30%) |  rgb(19, 133, 68)  | #138544 | 35 |
| 4 | hsl(98, 52%, 31%)  |  rgb(68, 120, 37)  | #447825 | 65 |
| 5 | hsl(17, 62%, 53%)  | rgb(209, 102, 60)  | #D1663C |173 |
| 6 | hsl(69, 55%, 67%)  | rgb(203, 217, 124) | #CBD97C |186 |
| 7 | hsl(112, 51%, 46%) |  rgb(73, 177, 57)  | #49B139 | 71 |
| 8 | hsl(315, 56%, 68%) | rgb(219, 127, 196) | #DB7FC4 |176 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(175, 44%, 53%),rgb(82, 187, 179),115
hsl(310, 78%, 65%),rgb(235, 96, 212),212
hsl(146, 75%, 30%),rgb(19, 133, 68),35
hsl(98, 52%, 31%),rgb(68, 120, 37),65
hsl(17, 62%, 53%),rgb(209, 102, 60),173
hsl(69, 55%, 67%),rgb(203, 217, 124),186
hsl(112, 51%, 46%),rgb(73, 177, 57),71
hsl(315, 56%, 68%),rgb(219, 127, 196),176

Generated: 2026-09-09 02:12:52
```
