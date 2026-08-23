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

![#D61ED6](https://img.shields.io/badge/-%23D61ED6?style=flat&logo=none) ![#C5C760](https://img.shields.io/badge/-%23C5C760?style=flat&logo=none) ![#7C831A](https://img.shields.io/badge/-%237C831A?style=flat&logo=none) ![#AD471E](https://img.shields.io/badge/-%23AD471E?style=flat&logo=none) ![#CC8575](https://img.shields.io/badge/-%23CC8575?style=flat&logo=none) ![#4A0ACB](https://img.shields.io/badge/-%234A0ACB?style=flat&logo=none) ![#A86541](https://img.shields.io/badge/-%23A86541?style=flat&logo=none) ![#7126A0](https://img.shields.io/badge/-%237126A0?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-23 16:13:53
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(300, 75%, 48%) | rgb(214, 30, 214)  | #D61ED6 |170 |
| 2 | hsl(61, 48%, 58%)  | rgb(197, 199, 96)  | #C5C760 |186 |
| 3 | hsl(64, 66%, 31%)  | rgb(124, 131, 26)  | #7C831A |107 |
| 4 | hsl(17, 70%, 40%)  |  rgb(173, 71, 30)  | #AD471E |131 |
| 5 | hsl(11, 46%, 63%)  | rgb(204, 133, 117) | #CC8575 |180 |
| 6 | hsl(260, 90%, 42%) |  rgb(74, 10, 203)  | #4A0ACB | 56 |
| 7 | hsl(21, 44%, 46%)  | rgb(168, 101, 65)  | #A86541 |137 |
| 8 | hsl(277, 61%, 39%) | rgb(113, 38, 160)  | #7126A0 | 97 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(300, 75%, 48%),rgb(214, 30, 214),170
hsl(61, 48%, 58%),rgb(197, 199, 96),186
hsl(64, 66%, 31%),rgb(124, 131, 26),107
hsl(17, 70%, 40%),rgb(173, 71, 30),131
hsl(11, 46%, 63%),rgb(204, 133, 117),180
hsl(260, 90%, 42%),rgb(74, 10, 203),56
hsl(21, 44%, 46%),rgb(168, 101, 65),137
hsl(277, 61%, 39%),rgb(113, 38, 160),97

Generated: 2026-08-23 16:13:53
```
