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

![#40CC19](https://img.shields.io/badge/-%2340CC19?style=flat&logo=none) ![#0559DF](https://img.shields.io/badge/-%230559DF?style=flat&logo=none) ![#3FD3AC](https://img.shields.io/badge/-%233FD3AC?style=flat&logo=none) ![#A72F9D](https://img.shields.io/badge/-%23A72F9D?style=flat&logo=none) ![#701687](https://img.shields.io/badge/-%23701687?style=flat&logo=none) ![#BE0209](https://img.shields.io/badge/-%23BE0209?style=flat&logo=none) ![#361088](https://img.shields.io/badge/-%23361088?style=flat&logo=none) ![#BDA465](https://img.shields.io/badge/-%23BDA465?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-12 08:38:08
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(107, 78%, 45%) |  rgb(64, 204, 25)  | #40CC19 | 76 |
| 2 | hsl(217, 95%, 45%) |  rgb(5, 89, 223)   | #0559DF | 32 |
| 3 | hsl(164, 63%, 54%) | rgb(63, 211, 172)  | #3FD3AC | 79 |
| 4 | hsl(305, 56%, 42%) | rgb(167, 47, 157)  | #A72F9D |133 |
| 5 | hsl(288, 71%, 31%) | rgb(112, 22, 135)  | #701687 | 91 |
| 6 | hsl(358, 97%, 38%) |   rgb(190, 2, 9)   | #BE0209 |160 |
| 7 | hsl(259, 78%, 30%) |  rgb(54, 16, 136)  | #361088 | 55 |
| 8 | hsl(43, 40%, 57%)  | rgb(189, 164, 101) | #BDA465 |180 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(107, 78%, 45%),rgb(64, 204, 25),76
hsl(217, 95%, 45%),rgb(5, 89, 223),32
hsl(164, 63%, 54%),rgb(63, 211, 172),79
hsl(305, 56%, 42%),rgb(167, 47, 157),133
hsl(288, 71%, 31%),rgb(112, 22, 135),91
hsl(358, 97%, 38%),rgb(190, 2, 9),160
hsl(259, 78%, 30%),rgb(54, 16, 136),55
hsl(43, 40%, 57%),rgb(189, 164, 101),180

Generated: 2026-04-12 08:38:08
```
