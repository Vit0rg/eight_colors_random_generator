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

![#DE2EFD](https://img.shields.io/badge/-%23DE2EFD?style=flat&logo=none) ![#EDC66D](https://img.shields.io/badge/-%23EDC66D?style=flat&logo=none) ![#78782A](https://img.shields.io/badge/-%2378782A?style=flat&logo=none) ![#18C39E](https://img.shields.io/badge/-%2318C39E?style=flat&logo=none) ![#69ECA6](https://img.shields.io/badge/-%2369ECA6?style=flat&logo=none) ![#34509C](https://img.shields.io/badge/-%2334509C?style=flat&logo=none) ![#EF7D66](https://img.shields.io/badge/-%23EF7D66?style=flat&logo=none) ![#9DE127](https://img.shields.io/badge/-%239DE127?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-09 10:52:04
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(291, 99%, 59%) | rgb(222, 46, 253)  | #DE2EFD |171 |
| 2 | hsl(42, 78%, 68%)  | rgb(237, 198, 109) | #EDC66D |222 |
| 3 | hsl(60, 48%, 32%)  | rgb(120, 120, 42)  | #78782A |101 |
| 4 | hsl(167, 78%, 43%) | rgb(24, 195, 158)  | #18C39E | 43 |
| 5 | hsl(148, 78%, 67%) | rgb(105, 236, 166) | #69ECA6 |121 |
| 6 | hsl(224, 50%, 41%) |  rgb(52, 80, 156)  | #34509C | 67 |
| 7 | hsl(10, 81%, 67%)  | rgb(239, 125, 102) | #EF7D66 |210 |
| 8 | hsl(82, 76%, 52%)  | rgb(157, 225, 39)  | #9DE127 |149 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(291, 99%, 59%),rgb(222, 46, 253),171
hsl(42, 78%, 68%),rgb(237, 198, 109),222
hsl(60, 48%, 32%),rgb(120, 120, 42),101
hsl(167, 78%, 43%),rgb(24, 195, 158),43
hsl(148, 78%, 67%),rgb(105, 236, 166),121
hsl(224, 50%, 41%),rgb(52, 80, 156),67
hsl(10, 81%, 67%),rgb(239, 125, 102),210
hsl(82, 76%, 52%),rgb(157, 225, 39),149

Generated: 2026-06-09 10:52:04
```
