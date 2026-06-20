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

![#C17700](https://img.shields.io/badge/-%23C17700?style=flat&logo=none) ![#1A90A2](https://img.shields.io/badge/-%231A90A2?style=flat&logo=none) ![#4EB574](https://img.shields.io/badge/-%234EB574?style=flat&logo=none) ![#B7C760](https://img.shields.io/badge/-%23B7C760?style=flat&logo=none) ![#ED9E30](https://img.shields.io/badge/-%23ED9E30?style=flat&logo=none) ![#46A7C7](https://img.shields.io/badge/-%2346A7C7?style=flat&logo=none) ![#B95802](https://img.shields.io/badge/-%23B95802?style=flat&logo=none) ![#00EF00](https://img.shields.io/badge/-%2300EF00?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-20 17:15:34
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(37, 100%, 38%) |  rgb(193, 119, 0)  | #C17700 |172 |
| 2 | hsl(188, 72%, 37%) | rgb(26, 144, 162)  | #1A90A2 | 73 |
| 3 | hsl(142, 41%, 51%) | rgb(78, 181, 116)  | #4EB574 |114 |
| 4 | hsl(69, 48%, 58%)  | rgb(183, 199, 96)  | #B7C760 |186 |
| 5 | hsl(35, 84%, 56%)  | rgb(237, 158, 48)  | #ED9E30 |215 |
| 6 | hsl(195, 54%, 53%) | rgb(70, 167, 199)  | #46A7C7 | 74 |
| 7 | hsl(28, 97%, 37%)  |  rgb(185, 88, 2)   | #B95802 |172 |
| 8 |hsl(120, 100%, 47%) |   rgb(0, 239, 0)   | #00EF00 | 46 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(37, 100%, 38%),rgb(193, 119, 0),172
hsl(188, 72%, 37%),rgb(26, 144, 162),73
hsl(142, 41%, 51%),rgb(78, 181, 116),114
hsl(69, 48%, 58%),rgb(183, 199, 96),186
hsl(35, 84%, 56%),rgb(237, 158, 48),215
hsl(195, 54%, 53%),rgb(70, 167, 199),74
hsl(28, 97%, 37%),rgb(185, 88, 2),172
hsl(120, 100%, 47%),rgb(0, 239, 0),46

Generated: 2026-06-20 17:15:34
```
