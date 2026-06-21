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

![#D44E93](https://img.shields.io/badge/-%23D44E93?style=flat&logo=none) ![#BCC902](https://img.shields.io/badge/-%23BCC902?style=flat&logo=none) ![#FA3DB7](https://img.shields.io/badge/-%23FA3DB7?style=flat&logo=none) ![#838419](https://img.shields.io/badge/-%23838419?style=flat&logo=none) ![#3B0D90](https://img.shields.io/badge/-%233B0D90?style=flat&logo=none) ![#3F8A37](https://img.shields.io/badge/-%233F8A37?style=flat&logo=none) ![#ED5BF5](https://img.shields.io/badge/-%23ED5BF5?style=flat&logo=none) ![#60FA72](https://img.shields.io/badge/-%2360FA72?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-21 02:48:02
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(329, 61%, 57%) | rgb(212, 78, 147)  | #D44E93 |175 |
| 2 | hsl(64, 98%, 40%)  |  rgb(188, 201, 2)  | #BCC902 |184 |
| 3 | hsl(321, 95%, 61%) | rgb(250, 61, 183)  | #FA3DB7 |206 |
| 4 | hsl(61, 68%, 31%)  | rgb(131, 132, 25)  | #838419 |142 |
| 5 | hsl(261, 83%, 31%) |  rgb(59, 13, 144)  | #3B0D90 | 55 |
| 6 | hsl(114, 43%, 38%) |  rgb(63, 138, 55)  | #3F8A37 | 71 |
| 7 | hsl(297, 89%, 66%) | rgb(237, 91, 245)  | #ED5BF5 |213 |
| 8 | hsl(127, 94%, 68%) | rgb(96, 250, 114)  | #60FA72 |120 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(329, 61%, 57%),rgb(212, 78, 147),175
hsl(64, 98%, 40%),rgb(188, 201, 2),184
hsl(321, 95%, 61%),rgb(250, 61, 183),206
hsl(61, 68%, 31%),rgb(131, 132, 25),142
hsl(261, 83%, 31%),rgb(59, 13, 144),55
hsl(114, 43%, 38%),rgb(63, 138, 55),71
hsl(297, 89%, 66%),rgb(237, 91, 245),213
hsl(127, 94%, 68%),rgb(96, 250, 114),120

Generated: 2026-06-21 02:48:02
```
