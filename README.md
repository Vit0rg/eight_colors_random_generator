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

![#3B09E1](https://img.shields.io/badge/-%233B09E1?style=flat&logo=none) ![#870B97](https://img.shields.io/badge/-%23870B97?style=flat&logo=none) ![#C1F320](https://img.shields.io/badge/-%23C1F320?style=flat&logo=none) ![#1DD613](https://img.shields.io/badge/-%231DD613?style=flat&logo=none) ![#2A941E](https://img.shields.io/badge/-%232A941E?style=flat&logo=none) ![#F103A5](https://img.shields.io/badge/-%23F103A5?style=flat&logo=none) ![#4BC351](https://img.shields.io/badge/-%234BC351?style=flat&logo=none) ![#E42971](https://img.shields.io/badge/-%23E42971?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-24 01:50:15
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(254, 92%, 46%) |  rgb(59, 9, 225)   | #3B09E1 | 56 |
| 2 | hsl(293, 86%, 32%) | rgb(135, 11, 151)  | #870B97 |127 |
| 3 | hsl(74, 90%, 54%)  | rgb(193, 243, 32)  | #C1F320 |191 |
| 4 | hsl(117, 83%, 46%) |  rgb(29, 214, 19)  | #1DD613 | 76 |
| 5 | hsl(114, 66%, 35%) |  rgb(42, 148, 30)  | #2A941E | 71 |
| 6 | hsl(319, 97%, 48%) |  rgb(241, 3, 165)  | #F103A5 |199 |
| 7 | hsl(123, 50%, 53%) |  rgb(75, 195, 81)  | #4BC351 | 78 |
| 8 | hsl(337, 78%, 53%) | rgb(228, 41, 113)  | #E42971 |168 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(254, 92%, 46%),rgb(59, 9, 225),56
hsl(293, 86%, 32%),rgb(135, 11, 151),127
hsl(74, 90%, 54%),rgb(193, 243, 32),191
hsl(117, 83%, 46%),rgb(29, 214, 19),76
hsl(114, 66%, 35%),rgb(42, 148, 30),71
hsl(319, 97%, 48%),rgb(241, 3, 165),199
hsl(123, 50%, 53%),rgb(75, 195, 81),78
hsl(337, 78%, 53%),rgb(228, 41, 113),168

Generated: 2026-07-24 01:50:15
```
