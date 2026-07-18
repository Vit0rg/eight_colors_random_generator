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

![#1BBA29](https://img.shields.io/badge/-%231BBA29?style=flat&logo=none) ![#DB899C](https://img.shields.io/badge/-%23DB899C?style=flat&logo=none) ![#786D20](https://img.shields.io/badge/-%23786D20?style=flat&logo=none) ![#D01EF4](https://img.shields.io/badge/-%23D01EF4?style=flat&logo=none) ![#AA4CBC](https://img.shields.io/badge/-%23AA4CBC?style=flat&logo=none) ![#62328F](https://img.shields.io/badge/-%2362328F?style=flat&logo=none) ![#A913BD](https://img.shields.io/badge/-%23A913BD?style=flat&logo=none) ![#74B0F0](https://img.shields.io/badge/-%2374B0F0?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-18 09:16:07
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(125, 74%, 42%) |  rgb(27, 186, 41)  | #1BBA29 | 77 |
| 2 | hsl(346, 54%, 70%) | rgb(219, 137, 156) | #DB899C |181 |
| 3 | hsl(52, 58%, 30%)  | rgb(120, 109, 32)  | #786D20 |101 |
| 4 | hsl(290, 91%, 54%) | rgb(208, 30, 244)  | #D01EF4 |171 |
| 5 | hsl(290, 46%, 52%) | rgb(170, 76, 188)  | #AA4CBC |134 |
| 6 | hsl(271, 48%, 38%) |  rgb(98, 50, 143)  | #62328F | 97 |
| 7 | hsl(293, 81%, 41%) | rgb(169, 19, 189)  | #A913BD |128 |
| 8 | hsl(211, 81%, 70%) | rgb(116, 176, 240) | #74B0F0 |111 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(125, 74%, 42%),rgb(27, 186, 41),77
hsl(346, 54%, 70%),rgb(219, 137, 156),181
hsl(52, 58%, 30%),rgb(120, 109, 32),101
hsl(290, 91%, 54%),rgb(208, 30, 244),171
hsl(290, 46%, 52%),rgb(170, 76, 188),134
hsl(271, 48%, 38%),rgb(98, 50, 143),97
hsl(293, 81%, 41%),rgb(169, 19, 189),128
hsl(211, 81%, 70%),rgb(116, 176, 240),111

Generated: 2026-07-18 09:16:07
```
