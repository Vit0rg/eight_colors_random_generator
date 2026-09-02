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

![#197F72](https://img.shields.io/badge/-%23197F72?style=flat&logo=none) ![#79343A](https://img.shields.io/badge/-%2379343A?style=flat&logo=none) ![#2B2195](https://img.shields.io/badge/-%232B2195?style=flat&logo=none) ![#4095AE](https://img.shields.io/badge/-%234095AE?style=flat&logo=none) ![#5440D2](https://img.shields.io/badge/-%235440D2?style=flat&logo=none) ![#46EE43](https://img.shields.io/badge/-%2346EE43?style=flat&logo=none) ![#781FAC](https://img.shields.io/badge/-%23781FAC?style=flat&logo=none) ![#2EA86D](https://img.shields.io/badge/-%232EA86D?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-02 12:23:41
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(172, 67%, 30%) | rgb(25, 127, 114)  | #197F72 | 30 |
| 2 | hsl(354, 40%, 34%) |  rgb(121, 52, 58)  | #79343A | 95 |
| 3 | hsl(245, 63%, 36%) |  rgb(43, 33, 149)  | #2B2195 | 61 |
| 4 | hsl(194, 46%, 47%) | rgb(64, 149, 174)  | #4095AE | 73 |
| 5 | hsl(248, 62%, 54%) |  rgb(84, 64, 210)  | #5440D2 | 98 |
| 6 | hsl(119, 84%, 60%) |  rgb(70, 238, 67)  | #46EE43 | 83 |
| 7 | hsl(278, 69%, 40%) | rgb(120, 31, 172)  | #781FAC | 97 |
| 8 | hsl(151, 57%, 42%) | rgb(46, 168, 109)  | #2EA86D | 72 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(172, 67%, 30%),rgb(25, 127, 114),30
hsl(354, 40%, 34%),rgb(121, 52, 58),95
hsl(245, 63%, 36%),rgb(43, 33, 149),61
hsl(194, 46%, 47%),rgb(64, 149, 174),73
hsl(248, 62%, 54%),rgb(84, 64, 210),98
hsl(119, 84%, 60%),rgb(70, 238, 67),83
hsl(278, 69%, 40%),rgb(120, 31, 172),97
hsl(151, 57%, 42%),rgb(46, 168, 109),72

Generated: 2026-09-02 12:23:41
```
