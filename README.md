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

![#BBB04D](https://img.shields.io/badge/-%23BBB04D?style=flat&logo=none) ![#CC9A04](https://img.shields.io/badge/-%23CC9A04?style=flat&logo=none) ![#7CA846](https://img.shields.io/badge/-%237CA846?style=flat&logo=none) ![#3EEE7F](https://img.shields.io/badge/-%233EEE7F?style=flat&logo=none) ![#787E2A](https://img.shields.io/badge/-%23787E2A?style=flat&logo=none) ![#84D2D6](https://img.shields.io/badge/-%2384D2D6?style=flat&logo=none) ![#EBE36F](https://img.shields.io/badge/-%23EBE36F?style=flat&logo=none) ![#C62E28](https://img.shields.io/badge/-%23C62E28?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-09 09:09:10
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(54, 45%, 52%)  | rgb(187, 176, 77)  | #BBB04D |180 |
| 2 | hsl(45, 96%, 41%)  |  rgb(204, 154, 4)  | #CC9A04 |178 |
| 3 | hsl(87, 41%, 47%)  | rgb(124, 168, 70)  | #7CA846 |107 |
| 4 | hsl(142, 84%, 59%) | rgb(62, 238, 127)  | #3EEE7F | 84 |
| 5 | hsl(64, 50%, 33%)  | rgb(120, 126, 42)  | #787E2A |101 |
| 6 | hsl(183, 50%, 68%) | rgb(132, 210, 214) | #84D2D6 |152 |
| 7 | hsl(56, 76%, 68%)  | rgb(235, 227, 111) | #EBE36F |222 |
| 8 |  hsl(2, 66%, 47%)  |  rgb(198, 46, 40)  | #C62E28 |167 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(54, 45%, 52%),rgb(187, 176, 77),180
hsl(45, 96%, 41%),rgb(204, 154, 4),178
hsl(87, 41%, 47%),rgb(124, 168, 70),107
hsl(142, 84%, 59%),rgb(62, 238, 127),84
hsl(64, 50%, 33%),rgb(120, 126, 42),101
hsl(183, 50%, 68%),rgb(132, 210, 214),152
hsl(56, 76%, 68%),rgb(235, 227, 111),222
hsl(2, 66%, 47%),rgb(198, 46, 40),167

Generated: 2026-05-09 09:09:10
```
