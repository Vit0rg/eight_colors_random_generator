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

![#030197](https://img.shields.io/badge/-%23030197?style=flat&logo=none) ![#7EE19D](https://img.shields.io/badge/-%237EE19D?style=flat&logo=none) ![#0DC0F6](https://img.shields.io/badge/-%230DC0F6?style=flat&logo=none) ![#7848AC](https://img.shields.io/badge/-%237848AC?style=flat&logo=none) ![#47EAA9](https://img.shields.io/badge/-%2347EAA9?style=flat&logo=none) ![#8A2222](https://img.shields.io/badge/-%238A2222?style=flat&logo=none) ![#D3B978](https://img.shields.io/badge/-%23D3B978?style=flat&logo=none) ![#2A6978](https://img.shields.io/badge/-%232A6978?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-04 10:27:06
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(241, 98%, 30%) |   rgb(3, 1, 151)   | #030197 | 19 |
| 2 | hsl(139, 63%, 69%) | rgb(126, 225, 157) | #7EE19D |115 |
| 3 | hsl(194, 93%, 51%) | rgb(13, 192, 246)  | #0DC0F6 | 45 |
| 4 | hsl(269, 41%, 48%) | rgb(120, 72, 172)  | #7848AC | 97 |
| 5 | hsl(156, 80%, 60%) | rgb(71, 234, 169)  | #47EAA9 | 85 |
| 6 |  hsl(0, 60%, 34%)  |  rgb(138, 34, 34)  | #8A2222 |131 |
| 7 | hsl(43, 51%, 65%)  | rgb(211, 185, 120) | #D3B978 |186 |
| 8 | hsl(192, 48%, 32%) | rgb(42, 105, 120)  | #2A6978 | 66 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(241, 98%, 30%),rgb(3, 1, 151),19
hsl(139, 63%, 69%),rgb(126, 225, 157),115
hsl(194, 93%, 51%),rgb(13, 192, 246),45
hsl(269, 41%, 48%),rgb(120, 72, 172),97
hsl(156, 80%, 60%),rgb(71, 234, 169),85
hsl(0, 60%, 34%),rgb(138, 34, 34),131
hsl(43, 51%, 65%),rgb(211, 185, 120),186
hsl(192, 48%, 32%),rgb(42, 105, 120),66

Generated: 2026-08-04 10:27:06
```
