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

![#D906CF](https://img.shields.io/badge/-%23D906CF?style=flat&logo=none) ![#6D1687](https://img.shields.io/badge/-%236D1687?style=flat&logo=none) ![#CBE109](https://img.shields.io/badge/-%23CBE109?style=flat&logo=none) ![#B37003](https://img.shields.io/badge/-%23B37003?style=flat&logo=none) ![#3F909B](https://img.shields.io/badge/-%233F909B?style=flat&logo=none) ![#681A9C](https://img.shields.io/badge/-%23681A9C?style=flat&logo=none) ![#9BFA3D](https://img.shields.io/badge/-%239BFA3D?style=flat&logo=none) ![#BB4878](https://img.shields.io/badge/-%23BB4878?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-20 16:22:37
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(303, 94%, 44%) |  rgb(217, 6, 207)  | #D906CF |164 |
| 2 | hsl(286, 72%, 31%) | rgb(109, 22, 135)  | #6D1687 | 91 |
| 3 | hsl(66, 92%, 46%)  |  rgb(203, 225, 9)  | #CBE109 |184 |
| 4 | hsl(37, 96%, 36%)  |  rgb(179, 112, 3)  | #B37003 |136 |
| 5 | hsl(187, 42%, 43%) | rgb(63, 144, 155)  | #3F909B | 73 |
| 6 | hsl(276, 71%, 36%) | rgb(104, 26, 156)  | #681A9C | 97 |
| 7 | hsl(90, 95%, 61%)  | rgb(155, 250, 61)  | #9BFA3D |155 |
| 8 | hsl(335, 46%, 51%) | rgb(187, 72, 120)  | #BB4878 |168 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(303, 94%, 44%),rgb(217, 6, 207),164
hsl(286, 72%, 31%),rgb(109, 22, 135),91
hsl(66, 92%, 46%),rgb(203, 225, 9),184
hsl(37, 96%, 36%),rgb(179, 112, 3),136
hsl(187, 42%, 43%),rgb(63, 144, 155),73
hsl(276, 71%, 36%),rgb(104, 26, 156),97
hsl(90, 95%, 61%),rgb(155, 250, 61),155
hsl(335, 46%, 51%),rgb(187, 72, 120),168

Generated: 2026-08-20 16:22:37
```
