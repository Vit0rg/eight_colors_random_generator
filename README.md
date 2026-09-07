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

![#951CA5](https://img.shields.io/badge/-%23951CA5?style=flat&logo=none) ![#B2F047](https://img.shields.io/badge/-%23B2F047?style=flat&logo=none) ![#7CED6D](https://img.shields.io/badge/-%237CED6D?style=flat&logo=none) ![#41F064](https://img.shields.io/badge/-%2341F064?style=flat&logo=none) ![#7EB6D1](https://img.shields.io/badge/-%237EB6D1?style=flat&logo=none) ![#523CFB](https://img.shields.io/badge/-%23523CFB?style=flat&logo=none) ![#C03EBE](https://img.shields.io/badge/-%23C03EBE?style=flat&logo=none) ![#7E281A](https://img.shields.io/badge/-%237E281A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-07 01:57:36
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(293, 71%, 38%) | rgb(149, 28, 165)  | #951CA5 |133 |
| 2 | hsl(82, 85%, 61%)  | rgb(178, 240, 71)  | #B2F047 |155 |
| 3 | hsl(113, 78%, 68%) | rgb(124, 237, 109) | #7CED6D |120 |
| 4 | hsl(132, 86%, 60%) | rgb(65, 240, 100)  | #41F064 | 84 |
| 5 | hsl(200, 48%, 66%) | rgb(126, 182, 209) | #7EB6D1 |116 |
| 6 | hsl(247, 96%, 61%) |  rgb(82, 60, 251)  | #523CFB | 99 |
| 7 | hsl(301, 51%, 50%) | rgb(192, 62, 190)  | #C03EBE |170 |
| 8 |  hsl(8, 65%, 30%)  |  rgb(126, 40, 26)  | #7E281A | 95 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(293, 71%, 38%),rgb(149, 28, 165),133
hsl(82, 85%, 61%),rgb(178, 240, 71),155
hsl(113, 78%, 68%),rgb(124, 237, 109),120
hsl(132, 86%, 60%),rgb(65, 240, 100),84
hsl(200, 48%, 66%),rgb(126, 182, 209),116
hsl(247, 96%, 61%),rgb(82, 60, 251),99
hsl(301, 51%, 50%),rgb(192, 62, 190),170
hsl(8, 65%, 30%),rgb(126, 40, 26),95

Generated: 2026-09-07 01:57:36
```
