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

![#0BB171](https://img.shields.io/badge/-%230BB171?style=flat&logo=none) ![#CA71A5](https://img.shields.io/badge/-%23CA71A5?style=flat&logo=none) ![#65BADC](https://img.shields.io/badge/-%2365BADC?style=flat&logo=none) ![#EF8E70](https://img.shields.io/badge/-%23EF8E70?style=flat&logo=none) ![#3B229E](https://img.shields.io/badge/-%233B229E?style=flat&logo=none) ![#398D64](https://img.shields.io/badge/-%23398D64?style=flat&logo=none) ![#BA0749](https://img.shields.io/badge/-%23BA0749?style=flat&logo=none) ![#668CF4](https://img.shields.io/badge/-%23668CF4?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-24 16:24:12
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(157, 88%, 37%) | rgb(11, 177, 113)  | #0BB171 | 36 |
| 2 | hsl(325, 46%, 62%) | rgb(202, 113, 165) | #CA71A5 |175 |
| 3 | hsl(197, 63%, 63%) | rgb(101, 186, 220) | #65BADC |116 |
| 4 | hsl(14, 80%, 69%)  | rgb(239, 142, 112) | #EF8E70 |216 |
| 5 | hsl(252, 64%, 38%) |  rgb(59, 34, 158)  | #3B229E | 61 |
| 6 | hsl(151, 42%, 39%) | rgb(57, 141, 100)  | #398D64 | 72 |
| 7 | hsl(338, 92%, 38%) |  rgb(186, 7, 73)   | #BA0749 |161 |
| 8 | hsl(224, 87%, 68%) | rgb(102, 140, 244) | #668CF4 |111 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(157, 88%, 37%),rgb(11, 177, 113),36
hsl(325, 46%, 62%),rgb(202, 113, 165),175
hsl(197, 63%, 63%),rgb(101, 186, 220),116
hsl(14, 80%, 69%),rgb(239, 142, 112),216
hsl(252, 64%, 38%),rgb(59, 34, 158),61
hsl(151, 42%, 39%),rgb(57, 141, 100),72
hsl(338, 92%, 38%),rgb(186, 7, 73),161
hsl(224, 87%, 68%),rgb(102, 140, 244),111

Generated: 2026-08-24 16:24:12
```
