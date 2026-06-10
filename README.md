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

![#83CE5D](https://img.shields.io/badge/-%2383CE5D?style=flat&logo=none) ![#DB7EAA](https://img.shields.io/badge/-%23DB7EAA?style=flat&logo=none) ![#A0021C](https://img.shields.io/badge/-%23A0021C?style=flat&logo=none) ![#80B62F](https://img.shields.io/badge/-%2380B62F?style=flat&logo=none) ![#702D69](https://img.shields.io/badge/-%23702D69?style=flat&logo=none) ![#FC408E](https://img.shields.io/badge/-%23FC408E?style=flat&logo=none) ![#E0A91E](https://img.shields.io/badge/-%23E0A91E?style=flat&logo=none) ![#F4579B](https://img.shields.io/badge/-%23F4579B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-10 11:30:34
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(100, 54%, 59%) | rgb(131, 206, 93)  | #83CE5D |150 |
| 2 | hsl(332, 57%, 68%) | rgb(219, 126, 170) | #DB7EAA |175 |
| 3 | hsl(350, 97%, 32%) |  rgb(160, 2, 28)   | #A0021C |125 |
| 4 | hsl(84, 59%, 45%)  | rgb(128, 182, 47)  | #80B62F |149 |
| 5 | hsl(306, 42%, 31%) | rgb(112, 45, 105)  | #702D69 | 96 |
| 6 | hsl(335, 97%, 62%) | rgb(252, 64, 142)  | #FC408E |205 |
| 7 | hsl(43, 76%, 50%)  | rgb(224, 169, 30)  | #E0A91E |179 |
| 8 | hsl(334, 88%, 65%) | rgb(244, 87, 155)  | #F4579B |211 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(100, 54%, 59%),rgb(131, 206, 93),150
hsl(332, 57%, 68%),rgb(219, 126, 170),175
hsl(350, 97%, 32%),rgb(160, 2, 28),125
hsl(84, 59%, 45%),rgb(128, 182, 47),149
hsl(306, 42%, 31%),rgb(112, 45, 105),96
hsl(335, 97%, 62%),rgb(252, 64, 142),205
hsl(43, 76%, 50%),rgb(224, 169, 30),179
hsl(334, 88%, 65%),rgb(244, 87, 155),211

Generated: 2026-06-10 11:30:34
```
