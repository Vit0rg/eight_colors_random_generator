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

![#3081C3](https://img.shields.io/badge/-%233081C3?style=flat&logo=none) ![#825E30](https://img.shields.io/badge/-%23825E30?style=flat&logo=none) ![#AC7515](https://img.shields.io/badge/-%23AC7515?style=flat&logo=none) ![#983D0F](https://img.shields.io/badge/-%23983D0F?style=flat&logo=none) ![#0A9341](https://img.shields.io/badge/-%230A9341?style=flat&logo=none) ![#C45D8C](https://img.shields.io/badge/-%23C45D8C?style=flat&logo=none) ![#044299](https://img.shields.io/badge/-%23044299?style=flat&logo=none) ![#7FB7D6](https://img.shields.io/badge/-%237FB7D6?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-16 02:50:33
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(207, 60%, 48%) | rgb(48, 129, 195)  | #3081C3 | 74 |
| 2 | hsl(34, 46%, 35%)  |  rgb(130, 94, 48)  | #825E30 |137 |
| 3 | hsl(38, 78%, 38%)  | rgb(172, 117, 21)  | #AC7515 |136 |
| 4 | hsl(20, 81%, 33%)  |  rgb(152, 61, 15)  | #983D0F |130 |
| 5 | hsl(144, 87%, 31%) |  rgb(10, 147, 65)  | #0A9341 | 35 |
| 6 | hsl(333, 47%, 57%) | rgb(196, 93, 140)  | #C45D8C |175 |
| 7 | hsl(215, 94%, 31%) |  rgb(4, 66, 153)   | #044299 | 25 |
| 8 | hsl(201, 52%, 67%) | rgb(127, 183, 214) | #7FB7D6 |116 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(207, 60%, 48%),rgb(48, 129, 195),74
hsl(34, 46%, 35%),rgb(130, 94, 48),137
hsl(38, 78%, 38%),rgb(172, 117, 21),136
hsl(20, 81%, 33%),rgb(152, 61, 15),130
hsl(144, 87%, 31%),rgb(10, 147, 65),35
hsl(333, 47%, 57%),rgb(196, 93, 140),175
hsl(215, 94%, 31%),rgb(4, 66, 153),25
hsl(201, 52%, 67%),rgb(127, 183, 214),116

Generated: 2026-06-16 02:50:33
```
