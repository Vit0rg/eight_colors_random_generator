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

![#A2057D](https://img.shields.io/badge/-%23A2057D?style=flat&logo=none) ![#B4E77D](https://img.shields.io/badge/-%23B4E77D?style=flat&logo=none) ![#C5AD6C](https://img.shields.io/badge/-%23C5AD6C?style=flat&logo=none) ![#34732A](https://img.shields.io/badge/-%2334732A?style=flat&logo=none) ![#D6E66F](https://img.shields.io/badge/-%23D6E66F?style=flat&logo=none) ![#B22E4F](https://img.shields.io/badge/-%23B22E4F?style=flat&logo=none) ![#24E924](https://img.shields.io/badge/-%2324E924?style=flat&logo=none) ![#A1DB84](https://img.shields.io/badge/-%23A1DB84?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-19 09:44:25
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(314, 93%, 33%) |  rgb(162, 5, 125)  | #A2057D |126 |
| 2 | hsl(89, 69%, 70%)  | rgb(180, 231, 125) | #B4E77D |192 |
| 3 | hsl(44, 44%, 60%)  | rgb(197, 173, 108) | #C5AD6C |180 |
| 4 | hsl(112, 46%, 31%) |  rgb(52, 115, 42)  | #34732A | 65 |
| 5 | hsl(68, 71%, 67%)  | rgb(214, 230, 111) | #D6E66F |186 |
| 6 | hsl(345, 59%, 44%) |  rgb(178, 46, 79)  | #B22E4F |132 |
| 7 | hsl(120, 82%, 53%) |  rgb(36, 233, 36)  | #24E924 | 83 |
| 8 | hsl(100, 55%, 69%) | rgb(161, 219, 132) | #A1DB84 |151 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(314, 93%, 33%),rgb(162, 5, 125),126
hsl(89, 69%, 70%),rgb(180, 231, 125),192
hsl(44, 44%, 60%),rgb(197, 173, 108),180
hsl(112, 46%, 31%),rgb(52, 115, 42),65
hsl(68, 71%, 67%),rgb(214, 230, 111),186
hsl(345, 59%, 44%),rgb(178, 46, 79),132
hsl(120, 82%, 53%),rgb(36, 233, 36),83
hsl(100, 55%, 69%),rgb(161, 219, 132),151

Generated: 2026-07-19 09:44:25
```
