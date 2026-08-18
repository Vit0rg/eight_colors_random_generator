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

![#BD5BDB](https://img.shields.io/badge/-%23BD5BDB?style=flat&logo=none) ![#AE2C4B](https://img.shields.io/badge/-%23AE2C4B?style=flat&logo=none) ![#168279](https://img.shields.io/badge/-%23168279?style=flat&logo=none) ![#6E6A2F](https://img.shields.io/badge/-%236E6A2F?style=flat&logo=none) ![#E240AF](https://img.shields.io/badge/-%23E240AF?style=flat&logo=none) ![#963567](https://img.shields.io/badge/-%23963567?style=flat&logo=none) ![#39CF1A](https://img.shields.io/badge/-%2339CF1A?style=flat&logo=none) ![#846EE7](https://img.shields.io/badge/-%23846EE7?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-18 08:23:52
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(286, 64%, 61%) | rgb(189, 91, 219)  | #BD5BDB |176 |
| 2 | hsl(346, 59%, 43%) |  rgb(174, 44, 75)  | #AE2C4B |131 |
| 3 | hsl(175, 71%, 30%) | rgb(22, 130, 121)  | #168279 | 36 |
| 4 | hsl(56, 40%, 31%)  | rgb(110, 106, 47)  | #6E6A2F |101 |
| 5 | hsl(319, 74%, 57%) | rgb(226, 64, 175)  | #E240AF |169 |
| 6 | hsl(329, 48%, 40%) | rgb(150, 53, 103)  | #963567 |132 |
| 7 | hsl(110, 77%, 46%) |  rgb(57, 207, 26)  | #39CF1A | 77 |
| 8 | hsl(251, 72%, 67%) | rgb(132, 110, 231) | #846EE7 |141 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(286, 64%, 61%),rgb(189, 91, 219),176
hsl(346, 59%, 43%),rgb(174, 44, 75),131
hsl(175, 71%, 30%),rgb(22, 130, 121),36
hsl(56, 40%, 31%),rgb(110, 106, 47),101
hsl(319, 74%, 57%),rgb(226, 64, 175),169
hsl(329, 48%, 40%),rgb(150, 53, 103),132
hsl(110, 77%, 46%),rgb(57, 207, 26),77
hsl(251, 72%, 67%),rgb(132, 110, 231),141

Generated: 2026-08-18 08:23:52
```
