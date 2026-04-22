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

![#3F48FD](https://img.shields.io/badge/-%233F48FD?style=flat&logo=none) ![#2B7767](https://img.shields.io/badge/-%232B7767?style=flat&logo=none) ![#EAD40E](https://img.shields.io/badge/-%23EAD40E?style=flat&logo=none) ![#96AD14](https://img.shields.io/badge/-%2396AD14?style=flat&logo=none) ![#77842D](https://img.shields.io/badge/-%2377842D?style=flat&logo=none) ![#CD1866](https://img.shields.io/badge/-%23CD1866?style=flat&logo=none) ![#0BB1AE](https://img.shields.io/badge/-%230BB1AE?style=flat&logo=none) ![#28C123](https://img.shields.io/badge/-%2328C123?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-22 09:12:16
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(237, 98%, 62%) |  rgb(63, 72, 253)  | #3F48FD | 63 |
| 2 | hsl(167, 47%, 32%) | rgb(43, 119, 103)  | #2B7767 | 66 |
| 3 | hsl(54, 88%, 49%)  | rgb(234, 212, 14)  | #EAD40E |220 |
| 4 | hsl(69, 79%, 38%)  | rgb(150, 173, 20)  | #96AD14 |142 |
| 5 | hsl(69, 49%, 35%)  | rgb(119, 132, 45)  | #77842D |107 |
| 6 | hsl(334, 79%, 45%) | rgb(205, 24, 102)  | #CD1866 |162 |
| 7 | hsl(179, 88%, 37%) | rgb(11, 177, 174)  | #0BB1AE | 37 |
| 8 | hsl(118, 69%, 45%) |  rgb(40, 193, 35)  | #28C123 | 77 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(237, 98%, 62%),rgb(63, 72, 253),63
hsl(167, 47%, 32%),rgb(43, 119, 103),66
hsl(54, 88%, 49%),rgb(234, 212, 14),220
hsl(69, 79%, 38%),rgb(150, 173, 20),142
hsl(69, 49%, 35%),rgb(119, 132, 45),107
hsl(334, 79%, 45%),rgb(205, 24, 102),162
hsl(179, 88%, 37%),rgb(11, 177, 174),37
hsl(118, 69%, 45%),rgb(40, 193, 35),77

Generated: 2026-04-22 09:12:16
```
