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

![#0B8ADA](https://img.shields.io/badge/-%230B8ADA?style=flat&logo=none) ![#4D75C0](https://img.shields.io/badge/-%234D75C0?style=flat&logo=none) ![#CFA84D](https://img.shields.io/badge/-%23CFA84D?style=flat&logo=none) ![#C31D28](https://img.shields.io/badge/-%23C31D28?style=flat&logo=none) ![#AB710B](https://img.shields.io/badge/-%23AB710B?style=flat&logo=none) ![#B2521E](https://img.shields.io/badge/-%23B2521E?style=flat&logo=none) ![#F0284D](https://img.shields.io/badge/-%23F0284D?style=flat&logo=none) ![#03C87D](https://img.shields.io/badge/-%2303C87D?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-10 16:42:17
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(203, 90%, 45%) | rgb(11, 138, 218)  | #0B8ADA | 38 |
| 2 | hsl(219, 48%, 53%) | rgb(77, 117, 192)  | #4D75C0 |104 |
| 3 | hsl(42, 58%, 56%)  | rgb(207, 168, 77)  | #CFA84D |180 |
| 4 | hsl(356, 74%, 44%) |  rgb(195, 29, 40)  | #C31D28 |167 |
| 5 | hsl(38, 87%, 36%)  | rgb(171, 113, 11)  | #AB710B |136 |
| 6 | hsl(21, 71%, 41%)  |  rgb(178, 82, 30)  | #B2521E |137 |
| 7 | hsl(349, 87%, 55%) |  rgb(240, 40, 77)  | #F0284D |204 |
| 8 | hsl(157, 97%, 40%) |  rgb(3, 200, 125)  | #03C87D | 42 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(203, 90%, 45%),rgb(11, 138, 218),38
hsl(219, 48%, 53%),rgb(77, 117, 192),104
hsl(42, 58%, 56%),rgb(207, 168, 77),180
hsl(356, 74%, 44%),rgb(195, 29, 40),167
hsl(38, 87%, 36%),rgb(171, 113, 11),136
hsl(21, 71%, 41%),rgb(178, 82, 30),137
hsl(349, 87%, 55%),rgb(240, 40, 77),204
hsl(157, 97%, 40%),rgb(3, 200, 125),42

Generated: 2026-05-10 16:42:17
```
