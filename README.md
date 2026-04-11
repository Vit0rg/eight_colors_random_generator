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

![#83288A](https://img.shields.io/badge/-%2383288A?style=flat&logo=none) ![#D89D54](https://img.shields.io/badge/-%23D89D54?style=flat&logo=none) ![#99415D](https://img.shields.io/badge/-%2399415D?style=flat&logo=none) ![#96A22F](https://img.shields.io/badge/-%2396A22F?style=flat&logo=none) ![#8813C2](https://img.shields.io/badge/-%238813C2?style=flat&logo=none) ![#2F447D](https://img.shields.io/badge/-%232F447D?style=flat&logo=none) ![#E7AF4F](https://img.shields.io/badge/-%23E7AF4F?style=flat&logo=none) ![#46C3AE](https://img.shields.io/badge/-%2346C3AE?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-11 16:26:23
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(296, 55%, 35%) | rgb(131, 40, 138)  | #83288A |133 |
| 2 | hsl(33, 63%, 59%)  | rgb(216, 157, 84)  | #D89D54 |180 |
| 3 | hsl(341, 40%, 43%) |  rgb(153, 65, 93)  | #99415D |132 |
| 4 | hsl(66, 55%, 41%)  | rgb(150, 162, 47)  | #96A22F |143 |
| 5 | hsl(280, 82%, 42%) | rgb(136, 19, 194)  | #8813C2 |128 |
| 6 | hsl(224, 45%, 34%) |  rgb(47, 68, 125)  | #2F447D | 60 |
| 7 | hsl(38, 76%, 61%)  | rgb(231, 175, 79)  | #E7AF4F |216 |
| 8 | hsl(170, 51%, 52%) | rgb(70, 195, 174)  | #46C3AE | 79 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(296, 55%, 35%),rgb(131, 40, 138),133
hsl(33, 63%, 59%),rgb(216, 157, 84),180
hsl(341, 40%, 43%),rgb(153, 65, 93),132
hsl(66, 55%, 41%),rgb(150, 162, 47),143
hsl(280, 82%, 42%),rgb(136, 19, 194),128
hsl(224, 45%, 34%),rgb(47, 68, 125),60
hsl(38, 76%, 61%),rgb(231, 175, 79),216
hsl(170, 51%, 52%),rgb(70, 195, 174),79

Generated: 2026-04-11 16:26:23
```
