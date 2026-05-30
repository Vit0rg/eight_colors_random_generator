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

![#B64DA8](https://img.shields.io/badge/-%23B64DA8?style=flat&logo=none) ![#1E2DF4](https://img.shields.io/badge/-%231E2DF4?style=flat&logo=none) ![#B16AEA](https://img.shields.io/badge/-%23B16AEA?style=flat&logo=none) ![#A970D5](https://img.shields.io/badge/-%23A970D5?style=flat&logo=none) ![#83B143](https://img.shields.io/badge/-%2383B143?style=flat&logo=none) ![#8BC46D](https://img.shields.io/badge/-%238BC46D?style=flat&logo=none) ![#4F42B7](https://img.shields.io/badge/-%234F42B7?style=flat&logo=none) ![#D39A30](https://img.shields.io/badge/-%23D39A30?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-30 02:10:05
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(308, 42%, 51%) | rgb(182, 77, 168)  | #B64DA8 |175 |
| 2 | hsl(236, 91%, 54%) |  rgb(30, 45, 244)  | #1E2DF4 | 63 |
| 3 | hsl(273, 76%, 67%) | rgb(177, 106, 234) | #B16AEA |141 |
| 4 | hsl(274, 55%, 64%) | rgb(169, 112, 213) | #A970D5 |140 |
| 5 | hsl(85, 45%, 48%)  | rgb(131, 177, 67)  | #83B143 |143 |
| 6 | hsl(99, 43%, 60%)  | rgb(139, 196, 109) | #8BC46D |150 |
| 7 | hsl(247, 47%, 49%) |  rgb(79, 66, 183)  | #4F42B7 | 98 |
| 8 | hsl(39, 65%, 51%)  | rgb(211, 154, 48)  | #D39A30 |179 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(308, 42%, 51%),rgb(182, 77, 168),175
hsl(236, 91%, 54%),rgb(30, 45, 244),63
hsl(273, 76%, 67%),rgb(177, 106, 234),141
hsl(274, 55%, 64%),rgb(169, 112, 213),140
hsl(85, 45%, 48%),rgb(131, 177, 67),143
hsl(99, 43%, 60%),rgb(139, 196, 109),150
hsl(247, 47%, 49%),rgb(79, 66, 183),98
hsl(39, 65%, 51%),rgb(211, 154, 48),179

Generated: 2026-05-30 02:10:05
```
