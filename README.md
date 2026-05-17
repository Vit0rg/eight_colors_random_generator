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

![#7EFB36](https://img.shields.io/badge/-%237EFB36?style=flat&logo=none) ![#198F8B](https://img.shields.io/badge/-%23198F8B?style=flat&logo=none) ![#A4419D](https://img.shields.io/badge/-%23A4419D?style=flat&logo=none) ![#327B6A](https://img.shields.io/badge/-%23327B6A?style=flat&logo=none) ![#0C24A1](https://img.shields.io/badge/-%230C24A1?style=flat&logo=none) ![#5DE866](https://img.shields.io/badge/-%235DE866?style=flat&logo=none) ![#A1D416](https://img.shields.io/badge/-%23A1D416?style=flat&logo=none) ![#06AC21](https://img.shields.io/badge/-%2306AC21?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-17 02:09:24
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(98, 97%, 60%)  | rgb(126, 251, 54)  | #7EFB36 |119 |
| 2 | hsl(178, 70%, 33%) | rgb(25, 143, 139)  | #198F8B | 37 |
| 3 | hsl(304, 43%, 45%) | rgb(164, 65, 157)  | #A4419D |133 |
| 4 | hsl(166, 42%, 34%) | rgb(50, 123, 106)  | #327B6A | 66 |
| 5 | hsl(230, 86%, 34%) |  rgb(12, 36, 161)  | #0C24A1 | 25 |
| 6 | hsl(124, 76%, 64%) | rgb(93, 232, 102)  | #5DE866 |120 |
| 7 | hsl(76, 81%, 46%)  | rgb(161, 212, 22)  | #A1D416 |148 |
| 8 | hsl(130, 93%, 35%) |  rgb(6, 172, 33)   | #06AC21 | 35 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(98, 97%, 60%),rgb(126, 251, 54),119
hsl(178, 70%, 33%),rgb(25, 143, 139),37
hsl(304, 43%, 45%),rgb(164, 65, 157),133
hsl(166, 42%, 34%),rgb(50, 123, 106),66
hsl(230, 86%, 34%),rgb(12, 36, 161),25
hsl(124, 76%, 64%),rgb(93, 232, 102),120
hsl(76, 81%, 46%),rgb(161, 212, 22),148
hsl(130, 93%, 35%),rgb(6, 172, 33),35

Generated: 2026-05-17 02:09:24
```
