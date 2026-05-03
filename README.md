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

![#9B0BEE](https://img.shields.io/badge/-%239B0BEE?style=flat&logo=none) ![#E45A15](https://img.shields.io/badge/-%23E45A15?style=flat&logo=none) ![#ACE217](https://img.shields.io/badge/-%23ACE217?style=flat&logo=none) ![#9B215A](https://img.shields.io/badge/-%239B215A?style=flat&logo=none) ![#3EC586](https://img.shields.io/badge/-%233EC586?style=flat&logo=none) ![#0EC7AE](https://img.shields.io/badge/-%230EC7AE?style=flat&logo=none) ![#EB6213](https://img.shields.io/badge/-%23EB6213?style=flat&logo=none) ![#4ED3ED](https://img.shields.io/badge/-%234ED3ED?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-03 16:38:01
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(278, 91%, 49%) | rgb(155, 11, 238)  | #9B0BEE |129 |
| 2 | hsl(20, 83%, 49%)  |  rgb(228, 90, 21)  | #E45A15 |172 |
| 3 | hsl(76, 81%, 49%)  | rgb(172, 226, 23)  | #ACE217 |148 |
| 4 | hsl(332, 65%, 37%) |  rgb(155, 33, 90)  | #9B215A |132 |
| 5 | hsl(152, 54%, 51%) | rgb(62, 197, 134)  | #3EC586 | 79 |
| 6 | hsl(172, 86%, 42%) | rgb(14, 199, 174)  | #0EC7AE | 43 |
| 7 | hsl(22, 85%, 50%)  |  rgb(235, 98, 19)  | #EB6213 |208 |
| 8 | hsl(190, 82%, 62%) | rgb(78, 211, 237)  | #4ED3ED |117 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(278, 91%, 49%),rgb(155, 11, 238),129
hsl(20, 83%, 49%),rgb(228, 90, 21),172
hsl(76, 81%, 49%),rgb(172, 226, 23),148
hsl(332, 65%, 37%),rgb(155, 33, 90),132
hsl(152, 54%, 51%),rgb(62, 197, 134),79
hsl(172, 86%, 42%),rgb(14, 199, 174),43
hsl(22, 85%, 50%),rgb(235, 98, 19),208
hsl(190, 82%, 62%),rgb(78, 211, 237),117

Generated: 2026-05-03 16:38:01
```
