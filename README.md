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

![#93AE0E](https://img.shields.io/badge/-%2393AE0E?style=flat&logo=none) ![#33BB05](https://img.shields.io/badge/-%2333BB05?style=flat&logo=none) ![#AFC571](https://img.shields.io/badge/-%23AFC571?style=flat&logo=none) ![#2D7A73](https://img.shields.io/badge/-%232D7A73?style=flat&logo=none) ![#B73D84](https://img.shields.io/badge/-%23B73D84?style=flat&logo=none) ![#D54BE1](https://img.shields.io/badge/-%23D54BE1?style=flat&logo=none) ![#F457C5](https://img.shields.io/badge/-%23F457C5?style=flat&logo=none) ![#D8FF14](https://img.shields.io/badge/-%23D8FF14?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-29 10:30:33
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(70, 85%, 37%)  | rgb(147, 174, 14)  | #93AE0E |142 |
| 2 | hsl(105, 94%, 38%) |  rgb(51, 187, 5)   | #33BB05 | 76 |
| 3 | hsl(76, 42%, 61%)  | rgb(175, 197, 113) | #AFC571 |150 |
| 4 | hsl(174, 46%, 33%) | rgb(45, 122, 115)  | #2D7A73 | 66 |
| 5 | hsl(325, 50%, 48%) | rgb(183, 61, 132)  | #B73D84 |169 |
| 6 | hsl(295, 72%, 59%) | rgb(213, 75, 225)  | #D54BE1 |170 |
| 7 | hsl(318, 88%, 65%) | rgb(244, 87, 197)  | #F457C5 |212 |
| 8 | hsl(70, 100%, 54%) | rgb(216, 255, 20)  | #D8FF14 |190 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(70, 85%, 37%),rgb(147, 174, 14),142
hsl(105, 94%, 38%),rgb(51, 187, 5),76
hsl(76, 42%, 61%),rgb(175, 197, 113),150
hsl(174, 46%, 33%),rgb(45, 122, 115),66
hsl(325, 50%, 48%),rgb(183, 61, 132),169
hsl(295, 72%, 59%),rgb(213, 75, 225),170
hsl(318, 88%, 65%),rgb(244, 87, 197),212
hsl(70, 100%, 54%),rgb(216, 255, 20),190

Generated: 2026-07-29 10:30:33
```
