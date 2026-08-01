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

![#4E86D4](https://img.shields.io/badge/-%234E86D4?style=flat&logo=none) ![#532092](https://img.shields.io/badge/-%23532092?style=flat&logo=none) ![#24787E](https://img.shields.io/badge/-%2324787E?style=flat&logo=none) ![#CDBE69](https://img.shields.io/badge/-%23CDBE69?style=flat&logo=none) ![#CB0ED1](https://img.shields.io/badge/-%23CB0ED1?style=flat&logo=none) ![#83CC46](https://img.shields.io/badge/-%2383CC46?style=flat&logo=none) ![#A779CC](https://img.shields.io/badge/-%23A779CC?style=flat&logo=none) ![#69C882](https://img.shields.io/badge/-%2369C882?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-01 16:49:18
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(215, 61%, 57%) | rgb(78, 134, 212)  | #4E86D4 |110 |
| 2 | hsl(267, 64%, 35%) |  rgb(83, 32, 146)  | #532092 | 97 |
| 3 | hsl(184, 55%, 32%) | rgb(36, 120, 126)  | #24787E | 66 |
| 4 | hsl(51, 50%, 61%)  | rgb(205, 190, 105) | #CDBE69 |186 |
| 5 | hsl(298, 87%, 44%) | rgb(203, 14, 209)  | #CB0ED1 |164 |
| 6 | hsl(93, 57%, 54%)  | rgb(131, 204, 70)  | #83CC46 |149 |
| 7 | hsl(273, 45%, 64%) | rgb(167, 121, 204) | #A779CC |140 |
| 8 | hsl(136, 47%, 60%) | rgb(105, 200, 130) | #69C882 |115 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(215, 61%, 57%),rgb(78, 134, 212),110
hsl(267, 64%, 35%),rgb(83, 32, 146),97
hsl(184, 55%, 32%),rgb(36, 120, 126),66
hsl(51, 50%, 61%),rgb(205, 190, 105),186
hsl(298, 87%, 44%),rgb(203, 14, 209),164
hsl(93, 57%, 54%),rgb(131, 204, 70),149
hsl(273, 45%, 64%),rgb(167, 121, 204),140
hsl(136, 47%, 60%),rgb(105, 200, 130),115

Generated: 2026-08-01 16:49:18
```
