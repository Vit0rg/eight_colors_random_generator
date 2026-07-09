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

![#3D2294](https://img.shields.io/badge/-%233D2294?style=flat&logo=none) ![#C18E47](https://img.shields.io/badge/-%23C18E47?style=flat&logo=none) ![#920676](https://img.shields.io/badge/-%23920676?style=flat&logo=none) ![#566FCC](https://img.shields.io/badge/-%23566FCC?style=flat&logo=none) ![#BB542E](https://img.shields.io/badge/-%23BB542E?style=flat&logo=none) ![#A72F3D](https://img.shields.io/badge/-%23A72F3D?style=flat&logo=none) ![#8DD28D](https://img.shields.io/badge/-%238DD28D?style=flat&logo=none) ![#E46BC2](https://img.shields.io/badge/-%23E46BC2?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-09 02:02:19
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(254, 62%, 36%) |  rgb(61, 34, 148)  | #3D2294 | 61 |
| 2 | hsl(35, 50%, 52%)  | rgb(193, 142, 71)  | #C18E47 |179 |
| 3 | hsl(312, 92%, 30%) |  rgb(146, 6, 118)  | #920676 |126 |
| 4 | hsl(227, 54%, 57%) | rgb(86, 111, 204)  | #566FCC |104 |
| 5 | hsl(16, 60%, 46%)  |  rgb(187, 84, 46)  | #BB542E |173 |
| 6 | hsl(353, 56%, 42%) |  rgb(167, 47, 61)  | #A72F3D |131 |
| 7 | hsl(120, 44%, 69%) | rgb(141, 210, 141) | #8DD28D |151 |
| 8 | hsl(317, 70%, 66%) | rgb(228, 107, 194) | #E46BC2 |176 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(254, 62%, 36%),rgb(61, 34, 148),61
hsl(35, 50%, 52%),rgb(193, 142, 71),179
hsl(312, 92%, 30%),rgb(146, 6, 118),126
hsl(227, 54%, 57%),rgb(86, 111, 204),104
hsl(16, 60%, 46%),rgb(187, 84, 46),173
hsl(353, 56%, 42%),rgb(167, 47, 61),131
hsl(120, 44%, 69%),rgb(141, 210, 141),151
hsl(317, 70%, 66%),rgb(228, 107, 194),176

Generated: 2026-07-09 02:02:19
```
