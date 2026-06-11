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

![#AE4A5E](https://img.shields.io/badge/-%23AE4A5E?style=flat&logo=none) ![#BE69EC](https://img.shields.io/badge/-%23BE69EC?style=flat&logo=none) ![#8AAC2F](https://img.shields.io/badge/-%238AAC2F?style=flat&logo=none) ![#F8109F](https://img.shields.io/badge/-%23F8109F?style=flat&logo=none) ![#B17F33](https://img.shields.io/badge/-%23B17F33?style=flat&logo=none) ![#D11343](https://img.shields.io/badge/-%23D11343?style=flat&logo=none) ![#3BA134](https://img.shields.io/badge/-%233BA134?style=flat&logo=none) ![#7DE2DD](https://img.shields.io/badge/-%237DE2DD?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-11 02:43:59
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(348, 40%, 49%) |  rgb(174, 74, 94)  | #AE4A5E |132 |
| 2 | hsl(279, 78%, 67%) | rgb(190, 105, 236) | #BE69EC |177 |
| 3 | hsl(76, 57%, 43%)  | rgb(138, 172, 47)  | #8AAC2F |143 |
| 4 | hsl(323, 95%, 52%) | rgb(248, 16, 159)  | #F8109F |199 |
| 5 | hsl(36, 55%, 45%)  | rgb(177, 127, 51)  | #B17F33 |137 |
| 6 | hsl(345, 83%, 45%) |  rgb(209, 19, 67)  | #D11343 |161 |
| 7 | hsl(116, 51%, 42%) |  rgb(59, 161, 52)  | #3BA134 | 71 |
| 8 | hsl(177, 64%, 69%) | rgb(125, 226, 221) | #7DE2DD |116 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(348, 40%, 49%),rgb(174, 74, 94),132
hsl(279, 78%, 67%),rgb(190, 105, 236),177
hsl(76, 57%, 43%),rgb(138, 172, 47),143
hsl(323, 95%, 52%),rgb(248, 16, 159),199
hsl(36, 55%, 45%),rgb(177, 127, 51),137
hsl(345, 83%, 45%),rgb(209, 19, 67),161
hsl(116, 51%, 42%),rgb(59, 161, 52),71
hsl(177, 64%, 69%),rgb(125, 226, 221),116

Generated: 2026-06-11 02:43:59
```
