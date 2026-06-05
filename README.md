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

![#E084B5](https://img.shields.io/badge/-%23E084B5?style=flat&logo=none) ![#CC2FD4](https://img.shields.io/badge/-%23CC2FD4?style=flat&logo=none) ![#70D5A9](https://img.shields.io/badge/-%2370D5A9?style=flat&logo=none) ![#D25A84](https://img.shields.io/badge/-%23D25A84?style=flat&logo=none) ![#11A0F2](https://img.shields.io/badge/-%2311A0F2?style=flat&logo=none) ![#B55D3F](https://img.shields.io/badge/-%23B55D3F?style=flat&logo=none) ![#B4D755](https://img.shields.io/badge/-%23B4D755?style=flat&logo=none) ![#C87B08](https://img.shields.io/badge/-%23C87B08?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-05 17:47:31
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(328, 60%, 70%) | rgb(224, 132, 181) | #E084B5 |182 |
| 2 | hsl(297, 66%, 51%) | rgb(204, 47, 212)  | #CC2FD4 |170 |
| 3 | hsl(154, 55%, 64%) | rgb(112, 213, 169) | #70D5A9 |115 |
| 4 | hsl(339, 57%, 59%) | rgb(210, 90, 132)  | #D25A84 |175 |
| 5 | hsl(202, 90%, 51%) | rgb(17, 160, 242)  | #11A0F2 | 39 |
| 6 | hsl(15, 48%, 48%)  |  rgb(181, 93, 63)  | #B55D3F |173 |
| 7 | hsl(76, 62%, 59%)  | rgb(180, 215, 85)  | #B4D755 |186 |
| 8 | hsl(36, 92%, 41%)  |  rgb(200, 123, 8)  | #C87B08 |172 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(328, 60%, 70%),rgb(224, 132, 181),182
hsl(297, 66%, 51%),rgb(204, 47, 212),170
hsl(154, 55%, 64%),rgb(112, 213, 169),115
hsl(339, 57%, 59%),rgb(210, 90, 132),175
hsl(202, 90%, 51%),rgb(17, 160, 242),39
hsl(15, 48%, 48%),rgb(181, 93, 63),173
hsl(76, 62%, 59%),rgb(180, 215, 85),186
hsl(36, 92%, 41%),rgb(200, 123, 8),172

Generated: 2026-06-05 17:47:31
```
