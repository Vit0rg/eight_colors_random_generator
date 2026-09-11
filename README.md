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

![#06C0EE](https://img.shields.io/badge/-%2306C0EE?style=flat&logo=none) ![#9ED38C](https://img.shields.io/badge/-%239ED38C?style=flat&logo=none) ![#72C827](https://img.shields.io/badge/-%2372C827?style=flat&logo=none) ![#06F326](https://img.shields.io/badge/-%2306F326?style=flat&logo=none) ![#32FA6E](https://img.shields.io/badge/-%2332FA6E?style=flat&logo=none) ![#0FACEF](https://img.shields.io/badge/-%230FACEF?style=flat&logo=none) ![#39CACF](https://img.shields.io/badge/-%2339CACF?style=flat&logo=none) ![#15F3E5](https://img.shields.io/badge/-%2315F3E5?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-11 12:26:44
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(192, 95%, 48%) |  rgb(6, 192, 238)  | #06C0EE | 45 |
| 2 | hsl(105, 45%, 69%) | rgb(158, 211, 140) | #9ED38C |151 |
| 3 | hsl(92, 67%, 47%)  | rgb(114, 200, 39)  | #72C827 |113 |
| 4 | hsl(128, 95%, 49%) |  rgb(6, 243, 38)   | #06F326 | 47 |
| 5 | hsl(138, 96%, 59%) | rgb(50, 250, 110)  | #32FA6E | 84 |
| 6 | hsl(198, 88%, 50%) | rgb(15, 172, 239)  | #0FACEF | 39 |
| 7 | hsl(182, 61%, 52%) | rgb(57, 202, 207)  | #39CACF | 80 |
| 8 | hsl(176, 91%, 52%) | rgb(21, 243, 229)  | #15F3E5 | 50 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(192, 95%, 48%),rgb(6, 192, 238),45
hsl(105, 45%, 69%),rgb(158, 211, 140),151
hsl(92, 67%, 47%),rgb(114, 200, 39),113
hsl(128, 95%, 49%),rgb(6, 243, 38),47
hsl(138, 96%, 59%),rgb(50, 250, 110),84
hsl(198, 88%, 50%),rgb(15, 172, 239),39
hsl(182, 61%, 52%),rgb(57, 202, 207),80
hsl(176, 91%, 52%),rgb(21, 243, 229),50

Generated: 2026-09-11 12:26:44
```
