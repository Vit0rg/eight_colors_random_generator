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

![#24B70A](https://img.shields.io/badge/-%2324B70A?style=flat&logo=none) ![#CC89AA](https://img.shields.io/badge/-%23CC89AA?style=flat&logo=none) ![#6818D1](https://img.shields.io/badge/-%236818D1?style=flat&logo=none) ![#D7E470](https://img.shields.io/badge/-%23D7E470?style=flat&logo=none) ![#3D48B2](https://img.shields.io/badge/-%233D48B2?style=flat&logo=none) ![#D83B9E](https://img.shields.io/badge/-%23D83B9E?style=flat&logo=none) ![#BE710D](https://img.shields.io/badge/-%23BE710D?style=flat&logo=none) ![#4A62CD](https://img.shields.io/badge/-%234A62CD?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-03 02:51:44
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(111, 89%, 38%) |  rgb(36, 183, 10)  | #24B70A | 76 |
| 2 | hsl(330, 40%, 67%) | rgb(204, 137, 170) | #CC89AA |181 |
| 3 | hsl(266, 79%, 46%) | rgb(104, 24, 209)  | #6818D1 | 92 |
| 4 | hsl(67, 69%, 67%)  | rgb(215, 228, 112) | #D7E470 |186 |
| 5 | hsl(234, 49%, 47%) |  rgb(61, 72, 178)  | #3D48B2 | 61 |
| 6 | hsl(322, 67%, 54%) | rgb(216, 59, 158)  | #D83B9E |169 |
| 7 | hsl(34, 87%, 40%)  | rgb(190, 113, 13)  | #BE710D |172 |
| 8 | hsl(229, 57%, 55%) |  rgb(74, 98, 205)  | #4A62CD | 68 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(111, 89%, 38%),rgb(36, 183, 10),76
hsl(330, 40%, 67%),rgb(204, 137, 170),181
hsl(266, 79%, 46%),rgb(104, 24, 209),92
hsl(67, 69%, 67%),rgb(215, 228, 112),186
hsl(234, 49%, 47%),rgb(61, 72, 178),61
hsl(322, 67%, 54%),rgb(216, 59, 158),169
hsl(34, 87%, 40%),rgb(190, 113, 13),172
hsl(229, 57%, 55%),rgb(74, 98, 205),68

Generated: 2026-06-03 02:51:44
```
