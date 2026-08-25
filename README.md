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

![#89571F](https://img.shields.io/badge/-%2389571F?style=flat&logo=none) ![#89371A](https://img.shields.io/badge/-%2389371A?style=flat&logo=none) ![#8F5722](https://img.shields.io/badge/-%238F5722?style=flat&logo=none) ![#89301F](https://img.shields.io/badge/-%2389301F?style=flat&logo=none) ![#2AFCE7](https://img.shields.io/badge/-%232AFCE7?style=flat&logo=none) ![#1955BC](https://img.shields.io/badge/-%231955BC?style=flat&logo=none) ![#550CB5](https://img.shields.io/badge/-%23550CB5?style=flat&logo=none) ![#DDB468](https://img.shields.io/badge/-%23DDB468?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-25 08:30:31
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(32, 63%, 33%)  |  rgb(137, 87, 31)  | #89571F |137 |
| 2 | hsl(16, 68%, 32%)  |  rgb(137, 55, 26)  | #89371A |131 |
| 3 | hsl(29, 61%, 35%)  |  rgb(143, 87, 34)  | #8F5722 |137 |
| 4 | hsl(10, 63%, 33%)  |  rgb(137, 48, 31)  | #89301F |131 |
| 5 | hsl(174, 98%, 58%) | rgb(42, 252, 231)  | #2AFCE7 | 87 |
| 6 | hsl(218, 76%, 42%) |  rgb(25, 85, 188)  | #1955BC | 32 |
| 7 | hsl(266, 87%, 38%) |  rgb(85, 12, 181)  | #550CB5 | 92 |
| 8 | hsl(39, 64%, 64%)  | rgb(221, 180, 104) | #DDB468 |186 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(32, 63%, 33%),rgb(137, 87, 31),137
hsl(16, 68%, 32%),rgb(137, 55, 26),131
hsl(29, 61%, 35%),rgb(143, 87, 34),137
hsl(10, 63%, 33%),rgb(137, 48, 31),131
hsl(174, 98%, 58%),rgb(42, 252, 231),87
hsl(218, 76%, 42%),rgb(25, 85, 188),32
hsl(266, 87%, 38%),rgb(85, 12, 181),92
hsl(39, 64%, 64%),rgb(221, 180, 104),186

Generated: 2026-08-25 08:30:31
```
