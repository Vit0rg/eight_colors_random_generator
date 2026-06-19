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

![#779FCA](https://img.shields.io/badge/-%23779FCA?style=flat&logo=none) ![#5D8518](https://img.shields.io/badge/-%235D8518?style=flat&logo=none) ![#7A6333](https://img.shields.io/badge/-%237A6333?style=flat&logo=none) ![#DA17DD](https://img.shields.io/badge/-%23DA17DD?style=flat&logo=none) ![#942D62](https://img.shields.io/badge/-%23942D62?style=flat&logo=none) ![#C35F50](https://img.shields.io/badge/-%23C35F50?style=flat&logo=none) ![#8510F3](https://img.shields.io/badge/-%238510F3?style=flat&logo=none) ![#06EE89](https://img.shields.io/badge/-%2306EE89?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-19 03:26:14
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(211, 44%, 63%) | rgb(119, 159, 202) | #779FCA |110 |
| 2 | hsl(82, 69%, 31%)  |  rgb(93, 133, 24)  | #5D8518 |106 |
| 3 | hsl(41, 41%, 34%)  |  rgb(122, 99, 51)  | #7A6333 |101 |
| 4 | hsl(299, 81%, 48%) | rgb(218, 23, 221)  | #DA17DD |164 |
| 5 | hsl(329, 53%, 38%) |  rgb(148, 45, 98)  | #942D62 |132 |
| 6 |  hsl(8, 49%, 54%)  |  rgb(195, 95, 80)  | #C35F50 |174 |
| 7 | hsl(271, 91%, 51%) | rgb(133, 16, 243)  | #8510F3 |129 |
| 8 | hsl(154, 95%, 48%) |  rgb(6, 238, 137)  | #06EE89 | 49 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(211, 44%, 63%),rgb(119, 159, 202),110
hsl(82, 69%, 31%),rgb(93, 133, 24),106
hsl(41, 41%, 34%),rgb(122, 99, 51),101
hsl(299, 81%, 48%),rgb(218, 23, 221),164
hsl(329, 53%, 38%),rgb(148, 45, 98),132
hsl(8, 49%, 54%),rgb(195, 95, 80),174
hsl(271, 91%, 51%),rgb(133, 16, 243),129
hsl(154, 95%, 48%),rgb(6, 238, 137),49

Generated: 2026-06-19 03:26:14
```
