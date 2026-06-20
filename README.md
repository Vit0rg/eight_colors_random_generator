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

![#90B2D4](https://img.shields.io/badge/-%2390B2D4?style=flat&logo=none) ![#BF01D5](https://img.shields.io/badge/-%23BF01D5?style=flat&logo=none) ![#B28B3D](https://img.shields.io/badge/-%23B28B3D?style=flat&logo=none) ![#C766DB](https://img.shields.io/badge/-%23C766DB?style=flat&logo=none) ![#E99F71](https://img.shields.io/badge/-%23E99F71?style=flat&logo=none) ![#47C67A](https://img.shields.io/badge/-%2347C67A?style=flat&logo=none) ![#0AAD40](https://img.shields.io/badge/-%230AAD40?style=flat&logo=none) ![#C62724](https://img.shields.io/badge/-%23C62724?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-20 10:26:26
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(210, 44%, 70%) | rgb(144, 178, 212) | #90B2D4 |146 |
| 2 | hsl(294, 99%, 42%) |  rgb(191, 1, 213)  | #BF01D5 |164 |
| 3 | hsl(40, 49%, 47%)  | rgb(178, 139, 61)  | #B28B3D |143 |
| 4 | hsl(290, 62%, 63%) | rgb(199, 102, 219) | #C766DB |176 |
| 5 | hsl(23, 74%, 68%)  | rgb(233, 159, 113) | #E99F71 |216 |
| 6 | hsl(144, 53%, 53%) | rgb(71, 198, 122)  | #47C67A | 78 |
| 7 | hsl(140, 89%, 36%) |  rgb(10, 173, 64)  | #0AAD40 | 35 |
| 8 |  hsl(1, 69%, 46%)  |  rgb(198, 39, 36)  | #C62724 |167 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(210, 44%, 70%),rgb(144, 178, 212),146
hsl(294, 99%, 42%),rgb(191, 1, 213),164
hsl(40, 49%, 47%),rgb(178, 139, 61),143
hsl(290, 62%, 63%),rgb(199, 102, 219),176
hsl(23, 74%, 68%),rgb(233, 159, 113),216
hsl(144, 53%, 53%),rgb(71, 198, 122),78
hsl(140, 89%, 36%),rgb(10, 173, 64),35
hsl(1, 69%, 46%),rgb(198, 39, 36),167

Generated: 2026-06-20 10:26:26
```
