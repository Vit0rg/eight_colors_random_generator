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

![#4B2A8D](https://img.shields.io/badge/-%234B2A8D?style=flat&logo=none) ![#2CDC9C](https://img.shields.io/badge/-%232CDC9C?style=flat&logo=none) ![#905BD0](https://img.shields.io/badge/-%23905BD0?style=flat&logo=none) ![#FCD863](https://img.shields.io/badge/-%23FCD863?style=flat&logo=none) ![#08AF5E](https://img.shields.io/badge/-%2308AF5E?style=flat&logo=none) ![#13C265](https://img.shields.io/badge/-%2313C265?style=flat&logo=none) ![#53E40F](https://img.shields.io/badge/-%2353E40F?style=flat&logo=none) ![#709239](https://img.shields.io/badge/-%23709239?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-18 16:29:21
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(260, 54%, 36%) |  rgb(75, 42, 141)  | #4B2A8D | 61 |
| 2 | hsl(158, 72%, 52%) | rgb(44, 220, 156)  | #2CDC9C | 79 |
| 3 | hsl(267, 56%, 59%) | rgb(144, 91, 208)  | #905BD0 |140 |
| 4 | hsl(46, 97%, 69%)  | rgb(252, 216, 99)  | #FCD863 |222 |
| 5 | hsl(151, 91%, 36%) |  rgb(8, 175, 94)   | #08AF5E | 36 |
| 6 | hsl(148, 82%, 42%) | rgb(19, 194, 101)  | #13C265 | 42 |
| 7 | hsl(101, 87%, 48%) |  rgb(83, 228, 15)  | #53E40F |112 |
| 8 | hsl(83, 44%, 40%)  | rgb(112, 146, 57)  | #709239 |107 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(260, 54%, 36%),rgb(75, 42, 141),61
hsl(158, 72%, 52%),rgb(44, 220, 156),79
hsl(267, 56%, 59%),rgb(144, 91, 208),140
hsl(46, 97%, 69%),rgb(252, 216, 99),222
hsl(151, 91%, 36%),rgb(8, 175, 94),36
hsl(148, 82%, 42%),rgb(19, 194, 101),42
hsl(101, 87%, 48%),rgb(83, 228, 15),112
hsl(83, 44%, 40%),rgb(112, 146, 57),107

Generated: 2026-04-18 16:29:21
```
