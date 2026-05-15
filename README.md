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

![#36F16E](https://img.shields.io/badge/-%2336F16E?style=flat&logo=none) ![#378048](https://img.shields.io/badge/-%23378048?style=flat&logo=none) ![#16DE48](https://img.shields.io/badge/-%2316DE48?style=flat&logo=none) ![#33C100](https://img.shields.io/badge/-%2333C100?style=flat&logo=none) ![#83361A](https://img.shields.io/badge/-%2383361A?style=flat&logo=none) ![#ED8916](https://img.shields.io/badge/-%23ED8916?style=flat&logo=none) ![#4D4FB6](https://img.shields.io/badge/-%234D4FB6?style=flat&logo=none) ![#D4BF25](https://img.shields.io/badge/-%23D4BF25?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-15 02:13:07
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(138, 87%, 58%) | rgb(54, 241, 110)  | #36F16E | 84 |
| 2 | hsl(134, 40%, 36%) |  rgb(55, 128, 72)  | #378048 | 71 |
| 3 | hsl(135, 82%, 48%) |  rgb(22, 222, 72)  | #16DE48 | 41 |
| 4 |hsl(104, 100%, 38%) |  rgb(51, 193, 0)   | #33C100 | 76 |
| 5 | hsl(16, 66%, 31%)  |  rgb(131, 54, 26)  | #83361A |131 |
| 6 | hsl(32, 86%, 51%)  | rgb(237, 137, 22)  | #ED8916 |214 |
| 7 | hsl(239, 42%, 51%) |  rgb(77, 79, 182)  | #4D4FB6 |104 |
| 8 | hsl(53, 70%, 49%)  | rgb(212, 191, 37)  | #D4BF25 |185 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(138, 87%, 58%),rgb(54, 241, 110),84
hsl(134, 40%, 36%),rgb(55, 128, 72),71
hsl(135, 82%, 48%),rgb(22, 222, 72),41
hsl(104, 100%, 38%),rgb(51, 193, 0),76
hsl(16, 66%, 31%),rgb(131, 54, 26),131
hsl(32, 86%, 51%),rgb(237, 137, 22),214
hsl(239, 42%, 51%),rgb(77, 79, 182),104
hsl(53, 70%, 49%),rgb(212, 191, 37),185

Generated: 2026-05-15 02:13:07
```
