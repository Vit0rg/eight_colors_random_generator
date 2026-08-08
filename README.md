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

![#459FC9](https://img.shields.io/badge/-%23459FC9?style=flat&logo=none) ![#D55E3D](https://img.shields.io/badge/-%23D55E3D?style=flat&logo=none) ![#3228BD](https://img.shields.io/badge/-%233228BD?style=flat&logo=none) ![#1CC5E7](https://img.shields.io/badge/-%231CC5E7?style=flat&logo=none) ![#7A029B](https://img.shields.io/badge/-%237A029B?style=flat&logo=none) ![#2A827E](https://img.shields.io/badge/-%232A827E?style=flat&logo=none) ![#7597C6](https://img.shields.io/badge/-%237597C6?style=flat&logo=none) ![#D20D03](https://img.shields.io/badge/-%23D20D03?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-08 00:55:30
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(199, 55%, 53%) | rgb(69, 159, 201)  | #459FC9 | 74 |
| 2 | hsl(13, 65%, 54%)  |  rgb(213, 94, 61)  | #D55E3D |173 |
| 3 | hsl(244, 65%, 45%) |  rgb(50, 40, 189)  | #3228BD | 62 |
| 4 | hsl(190, 81%, 51%) | rgb(28, 197, 231)  | #1CC5E7 | 81 |
| 5 | hsl(287, 97%, 31%) |  rgb(122, 2, 155)  | #7A029B | 91 |
| 6 | hsl(177, 51%, 34%) | rgb(42, 130, 126)  | #2A827E | 72 |
| 7 | hsl(215, 42%, 62%) | rgb(117, 151, 198) | #7597C6 |110 |
| 8 |  hsl(3, 97%, 42%)  |  rgb(210, 13, 3)   | #D20D03 |160 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(199, 55%, 53%),rgb(69, 159, 201),74
hsl(13, 65%, 54%),rgb(213, 94, 61),173
hsl(244, 65%, 45%),rgb(50, 40, 189),62
hsl(190, 81%, 51%),rgb(28, 197, 231),81
hsl(287, 97%, 31%),rgb(122, 2, 155),91
hsl(177, 51%, 34%),rgb(42, 130, 126),72
hsl(215, 42%, 62%),rgb(117, 151, 198),110
hsl(3, 97%, 42%),rgb(210, 13, 3),160

Generated: 2026-08-08 00:55:30
```
