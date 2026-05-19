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

![#DD8286](https://img.shields.io/badge/-%23DD8286?style=flat&logo=none) ![#DBEC6E](https://img.shields.io/badge/-%23DBEC6E?style=flat&logo=none) ![#FBC94B](https://img.shields.io/badge/-%23FBC94B?style=flat&logo=none) ![#388977](https://img.shields.io/badge/-%23388977?style=flat&logo=none) ![#EAB27A](https://img.shields.io/badge/-%23EAB27A?style=flat&logo=none) ![#4AAB16](https://img.shields.io/badge/-%234AAB16?style=flat&logo=none) ![#C5FF19](https://img.shields.io/badge/-%23C5FF19?style=flat&logo=none) ![#D6A784](https://img.shields.io/badge/-%23D6A784?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-19 10:54:00
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(357, 58%, 69%) | rgb(221, 130, 134) | #DD8286 |181 |
| 2 | hsl(68, 77%, 68%)  | rgb(219, 236, 110) | #DBEC6E |192 |
| 3 | hsl(43, 96%, 64%)  | rgb(251, 201, 75)  | #FBC94B |221 |
| 4 | hsl(167, 42%, 38%) | rgb(56, 137, 119)  | #388977 | 72 |
| 5 | hsl(30, 73%, 70%)  | rgb(234, 178, 122) | #EAB27A |216 |
| 6 | hsl(99, 77%, 38%)  |  rgb(74, 171, 22)  | #4AAB16 | 70 |
| 7 | hsl(75, 100%, 55%) | rgb(197, 255, 25)  | #C5FF19 |190 |
| 8 | hsl(26, 50%, 68%)  | rgb(214, 167, 132) | #D6A784 |181 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(357, 58%, 69%),rgb(221, 130, 134),181
hsl(68, 77%, 68%),rgb(219, 236, 110),192
hsl(43, 96%, 64%),rgb(251, 201, 75),221
hsl(167, 42%, 38%),rgb(56, 137, 119),72
hsl(30, 73%, 70%),rgb(234, 178, 122),216
hsl(99, 77%, 38%),rgb(74, 171, 22),70
hsl(75, 100%, 55%),rgb(197, 255, 25),190
hsl(26, 50%, 68%),rgb(214, 167, 132),181

Generated: 2026-05-19 10:54:00
```
