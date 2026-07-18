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

![#F95E56](https://img.shields.io/badge/-%23F95E56?style=flat&logo=none) ![#C70E61](https://img.shields.io/badge/-%23C70E61?style=flat&logo=none) ![#B8DF85](https://img.shields.io/badge/-%23B8DF85?style=flat&logo=none) ![#39D9CC](https://img.shields.io/badge/-%2339D9CC?style=flat&logo=none) ![#EB09AB](https://img.shields.io/badge/-%23EB09AB?style=flat&logo=none) ![#BC68E3](https://img.shields.io/badge/-%23BC68E3?style=flat&logo=none) ![#58F8E8](https://img.shields.io/badge/-%2358F8E8?style=flat&logo=none) ![#DD59A8](https://img.shields.io/badge/-%23DD59A8?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-18 01:40:34
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 |  hsl(3, 94%, 66%)  |  rgb(249, 94, 86)  | #F95E56 |210 |
| 2 | hsl(333, 86%, 42%) |  rgb(199, 14, 97)  | #C70E61 |162 |
| 3 | hsl(86, 59%, 70%)  | rgb(184, 223, 133) | #B8DF85 |187 |
| 4 | hsl(175, 68%, 54%) | rgb(57, 217, 204)  | #39D9CC | 80 |
| 5 | hsl(317, 92%, 48%) |  rgb(235, 9, 171)  | #EB09AB |199 |
| 6 | hsl(281, 69%, 65%) | rgb(188, 104, 227) | #BC68E3 |176 |
| 7 | hsl(174, 92%, 66%) | rgb(88, 248, 232)  | #58F8E8 |123 |
| 8 | hsl(324, 66%, 61%) | rgb(221, 89, 168)  | #DD59A8 |175 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(3, 94%, 66%),rgb(249, 94, 86),210
hsl(333, 86%, 42%),rgb(199, 14, 97),162
hsl(86, 59%, 70%),rgb(184, 223, 133),187
hsl(175, 68%, 54%),rgb(57, 217, 204),80
hsl(317, 92%, 48%),rgb(235, 9, 171),199
hsl(281, 69%, 65%),rgb(188, 104, 227),176
hsl(174, 92%, 66%),rgb(88, 248, 232),123
hsl(324, 66%, 61%),rgb(221, 89, 168),175

Generated: 2026-07-18 01:40:34
```
