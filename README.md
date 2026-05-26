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

![#1B44C9](https://img.shields.io/badge/-%231B44C9?style=flat&logo=none) ![#CEB282](https://img.shields.io/badge/-%23CEB282?style=flat&logo=none) ![#10A24D](https://img.shields.io/badge/-%2310A24D?style=flat&logo=none) ![#4A1FDA](https://img.shields.io/badge/-%234A1FDA?style=flat&logo=none) ![#672CB8](https://img.shields.io/badge/-%23672CB8?style=flat&logo=none) ![#1D6185](https://img.shields.io/badge/-%231D6185?style=flat&logo=none) ![#67C56C](https://img.shields.io/badge/-%2367C56C?style=flat&logo=none) ![#688414](https://img.shields.io/badge/-%23688414?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-26 18:17:09
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(226, 76%, 45%) |  rgb(27, 68, 201)  | #1B44C9 | 62 |
| 2 | hsl(38, 44%, 66%)  | rgb(206, 178, 130) | #CEB282 |181 |
| 3 | hsl(145, 82%, 35%) |  rgb(16, 162, 77)  | #10A24D | 36 |
| 4 | hsl(254, 75%, 49%) |  rgb(74, 31, 218)  | #4A1FDA | 62 |
| 5 | hsl(265, 61%, 45%) | rgb(103, 44, 184)  | #672CB8 | 98 |
| 6 | hsl(201, 64%, 32%) |  rgb(29, 97, 133)  | #1D6185 | 67 |
| 7 | hsl(123, 45%, 59%) | rgb(103, 197, 108) | #67C56C |114 |
| 8 | hsl(75, 73%, 30%)  | rgb(104, 132, 20)  | #688414 |106 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(226, 76%, 45%),rgb(27, 68, 201),62
hsl(38, 44%, 66%),rgb(206, 178, 130),181
hsl(145, 82%, 35%),rgb(16, 162, 77),36
hsl(254, 75%, 49%),rgb(74, 31, 218),62
hsl(265, 61%, 45%),rgb(103, 44, 184),98
hsl(201, 64%, 32%),rgb(29, 97, 133),67
hsl(123, 45%, 59%),rgb(103, 197, 108),114
hsl(75, 73%, 30%),rgb(104, 132, 20),106

Generated: 2026-05-26 18:17:09
```
