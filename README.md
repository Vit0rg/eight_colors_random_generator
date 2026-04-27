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

![#29988E](https://img.shields.io/badge/-%2329988E?style=flat&logo=none) ![#23AD8F](https://img.shields.io/badge/-%2323AD8F?style=flat&logo=none) ![#4244A7](https://img.shields.io/badge/-%234244A7?style=flat&logo=none) ![#7D562A](https://img.shields.io/badge/-%237D562A?style=flat&logo=none) ![#80FA65](https://img.shields.io/badge/-%2380FA65?style=flat&logo=none) ![#0AA759](https://img.shields.io/badge/-%230AA759?style=flat&logo=none) ![#92112D](https://img.shields.io/badge/-%2392112D?style=flat&logo=none) ![#0FA74A](https://img.shields.io/badge/-%230FA74A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-27 01:56:12
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(175, 57%, 38%) | rgb(41, 152, 142)  | #29988E | 73 |
| 2 | hsl(167, 66%, 41%) | rgb(35, 173, 143)  | #23AD8F | 73 |
| 3 | hsl(239, 43%, 46%) |  rgb(66, 68, 167)  | #4244A7 | 61 |
| 4 | hsl(32, 49%, 33%)  |  rgb(125, 86, 42)  | #7D562A |101 |
| 5 | hsl(109, 94%, 69%) | rgb(128, 250, 101) | #80FA65 |156 |
| 6 | hsl(150, 88%, 35%) |  rgb(10, 167, 89)  | #0AA759 | 36 |
| 7 | hsl(347, 79%, 32%) |  rgb(146, 17, 45)  | #92112D |125 |
| 8 | hsl(143, 83%, 36%) |  rgb(15, 167, 74)  | #0FA74A | 35 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(175, 57%, 38%),rgb(41, 152, 142),73
hsl(167, 66%, 41%),rgb(35, 173, 143),73
hsl(239, 43%, 46%),rgb(66, 68, 167),61
hsl(32, 49%, 33%),rgb(125, 86, 42),101
hsl(109, 94%, 69%),rgb(128, 250, 101),156
hsl(150, 88%, 35%),rgb(10, 167, 89),36
hsl(347, 79%, 32%),rgb(146, 17, 45),125
hsl(143, 83%, 36%),rgb(15, 167, 74),35

Generated: 2026-04-27 01:56:12
```
