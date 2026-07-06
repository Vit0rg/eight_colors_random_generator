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

![#D577E8](https://img.shields.io/badge/-%23D577E8?style=flat&logo=none) ![#262299](https://img.shields.io/badge/-%23262299?style=flat&logo=none) ![#1CD87A](https://img.shields.io/badge/-%231CD87A?style=flat&logo=none) ![#A52154](https://img.shields.io/badge/-%23A52154?style=flat&logo=none) ![#40AA93](https://img.shields.io/badge/-%2340AA93?style=flat&logo=none) ![#CD58F8](https://img.shields.io/badge/-%23CD58F8?style=flat&logo=none) ![#23C790](https://img.shields.io/badge/-%2323C790?style=flat&logo=none) ![#68DDD8](https://img.shields.io/badge/-%2368DDD8?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-06 18:04:44
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(290, 72%, 69%) | rgb(213, 119, 232) | #D577E8 |177 |
| 2 | hsl(242, 63%, 37%) |  rgb(38, 34, 153)  | #262299 | 61 |
| 3 | hsl(150, 77%, 48%) | rgb(28, 216, 122)  | #1CD87A | 78 |
| 4 | hsl(337, 66%, 39%) |  rgb(165, 33, 84)  | #A52154 |132 |
| 5 | hsl(167, 45%, 46%) | rgb(64, 170, 147)  | #40AA93 | 73 |
| 6 | hsl(284, 92%, 66%) | rgb(205, 88, 248)  | #CD58F8 |177 |
| 7 | hsl(160, 70%, 46%) | rgb(35, 199, 144)  | #23C790 | 79 |
| 8 | hsl(177, 64%, 64%) | rgb(104, 221, 216) | #68DDD8 |116 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(290, 72%, 69%),rgb(213, 119, 232),177
hsl(242, 63%, 37%),rgb(38, 34, 153),61
hsl(150, 77%, 48%),rgb(28, 216, 122),78
hsl(337, 66%, 39%),rgb(165, 33, 84),132
hsl(167, 45%, 46%),rgb(64, 170, 147),73
hsl(284, 92%, 66%),rgb(205, 88, 248),177
hsl(160, 70%, 46%),rgb(35, 199, 144),79
hsl(177, 64%, 64%),rgb(104, 221, 216),116

Generated: 2026-07-06 18:04:44
```
