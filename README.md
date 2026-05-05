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

![#C8DD54](https://img.shields.io/badge/-%23C8DD54?style=flat&logo=none) ![#2E961B](https://img.shields.io/badge/-%232E961B?style=flat&logo=none) ![#44D712](https://img.shields.io/badge/-%2344D712?style=flat&logo=none) ![#1E8F5E](https://img.shields.io/badge/-%231E8F5E?style=flat&logo=none) ![#B8A651](https://img.shields.io/badge/-%23B8A651?style=flat&logo=none) ![#AC56DB](https://img.shields.io/badge/-%23AC56DB?style=flat&logo=none) ![#DAFB64](https://img.shields.io/badge/-%23DAFB64?style=flat&logo=none) ![#D51910](https://img.shields.io/badge/-%23D51910?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-05 02:00:07
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(69, 67%, 60%)  | rgb(200, 221, 84)  | #C8DD54 |186 |
| 2 | hsl(111, 69%, 35%) |  rgb(46, 150, 27)  | #2E961B | 71 |
| 3 | hsl(105, 84%, 46%) |  rgb(68, 215, 18)  | #44D712 | 76 |
| 4 | hsl(154, 65%, 34%) |  rgb(30, 143, 94)  | #1E8F5E | 72 |
| 5 | hsl(50, 42%, 52%)  | rgb(184, 166, 81)  | #B8A651 |180 |
| 6 | hsl(279, 65%, 60%) | rgb(172, 86, 219)  | #AC56DB |140 |
| 7 | hsl(73, 95%, 69%)  | rgb(218, 251, 100) | #DAFB64 |192 |
| 8 |  hsl(3, 86%, 45%)  |  rgb(213, 25, 16)  | #D51910 |160 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(69, 67%, 60%),rgb(200, 221, 84),186
hsl(111, 69%, 35%),rgb(46, 150, 27),71
hsl(105, 84%, 46%),rgb(68, 215, 18),76
hsl(154, 65%, 34%),rgb(30, 143, 94),72
hsl(50, 42%, 52%),rgb(184, 166, 81),180
hsl(279, 65%, 60%),rgb(172, 86, 219),140
hsl(73, 95%, 69%),rgb(218, 251, 100),192
hsl(3, 86%, 45%),rgb(213, 25, 16),160

Generated: 2026-05-05 02:00:07
```
