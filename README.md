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

![#E96774](https://img.shields.io/badge/-%23E96774?style=flat&logo=none) ![#8B1C73](https://img.shields.io/badge/-%238B1C73?style=flat&logo=none) ![#3D7A28](https://img.shields.io/badge/-%233D7A28?style=flat&logo=none) ![#92102A](https://img.shields.io/badge/-%2392102A?style=flat&logo=none) ![#F04CF9](https://img.shields.io/badge/-%23F04CF9?style=flat&logo=none) ![#71DE83](https://img.shields.io/badge/-%2371DE83?style=flat&logo=none) ![#50DCC5](https://img.shields.io/badge/-%2350DCC5?style=flat&logo=none) ![#169C16](https://img.shields.io/badge/-%23169C16?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-12 02:07:15
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(354, 75%, 66%) | rgb(233, 103, 116) | #E96774 |210 |
| 2 | hsl(313, 66%, 33%) | rgb(139, 28, 115)  | #8B1C73 |132 |
| 3 | hsl(105, 50%, 32%) |  rgb(61, 122, 40)  | #3D7A28 | 65 |
| 4 | hsl(348, 80%, 32%) |  rgb(146, 16, 42)  | #92102A |125 |
| 5 | hsl(297, 94%, 64%) | rgb(240, 76, 249)  | #F04CF9 |207 |
| 6 | hsl(130, 63%, 66%) | rgb(113, 222, 131) | #71DE83 |115 |
| 7 | hsl(170, 67%, 59%) | rgb(80, 220, 197)  | #50DCC5 |116 |
| 8 | hsl(120, 75%, 35%) |  rgb(22, 156, 22)  | #169C16 | 34 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(354, 75%, 66%),rgb(233, 103, 116),210
hsl(313, 66%, 33%),rgb(139, 28, 115),132
hsl(105, 50%, 32%),rgb(61, 122, 40),65
hsl(348, 80%, 32%),rgb(146, 16, 42),125
hsl(297, 94%, 64%),rgb(240, 76, 249),207
hsl(130, 63%, 66%),rgb(113, 222, 131),115
hsl(170, 67%, 59%),rgb(80, 220, 197),116
hsl(120, 75%, 35%),rgb(22, 156, 22),34

Generated: 2026-05-12 02:07:15
```
