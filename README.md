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

![#58C83C](https://img.shields.io/badge/-%2358C83C?style=flat&logo=none) ![#3687D7](https://img.shields.io/badge/-%233687D7?style=flat&logo=none) ![#67FD62](https://img.shields.io/badge/-%2367FD62?style=flat&logo=none) ![#28A859](https://img.shields.io/badge/-%2328A859?style=flat&logo=none) ![#B83768](https://img.shields.io/badge/-%23B83768?style=flat&logo=none) ![#5BD539](https://img.shields.io/badge/-%235BD539?style=flat&logo=none) ![#DAF00E](https://img.shields.io/badge/-%23DAF00E?style=flat&logo=none) ![#48AD19](https://img.shields.io/badge/-%2348AD19?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-16 02:26:39
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(108, 56%, 51%) |  rgb(88, 200, 60)  | #58C83C |113 |
| 2 | hsl(210, 67%, 53%) | rgb(54, 135, 215)  | #3687D7 | 74 |
| 3 | hsl(118, 98%, 69%) | rgb(103, 253, 98)  | #67FD62 |120 |
| 4 | hsl(143, 61%, 41%) |  rgb(40, 168, 89)  | #28A859 | 72 |
| 5 | hsl(337, 54%, 47%) | rgb(184, 55, 104)  | #B83768 |168 |
| 6 | hsl(107, 65%, 53%) |  rgb(91, 213, 57)  | #5BD539 |113 |
| 7 | hsl(66, 89%, 50%)  | rgb(218, 240, 14)  | #DAF00E |190 |
| 8 | hsl(101, 74%, 39%) |  rgb(72, 173, 25)  | #48AD19 | 70 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(108, 56%, 51%),rgb(88, 200, 60),113
hsl(210, 67%, 53%),rgb(54, 135, 215),74
hsl(118, 98%, 69%),rgb(103, 253, 98),120
hsl(143, 61%, 41%),rgb(40, 168, 89),72
hsl(337, 54%, 47%),rgb(184, 55, 104),168
hsl(107, 65%, 53%),rgb(91, 213, 57),113
hsl(66, 89%, 50%),rgb(218, 240, 14),190
hsl(101, 74%, 39%),rgb(72, 173, 25),70

Generated: 2026-09-16 02:26:39
```
