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

![#29C00B](https://img.shields.io/badge/-%2329C00B?style=flat&logo=none) ![#996F28](https://img.shields.io/badge/-%23996F28?style=flat&logo=none) ![#4E44B5](https://img.shields.io/badge/-%234E44B5?style=flat&logo=none) ![#172CA5](https://img.shields.io/badge/-%23172CA5?style=flat&logo=none) ![#F8A552](https://img.shields.io/badge/-%23F8A552?style=flat&logo=none) ![#CF9777](https://img.shields.io/badge/-%23CF9777?style=flat&logo=none) ![#CF1066](https://img.shields.io/badge/-%23CF1066?style=flat&logo=none) ![#C9FF28](https://img.shields.io/badge/-%23C9FF28?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-13 01:09:03
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(110, 89%, 40%) |  rgb(41, 192, 11)  | #29C00B | 76 |
| 2 | hsl(38, 58%, 38%)  | rgb(153, 111, 40)  | #996F28 |137 |
| 3 | hsl(245, 45%, 49%) |  rgb(78, 68, 181)  | #4E44B5 | 98 |
| 4 | hsl(231, 75%, 37%) |  rgb(23, 44, 165)  | #172CA5 | 25 |
| 5 | hsl(30, 93%, 65%)  | rgb(248, 165, 82)  | #F8A552 |216 |
| 6 | hsl(22, 48%, 64%)  | rgb(207, 151, 119) | #CF9777 |180 |
| 7 | hsl(333, 85%, 44%) | rgb(207, 16, 102)  | #CF1066 |162 |
| 8 | hsl(75, 100%, 58%) | rgb(201, 255, 40)  | #C9FF28 |191 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(110, 89%, 40%),rgb(41, 192, 11),76
hsl(38, 58%, 38%),rgb(153, 111, 40),137
hsl(245, 45%, 49%),rgb(78, 68, 181),98
hsl(231, 75%, 37%),rgb(23, 44, 165),25
hsl(30, 93%, 65%),rgb(248, 165, 82),216
hsl(22, 48%, 64%),rgb(207, 151, 119),180
hsl(333, 85%, 44%),rgb(207, 16, 102),162
hsl(75, 100%, 58%),rgb(201, 255, 40),191

Generated: 2026-08-13 01:09:03
```
