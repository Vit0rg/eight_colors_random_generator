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

![#339940](https://img.shields.io/badge/-%23339940?style=flat&logo=none) ![#4B77C3](https://img.shields.io/badge/-%234B77C3?style=flat&logo=none) ![#5A1CCE](https://img.shields.io/badge/-%235A1CCE?style=flat&logo=none) ![#6A49E3](https://img.shields.io/badge/-%236A49E3?style=flat&logo=none) ![#B846B8](https://img.shields.io/badge/-%23B846B8?style=flat&logo=none) ![#3F3DA7](https://img.shields.io/badge/-%233F3DA7?style=flat&logo=none) ![#E81B70](https://img.shields.io/badge/-%23E81B70?style=flat&logo=none) ![#A0BF44](https://img.shields.io/badge/-%23A0BF44?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-15 16:53:42
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(128, 50%, 40%) |  rgb(51, 153, 64)  | #339940 | 71 |
| 2 | hsl(218, 50%, 53%) | rgb(75, 119, 195)  | #4B77C3 | 68 |
| 3 | hsl(261, 76%, 46%) |  rgb(90, 28, 206)  | #5A1CCE | 98 |
| 4 | hsl(253, 74%, 59%) | rgb(106, 73, 227)  | #6A49E3 | 98 |
| 5 | hsl(300, 45%, 50%) | rgb(184, 70, 184)  | #B846B8 |170 |
| 6 | hsl(241, 46%, 45%) |  rgb(63, 61, 167)  | #3F3DA7 | 61 |
| 7 | hsl(335, 82%, 51%) | rgb(232, 27, 112)  | #E81B70 |204 |
| 8 | hsl(75, 49%, 51%)  | rgb(160, 191, 68)  | #A0BF44 |149 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(128, 50%, 40%),rgb(51, 153, 64),71
hsl(218, 50%, 53%),rgb(75, 119, 195),68
hsl(261, 76%, 46%),rgb(90, 28, 206),98
hsl(253, 74%, 59%),rgb(106, 73, 227),98
hsl(300, 45%, 50%),rgb(184, 70, 184),170
hsl(241, 46%, 45%),rgb(63, 61, 167),61
hsl(335, 82%, 51%),rgb(232, 27, 112),204
hsl(75, 49%, 51%),rgb(160, 191, 68),149

Generated: 2026-04-15 16:53:42
```
