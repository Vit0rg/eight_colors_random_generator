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

![#E7447B](https://img.shields.io/badge/-%23E7447B?style=flat&logo=none) ![#80FA5A](https://img.shields.io/badge/-%2380FA5A?style=flat&logo=none) ![#74F226](https://img.shields.io/badge/-%2374F226?style=flat&logo=none) ![#B042C6](https://img.shields.io/badge/-%23B042C6?style=flat&logo=none) ![#F1CB68](https://img.shields.io/badge/-%23F1CB68?style=flat&logo=none) ![#14C676](https://img.shields.io/badge/-%2314C676?style=flat&logo=none) ![#8A07E8](https://img.shields.io/badge/-%238A07E8?style=flat&logo=none) ![#0C00C1](https://img.shields.io/badge/-%230C00C1?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-07 16:41:57
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(340, 78%, 59%) | rgb(231, 68, 123)  | #E7447B |204 |
| 2 | hsl(106, 95%, 67%) | rgb(128, 250, 90)  | #80FA5A |156 |
| 3 | hsl(97, 89%, 55%)  | rgb(116, 242, 38)  | #74F226 |119 |
| 4 | hsl(290, 54%, 52%) | rgb(176, 66, 198)  | #B042C6 |134 |
| 5 | hsl(43, 84%, 68%)  | rgb(241, 203, 104) | #F1CB68 |222 |
| 6 | hsl(153, 81%, 43%) | rgb(20, 198, 118)  | #14C676 | 42 |
| 7 | hsl(275, 94%, 47%) |  rgb(138, 7, 232)  | #8A07E8 |129 |
| 8 |hsl(244, 100%, 38%) |  rgb(12, 0, 193)   | #0C00C1 | 20 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(340, 78%, 59%),rgb(231, 68, 123),204
hsl(106, 95%, 67%),rgb(128, 250, 90),156
hsl(97, 89%, 55%),rgb(116, 242, 38),119
hsl(290, 54%, 52%),rgb(176, 66, 198),134
hsl(43, 84%, 68%),rgb(241, 203, 104),222
hsl(153, 81%, 43%),rgb(20, 198, 118),42
hsl(275, 94%, 47%),rgb(138, 7, 232),129
hsl(244, 100%, 38%),rgb(12, 0, 193),20

Generated: 2026-08-07 16:41:57
```
