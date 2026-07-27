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

![#77D1E3](https://img.shields.io/badge/-%2377D1E3?style=flat&logo=none) ![#2E937B](https://img.shields.io/badge/-%232E937B?style=flat&logo=none) ![#1F2BAC](https://img.shields.io/badge/-%231F2BAC?style=flat&logo=none) ![#AC4354](https://img.shields.io/badge/-%23AC4354?style=flat&logo=none) ![#D2EE20](https://img.shields.io/badge/-%23D2EE20?style=flat&logo=none) ![#C8EE2F](https://img.shields.io/badge/-%23C8EE2F?style=flat&logo=none) ![#97049F](https://img.shields.io/badge/-%2397049F?style=flat&logo=none) ![#5579CD](https://img.shields.io/badge/-%235579CD?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-27 17:35:55
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(190, 66%, 68%) | rgb(119, 209, 227) | #77D1E3 |116 |
| 2 | hsl(166, 52%, 38%) | rgb(46, 147, 123)  | #2E937B | 72 |
| 3 | hsl(235, 69%, 40%) |  rgb(31, 43, 172)  | #1F2BAC | 61 |
| 4 | hsl(350, 44%, 47%) |  rgb(172, 67, 84)  | #AC4354 |132 |
| 5 | hsl(68, 86%, 53%)  | rgb(210, 238, 32)  | #D2EE20 |191 |
| 6 | hsl(72, 85%, 56%)  | rgb(200, 238, 47)  | #C8EE2F |191 |
| 7 | hsl(297, 95%, 32%) |  rgb(151, 4, 159)  | #97049F |127 |
| 8 | hsl(222, 55%, 57%) | rgb(85, 121, 205)  | #5579CD |104 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(190, 66%, 68%),rgb(119, 209, 227),116
hsl(166, 52%, 38%),rgb(46, 147, 123),72
hsl(235, 69%, 40%),rgb(31, 43, 172),61
hsl(350, 44%, 47%),rgb(172, 67, 84),132
hsl(68, 86%, 53%),rgb(210, 238, 32),191
hsl(72, 85%, 56%),rgb(200, 238, 47),191
hsl(297, 95%, 32%),rgb(151, 4, 159),127
hsl(222, 55%, 57%),rgb(85, 121, 205),104

Generated: 2026-07-27 17:35:55
```
