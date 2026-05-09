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

![#3183E1](https://img.shields.io/badge/-%233183E1?style=flat&logo=none) ![#64C393](https://img.shields.io/badge/-%2364C393?style=flat&logo=none) ![#FC8B4A](https://img.shields.io/badge/-%23FC8B4A?style=flat&logo=none) ![#8901AB](https://img.shields.io/badge/-%238901AB?style=flat&logo=none) ![#E2BE3A](https://img.shields.io/badge/-%23E2BE3A?style=flat&logo=none) ![#E44B43](https://img.shields.io/badge/-%23E44B43?style=flat&logo=none) ![#D193B3](https://img.shields.io/badge/-%23D193B3?style=flat&logo=none) ![#58BF91](https://img.shields.io/badge/-%2358BF91?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-09 16:42:09
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(212, 75%, 54%) | rgb(49, 131, 225)  | #3183E1 | 74 |
| 2 | hsl(150, 44%, 58%) | rgb(100, 195, 147) | #64C393 |115 |
| 3 | hsl(22, 97%, 64%)  | rgb(252, 139, 74)  | #FC8B4A |215 |
| 4 | hsl(288, 98%, 34%) |  rgb(137, 1, 171)  | #8901AB |127 |
| 5 | hsl(47, 75%, 56%)  | rgb(226, 190, 58)  | #E2BE3A |185 |
| 6 |  hsl(3, 75%, 58%)  |  rgb(228, 75, 67)  | #E44B43 |167 |
| 7 | hsl(329, 40%, 70%) | rgb(209, 147, 179) | #D193B3 |181 |
| 8 | hsl(153, 45%, 55%) | rgb(88, 191, 145)  | #58BF91 |115 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(212, 75%, 54%),rgb(49, 131, 225),74
hsl(150, 44%, 58%),rgb(100, 195, 147),115
hsl(22, 97%, 64%),rgb(252, 139, 74),215
hsl(288, 98%, 34%),rgb(137, 1, 171),127
hsl(47, 75%, 56%),rgb(226, 190, 58),185
hsl(3, 75%, 58%),rgb(228, 75, 67),167
hsl(329, 40%, 70%),rgb(209, 147, 179),181
hsl(153, 45%, 55%),rgb(88, 191, 145),115

Generated: 2026-05-09 16:42:09
```
