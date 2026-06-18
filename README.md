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

![#397820](https://img.shields.io/badge/-%23397820?style=flat&logo=none) ![#727EC4](https://img.shields.io/badge/-%23727EC4?style=flat&logo=none) ![#2BAA4D](https://img.shields.io/badge/-%232BAA4D?style=flat&logo=none) ![#D7ED6D](https://img.shields.io/badge/-%23D7ED6D?style=flat&logo=none) ![#48BBCF](https://img.shields.io/badge/-%2348BBCF?style=flat&logo=none) ![#FF23D6](https://img.shields.io/badge/-%23FF23D6?style=flat&logo=none) ![#8114A3](https://img.shields.io/badge/-%238114A3?style=flat&logo=none) ![#54E2F2](https://img.shields.io/badge/-%2354E2F2?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-18 18:21:05
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(103, 57%, 30%) |  rgb(57, 120, 32)  | #397820 | 65 |
| 2 | hsl(231, 41%, 61%) | rgb(114, 126, 196) | #727EC4 |104 |
| 3 | hsl(136, 59%, 42%) |  rgb(43, 170, 77)  | #2BAA4D | 72 |
| 4 | hsl(70, 78%, 68%)  | rgb(215, 237, 109) | #D7ED6D |192 |
| 5 | hsl(189, 59%, 55%) | rgb(72, 187, 207)  | #48BBCF | 80 |
| 6 |hsl(311, 100%, 57%) | rgb(255, 35, 214)  | #FF23D6 |206 |
| 7 | hsl(286, 78%, 36%) | rgb(129, 20, 163)  | #8114A3 |127 |
| 8 | hsl(186, 86%, 64%) | rgb(84, 226, 242)  | #54E2F2 |117 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(103, 57%, 30%),rgb(57, 120, 32),65
hsl(231, 41%, 61%),rgb(114, 126, 196),104
hsl(136, 59%, 42%),rgb(43, 170, 77),72
hsl(70, 78%, 68%),rgb(215, 237, 109),192
hsl(189, 59%, 55%),rgb(72, 187, 207),80
hsl(311, 100%, 57%),rgb(255, 35, 214),206
hsl(286, 78%, 36%),rgb(129, 20, 163),127
hsl(186, 86%, 64%),rgb(84, 226, 242),117

Generated: 2026-06-18 18:21:05
```
