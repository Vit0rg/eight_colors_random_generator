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

![#1BBA88](https://img.shields.io/badge/-%231BBA88?style=flat&logo=none) ![#C78631](https://img.shields.io/badge/-%23C78631?style=flat&logo=none) ![#6E15DA](https://img.shields.io/badge/-%236E15DA?style=flat&logo=none) ![#86174B](https://img.shields.io/badge/-%2386174B?style=flat&logo=none) ![#E452AC](https://img.shields.io/badge/-%23E452AC?style=flat&logo=none) ![#D22C48](https://img.shields.io/badge/-%23D22C48?style=flat&logo=none) ![#6C48FE](https://img.shields.io/badge/-%236C48FE?style=flat&logo=none) ![#B99208](https://img.shields.io/badge/-%23B99208?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-12 16:28:10
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(161, 74%, 42%) | rgb(27, 186, 136)  | #1BBA88 | 79 |
| 2 | hsl(34, 60%, 49%)  | rgb(199, 134, 49)  | #C78631 |179 |
| 3 | hsl(267, 82%, 47%) | rgb(110, 21, 218)  | #6E15DA | 92 |
| 4 | hsl(332, 70%, 31%) |  rgb(134, 23, 75)  | #86174B |125 |
| 5 | hsl(323, 73%, 61%) | rgb(228, 82, 172)  | #E452AC |175 |
| 6 | hsl(350, 65%, 50%) |  rgb(210, 44, 72)  | #D22C48 |167 |
| 7 | hsl(252, 99%, 64%) | rgb(108, 72, 254)  | #6C48FE | 99 |
| 8 | hsl(47, 91%, 38%)  |  rgb(185, 146, 8)  | #B99208 |178 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(161, 74%, 42%),rgb(27, 186, 136),79
hsl(34, 60%, 49%),rgb(199, 134, 49),179
hsl(267, 82%, 47%),rgb(110, 21, 218),92
hsl(332, 70%, 31%),rgb(134, 23, 75),125
hsl(323, 73%, 61%),rgb(228, 82, 172),175
hsl(350, 65%, 50%),rgb(210, 44, 72),167
hsl(252, 99%, 64%),rgb(108, 72, 254),99
hsl(47, 91%, 38%),rgb(185, 146, 8),178

Generated: 2026-04-12 16:28:10
```
