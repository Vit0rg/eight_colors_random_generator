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

![#B9355D](https://img.shields.io/badge/-%23B9355D?style=flat&logo=none) ![#F96F3E](https://img.shields.io/badge/-%23F96F3E?style=flat&logo=none) ![#7DE287](https://img.shields.io/badge/-%237DE287?style=flat&logo=none) ![#75A41D](https://img.shields.io/badge/-%2375A41D?style=flat&logo=none) ![#A00CAA](https://img.shields.io/badge/-%23A00CAA?style=flat&logo=none) ![#AACF06](https://img.shields.io/badge/-%23AACF06?style=flat&logo=none) ![#A07507](https://img.shields.io/badge/-%23A07507?style=flat&logo=none) ![#09C21E](https://img.shields.io/badge/-%2309C21E?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-19 17:57:29
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(342, 55%, 47%) |  rgb(185, 53, 93)  | #B9355D |168 |
| 2 | hsl(16, 94%, 61%)  | rgb(249, 111, 62)  | #F96F3E |209 |
| 3 | hsl(126, 64%, 69%) | rgb(125, 226, 135) | #7DE287 |115 |
| 4 | hsl(81, 70%, 38%)  | rgb(117, 164, 29)  | #75A41D |107 |
| 5 | hsl(296, 86%, 36%) | rgb(160, 12, 170)  | #A00CAA |127 |
| 6 | hsl(71, 94%, 42%)  |  rgb(170, 207, 6)  | #AACF06 |148 |
| 7 | hsl(43, 91%, 33%)  |  rgb(160, 117, 7)  | #A07507 |136 |
| 8 | hsl(127, 91%, 40%) |  rgb(9, 194, 30)   | #09C21E | 41 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(342, 55%, 47%),rgb(185, 53, 93),168
hsl(16, 94%, 61%),rgb(249, 111, 62),209
hsl(126, 64%, 69%),rgb(125, 226, 135),115
hsl(81, 70%, 38%),rgb(117, 164, 29),107
hsl(296, 86%, 36%),rgb(160, 12, 170),127
hsl(71, 94%, 42%),rgb(170, 207, 6),148
hsl(43, 91%, 33%),rgb(160, 117, 7),136
hsl(127, 91%, 40%),rgb(9, 194, 30),41

Generated: 2026-05-19 17:57:29
```
