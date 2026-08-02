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

![#42E316](https://img.shields.io/badge/-%2342E316?style=flat&logo=none) ![#80236A](https://img.shields.io/badge/-%2380236A?style=flat&logo=none) ![#B4A81C](https://img.shields.io/badge/-%23B4A81C?style=flat&logo=none) ![#C3C112](https://img.shields.io/badge/-%23C3C112?style=flat&logo=none) ![#7E9329](https://img.shields.io/badge/-%237E9329?style=flat&logo=none) ![#3D86F4](https://img.shields.io/badge/-%233D86F4?style=flat&logo=none) ![#1E888A](https://img.shields.io/badge/-%231E888A?style=flat&logo=none) ![#80E47A](https://img.shields.io/badge/-%2380E47A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-02 16:48:20
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(107, 82%, 49%) |  rgb(66, 227, 22)  | #42E316 | 76 |
| 2 | hsl(314, 57%, 32%) | rgb(128, 35, 106)  | #80236A |132 |
| 3 | hsl(55, 73%, 41%)  | rgb(180, 168, 28)  | #B4A81C |179 |
| 4 | hsl(59, 83%, 42%)  | rgb(195, 193, 18)  | #C3C112 |184 |
| 5 | hsl(72, 56%, 37%)  | rgb(126, 147, 41)  | #7E9329 |107 |
| 6 | hsl(216, 90%, 60%) | rgb(61, 134, 244)  | #3D86F4 | 75 |
| 7 | hsl(181, 64%, 33%) | rgb(30, 136, 138)  | #1E888A | 73 |
| 8 | hsl(117, 67%, 69%) | rgb(128, 228, 122) | #80E47A |150 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(107, 82%, 49%),rgb(66, 227, 22),76
hsl(314, 57%, 32%),rgb(128, 35, 106),132
hsl(55, 73%, 41%),rgb(180, 168, 28),179
hsl(59, 83%, 42%),rgb(195, 193, 18),184
hsl(72, 56%, 37%),rgb(126, 147, 41),107
hsl(216, 90%, 60%),rgb(61, 134, 244),75
hsl(181, 64%, 33%),rgb(30, 136, 138),73
hsl(117, 67%, 69%),rgb(128, 228, 122),150

Generated: 2026-08-02 16:48:20
```
