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

![#62C5D4](https://img.shields.io/badge/-%2362C5D4?style=flat&logo=none) ![#214A96](https://img.shields.io/badge/-%23214A96?style=flat&logo=none) ![#77D96D](https://img.shields.io/badge/-%2377D96D?style=flat&logo=none) ![#8BD189](https://img.shields.io/badge/-%238BD189?style=flat&logo=none) ![#EB097E](https://img.shields.io/badge/-%23EB097E?style=flat&logo=none) ![#15EEA2](https://img.shields.io/badge/-%2315EEA2?style=flat&logo=none) ![#977139](https://img.shields.io/badge/-%23977139?style=flat&logo=none) ![#B5913F](https://img.shields.io/badge/-%23B5913F?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-09 10:50:57
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(188, 57%, 61%) | rgb(98, 197, 212)  | #62C5D4 |116 |
| 2 | hsl(219, 64%, 36%) |  rgb(33, 74, 150)  | #214A96 | 61 |
| 3 | hsl(114, 59%, 64%) | rgb(119, 217, 109) | #77D96D |114 |
| 4 | hsl(118, 44%, 68%) | rgb(139, 209, 137) | #8BD189 |151 |
| 5 | hsl(329, 92%, 48%) |  rgb(235, 9, 126)  | #EB097E |198 |
| 6 | hsl(159, 87%, 51%) | rgb(21, 238, 162)  | #15EEA2 | 49 |
| 7 | hsl(36, 45%, 41%)  | rgb(151, 113, 57)  | #977139 |137 |
| 8 | hsl(42, 48%, 48%)  | rgb(181, 145, 63)  | #B5913F |179 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(188, 57%, 61%),rgb(98, 197, 212),116
hsl(219, 64%, 36%),rgb(33, 74, 150),61
hsl(114, 59%, 64%),rgb(119, 217, 109),114
hsl(118, 44%, 68%),rgb(139, 209, 137),151
hsl(329, 92%, 48%),rgb(235, 9, 126),198
hsl(159, 87%, 51%),rgb(21, 238, 162),49
hsl(36, 45%, 41%),rgb(151, 113, 57),137
hsl(42, 48%, 48%),rgb(181, 145, 63),179

Generated: 2026-07-09 10:50:57
```
