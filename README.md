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

![#801F84](https://img.shields.io/badge/-%23801F84?style=flat&logo=none) ![#292DA2](https://img.shields.io/badge/-%23292DA2?style=flat&logo=none) ![#E76044](https://img.shields.io/badge/-%23E76044?style=flat&logo=none) ![#54D884](https://img.shields.io/badge/-%2354D884?style=flat&logo=none) ![#846533](https://img.shields.io/badge/-%23846533?style=flat&logo=none) ![#350E8F](https://img.shields.io/badge/-%23350E8F?style=flat&logo=none) ![#00D679](https://img.shields.io/badge/-%2300D679?style=flat&logo=none) ![#D0CA70](https://img.shields.io/badge/-%23D0CA70?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-03 12:30:12
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(298, 62%, 32%) | rgb(128, 31, 132)  | #801F84 |133 |
| 2 | hsl(238, 59%, 40%) |  rgb(41, 45, 162)  | #292DA2 | 61 |
| 3 | hsl(10, 78%, 59%)  |  rgb(231, 96, 68)  | #E76044 |209 |
| 4 | hsl(142, 63%, 59%) | rgb(84, 216, 132)  | #54D884 |115 |
| 5 | hsl(37, 44%, 36%)  | rgb(132, 101, 51)  | #846533 |137 |
| 6 | hsl(258, 82%, 31%) |  rgb(53, 14, 143)  | #350E8F | 55 |
| 7 |hsl(154, 100%, 42%) |  rgb(0, 214, 121)  | #00D679 | 42 |
| 8 | hsl(56, 51%, 63%)  | rgb(208, 202, 112) | #D0CA70 |186 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(298, 62%, 32%),rgb(128, 31, 132),133
hsl(238, 59%, 40%),rgb(41, 45, 162),61
hsl(10, 78%, 59%),rgb(231, 96, 68),209
hsl(142, 63%, 59%),rgb(84, 216, 132),115
hsl(37, 44%, 36%),rgb(132, 101, 51),137
hsl(258, 82%, 31%),rgb(53, 14, 143),55
hsl(154, 100%, 42%),rgb(0, 214, 121),42
hsl(56, 51%, 63%),rgb(208, 202, 112),186

Generated: 2026-06-03 12:30:12
```
