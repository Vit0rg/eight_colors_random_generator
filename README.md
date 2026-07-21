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

![#BC428F](https://img.shields.io/badge/-%23BC428F?style=flat&logo=none) ![#081295](https://img.shields.io/badge/-%23081295?style=flat&logo=none) ![#0254E3](https://img.shields.io/badge/-%230254E3?style=flat&logo=none) ![#B78257](https://img.shields.io/badge/-%23B78257?style=flat&logo=none) ![#A6F900](https://img.shields.io/badge/-%23A6F900?style=flat&logo=none) ![#AF843A](https://img.shields.io/badge/-%23AF843A?style=flat&logo=none) ![#5BFA55](https://img.shields.io/badge/-%235BFA55?style=flat&logo=none) ![#A40DA9](https://img.shields.io/badge/-%23A40DA9?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-21 10:15:44
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(322, 48%, 50%) | rgb(188, 66, 143)  | #BC428F |169 |
| 2 | hsl(236, 89%, 31%) |  rgb(8, 18, 149)   | #081295 | 19 |
| 3 | hsl(218, 98%, 45%) |  rgb(2, 84, 227)   | #0254E3 | 32 |
| 4 | hsl(27, 40%, 53%)  | rgb(183, 130, 87)  | #B78257 |180 |
| 5 | hsl(80, 100%, 49%) |  rgb(166, 249, 0)  | #A6F900 |154 |
| 6 | hsl(38, 50%, 46%)  | rgb(175, 132, 58)  | #AF843A |143 |
| 7 | hsl(118, 95%, 66%) |  rgb(91, 250, 85)  | #5BFA55 |120 |
| 8 | hsl(298, 85%, 36%) | rgb(164, 13, 169)  | #A40DA9 |127 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(322, 48%, 50%),rgb(188, 66, 143),169
hsl(236, 89%, 31%),rgb(8, 18, 149),19
hsl(218, 98%, 45%),rgb(2, 84, 227),32
hsl(27, 40%, 53%),rgb(183, 130, 87),180
hsl(80, 100%, 49%),rgb(166, 249, 0),154
hsl(38, 50%, 46%),rgb(175, 132, 58),143
hsl(118, 95%, 66%),rgb(91, 250, 85),120
hsl(298, 85%, 36%),rgb(164, 13, 169),127

Generated: 2026-07-21 10:15:44
```
