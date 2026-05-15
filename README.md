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

![#0CAA85](https://img.shields.io/badge/-%230CAA85?style=flat&logo=none) ![#52A116](https://img.shields.io/badge/-%2352A116?style=flat&logo=none) ![#5ED1E8](https://img.shields.io/badge/-%235ED1E8?style=flat&logo=none) ![#A850FB](https://img.shields.io/badge/-%23A850FB?style=flat&logo=none) ![#81A116](https://img.shields.io/badge/-%2381A116?style=flat&logo=none) ![#EB1D24](https://img.shields.io/badge/-%23EB1D24?style=flat&logo=none) ![#15558D](https://img.shields.io/badge/-%2315558D?style=flat&logo=none) ![#4D95C5](https://img.shields.io/badge/-%234D95C5?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-15 17:21:46
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(166, 86%, 36%) | rgb(12, 170, 133)  | #0CAA85 | 37 |
| 2 | hsl(94, 76%, 36%)  |  rgb(82, 161, 22)  | #52A116 |106 |
| 3 | hsl(190, 75%, 64%) | rgb(94, 209, 232)  | #5ED1E8 |117 |
| 4 | hsl(271, 96%, 65%) | rgb(168, 80, 251)  | #A850FB |141 |
| 5 | hsl(74, 76%, 36%)  | rgb(129, 161, 22)  | #81A116 |142 |
| 6 | hsl(358, 84%, 52%) |  rgb(235, 29, 36)  | #EB1D24 |203 |
| 7 | hsl(208, 74%, 32%) |  rgb(21, 85, 141)  | #15558D | 31 |
| 8 | hsl(204, 51%, 54%) | rgb(77, 149, 197)  | #4D95C5 |110 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(166, 86%, 36%),rgb(12, 170, 133),37
hsl(94, 76%, 36%),rgb(82, 161, 22),106
hsl(190, 75%, 64%),rgb(94, 209, 232),117
hsl(271, 96%, 65%),rgb(168, 80, 251),141
hsl(74, 76%, 36%),rgb(129, 161, 22),142
hsl(358, 84%, 52%),rgb(235, 29, 36),203
hsl(208, 74%, 32%),rgb(21, 85, 141),31
hsl(204, 51%, 54%),rgb(77, 149, 197),110

Generated: 2026-05-15 17:21:46
```
