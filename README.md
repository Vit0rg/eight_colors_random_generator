# Eight Colors Random Generator

Generates 8 random colors with HSL, RGB, Hex, and ANSI values every 4 hours via GitHub Actions.

## How It Works

A shell script (`generate_colors.sh`) generates 8 random colors by:

1. Picking random HSL values (H: 0–359, S: 40–100%, L: 30–70%)
2. Converting HSL → RGB using `awk`
3. Calculating the closest ANSI 256 color code

## Output

Each run creates a file named `MM_DD_YYYY_HH_MM_colors` containing:

- **Table** — centered columns showing Num, HSL, RGB, Hex, and ANSI
- **CSV** — machine-readable list of HSL, RGB, and ANSI values

The README is automatically updated with the latest palette on each run.

## Usage

### Manual

```bash
bash generate_colors.sh
```

### Automatic (GitHub Actions)

The workflow runs every 4 hours and commits the output file to the repository.

To trigger manually: **Actions → Generate Eight Colors → Run workflow**.

## Files

| File | Description |
|---|---|
| `generate_colors.sh` | Main script |
| `*_*_*_*_*_colors` | Generated color files |
| `.github/workflows/generate_colors.yml` | CI workflow |




## Latest Palette

![#05DA70](https://img.shields.io/badge/-%2305DA70?style=flat&logo=none) ![#B33432](https://img.shields.io/badge/-%23B33432?style=flat&logo=none) ![#1789AF](https://img.shields.io/badge/-%231789AF?style=flat&logo=none) ![#3E3BFC](https://img.shields.io/badge/-%233E3BFC?style=flat&logo=none) ![#39CA2F](https://img.shields.io/badge/-%2339CA2F?style=flat&logo=none) ![#101BBB](https://img.shields.io/badge/-%23101BBB?style=flat&logo=none) ![#2DE17E](https://img.shields.io/badge/-%232DE17E?style=flat&logo=none) ![#FF05F2](https://img.shields.io/badge/-%23FF05F2?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-09 20:40:17
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(150, 95%, 44%) |  rgb(5, 218, 112)  | #05DA70 | 42 |
| 2 |  hsl(1, 56%, 45%)  |  rgb(179, 52, 50)  | #B33432 |131 |
| 3 | hsl(195, 76%, 39%) | rgb(23, 137, 175)  | #1789AF | 37 |
| 4 | hsl(241, 97%, 61%) |  rgb(62, 59, 252)  | #3E3BFC | 63 |
| 5 | hsl(116, 62%, 49%) |  rgb(57, 202, 47)  | #39CA2F | 77 |
| 6 | hsl(236, 84%, 40%) |  rgb(16, 27, 187)  | #101BBB | 26 |
| 7 | hsl(147, 75%, 53%) | rgb(45, 225, 126)  | #2DE17E | 78 |
| 8 |hsl(303, 100%, 51%) |  rgb(255, 5, 242)  | #FF05F2 |201 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(150, 95%, 44%),rgb(5, 218, 112),42
hsl(1, 56%, 45%),rgb(179, 52, 50),131
hsl(195, 76%, 39%),rgb(23, 137, 175),37
hsl(241, 97%, 61%),rgb(62, 59, 252),63
hsl(116, 62%, 49%),rgb(57, 202, 47),77
hsl(236, 84%, 40%),rgb(16, 27, 187),26
hsl(147, 75%, 53%),rgb(45, 225, 126),78
hsl(303, 100%, 51%),rgb(255, 5, 242),201

Generated: 2026-04-09 20:40:17
```
