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

![#FA6579](https://img.shields.io/badge/-%23FA6579?style=flat&logo=none) ![#9E7FCC](https://img.shields.io/badge/-%239E7FCC?style=flat&logo=none) ![#30E2DA](https://img.shields.io/badge/-%2330E2DA?style=flat&logo=none) ![#33AB20](https://img.shields.io/badge/-%2333AB20?style=flat&logo=none) ![#7DE2E7](https://img.shields.io/badge/-%237DE2E7?style=flat&logo=none) ![#E1B883](https://img.shields.io/badge/-%23E1B883?style=flat&logo=none) ![#D64C73](https://img.shields.io/badge/-%23D64C73?style=flat&logo=none) ![#6821E2](https://img.shields.io/badge/-%236821E2?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-11 08:32:34
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(352, 94%, 69%) | rgb(250, 101, 121) | #FA6579 |210 |
| 2 | hsl(264, 43%, 65%) | rgb(158, 127, 204) | #9E7FCC |140 |
| 3 | hsl(177, 76%, 54%) | rgb(48, 226, 218)  | #30E2DA | 80 |
| 4 | hsl(112, 68%, 40%) |  rgb(51, 171, 32)  | #33AB20 | 71 |
| 5 | hsl(183, 69%, 70%) | rgb(125, 226, 231) | #7DE2E7 |117 |
| 6 | hsl(34, 61%, 70%)  | rgb(225, 184, 131) | #E1B883 |187 |
| 7 | hsl(343, 63%, 57%) | rgb(214, 76, 115)  | #D64C73 |168 |
| 8 | hsl(262, 77%, 51%) | rgb(104, 33, 226)  | #6821E2 | 98 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(352, 94%, 69%),rgb(250, 101, 121),210
hsl(264, 43%, 65%),rgb(158, 127, 204),140
hsl(177, 76%, 54%),rgb(48, 226, 218),80
hsl(112, 68%, 40%),rgb(51, 171, 32),71
hsl(183, 69%, 70%),rgb(125, 226, 231),117
hsl(34, 61%, 70%),rgb(225, 184, 131),187
hsl(343, 63%, 57%),rgb(214, 76, 115),168
hsl(262, 77%, 51%),rgb(104, 33, 226),98

Generated: 2026-04-11 08:32:34
```
