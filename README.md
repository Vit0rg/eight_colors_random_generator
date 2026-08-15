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

![#81951D](https://img.shields.io/badge/-%2381951D?style=flat&logo=none) ![#B875D5](https://img.shields.io/badge/-%23B875D5?style=flat&logo=none) ![#C10F83](https://img.shields.io/badge/-%23C10F83?style=flat&logo=none) ![#A30571](https://img.shields.io/badge/-%23A30571?style=flat&logo=none) ![#91A6D3](https://img.shields.io/badge/-%2391A6D3?style=flat&logo=none) ![#AD6838](https://img.shields.io/badge/-%23AD6838?style=flat&logo=none) ![#5BFF71](https://img.shields.io/badge/-%235BFF71?style=flat&logo=none) ![#935A29](https://img.shields.io/badge/-%23935A29?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-15 08:16:04
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(70, 67%, 35%)  | rgb(129, 149, 29)  | #81951D |143 |
| 2 | hsl(282, 54%, 65%) | rgb(184, 117, 213) | #B875D5 |176 |
| 3 | hsl(321, 85%, 41%) | rgb(193, 15, 131)  | #C10F83 |163 |
| 4 | hsl(319, 94%, 33%) |  rgb(163, 5, 113)  | #A30571 |126 |
| 5 | hsl(221, 43%, 70%) | rgb(145, 166, 211) | #91A6D3 |146 |
| 6 | hsl(25, 51%, 45%)  | rgb(173, 104, 56)  | #AD6838 |137 |
| 7 |hsl(128, 100%, 68%) | rgb(91, 255, 113)  | #5BFF71 |120 |
| 8 | hsl(28, 56%, 37%)  |  rgb(147, 90, 41)  | #935A29 |137 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(70, 67%, 35%),rgb(129, 149, 29),143
hsl(282, 54%, 65%),rgb(184, 117, 213),176
hsl(321, 85%, 41%),rgb(193, 15, 131),163
hsl(319, 94%, 33%),rgb(163, 5, 113),126
hsl(221, 43%, 70%),rgb(145, 166, 211),146
hsl(25, 51%, 45%),rgb(173, 104, 56),137
hsl(128, 100%, 68%),rgb(91, 255, 113),120
hsl(28, 56%, 37%),rgb(147, 90, 41),137

Generated: 2026-08-15 08:16:04
```
