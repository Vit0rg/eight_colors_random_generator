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

![#AF8921](https://img.shields.io/badge/-%23AF8921?style=flat&logo=none) ![#BD6FC2](https://img.shields.io/badge/-%23BD6FC2?style=flat&logo=none) ![#1FE00A](https://img.shields.io/badge/-%231FE00A?style=flat&logo=none) ![#CE9A6D](https://img.shields.io/badge/-%23CE9A6D?style=flat&logo=none) ![#2930AC](https://img.shields.io/badge/-%232930AC?style=flat&logo=none) ![#478F3C](https://img.shields.io/badge/-%23478F3C?style=flat&logo=none) ![#984219](https://img.shields.io/badge/-%23984219?style=flat&logo=none) ![#ECB573](https://img.shields.io/badge/-%23ECB573?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-10 19:36:16
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(44, 68%, 41%)  | rgb(175, 137, 33)  | #AF8921 |143 |
| 2 | hsl(296, 41%, 60%) | rgb(189, 111, 194) | #BD6FC2 |176 |
| 3 | hsl(114, 91%, 46%) |  rgb(31, 224, 10)  | #1FE00A | 76 |
| 4 | hsl(28, 50%, 62%)  | rgb(206, 154, 109) | #CE9A6D |180 |
| 5 | hsl(237, 61%, 42%) |  rgb(41, 48, 172)  | #2930AC | 61 |
| 6 | hsl(112, 41%, 40%) |  rgb(71, 143, 60)  | #478F3C | 71 |
| 7 | hsl(19, 71%, 35%)  |  rgb(152, 66, 25)  | #984219 |130 |
| 8 | hsl(33, 76%, 69%)  | rgb(236, 181, 115) | #ECB573 |222 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(44, 68%, 41%),rgb(175, 137, 33),143
hsl(296, 41%, 60%),rgb(189, 111, 194),176
hsl(114, 91%, 46%),rgb(31, 224, 10),76
hsl(28, 50%, 62%),rgb(206, 154, 109),180
hsl(237, 61%, 42%),rgb(41, 48, 172),61
hsl(112, 41%, 40%),rgb(71, 143, 60),71
hsl(19, 71%, 35%),rgb(152, 66, 25),130
hsl(33, 76%, 69%),rgb(236, 181, 115),222

Generated: 2026-04-10 19:36:16
```
