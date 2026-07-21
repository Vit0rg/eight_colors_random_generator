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

![#FD1F0B](https://img.shields.io/badge/-%23FD1F0B?style=flat&logo=none) ![#214C77](https://img.shields.io/badge/-%23214C77?style=flat&logo=none) ![#76D5A7](https://img.shields.io/badge/-%2376D5A7?style=flat&logo=none) ![#37468F](https://img.shields.io/badge/-%2337468F?style=flat&logo=none) ![#9D292B](https://img.shields.io/badge/-%239D292B?style=flat&logo=none) ![#08DD72](https://img.shields.io/badge/-%2308DD72?style=flat&logo=none) ![#AE038C](https://img.shields.io/badge/-%23AE038C?style=flat&logo=none) ![#4010A2](https://img.shields.io/badge/-%234010A2?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-21 17:06:22
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 |  hsl(5, 99%, 52%)  |  rgb(253, 31, 11)  | #FD1F0B |202 |
| 2 | hsl(210, 56%, 30%) |  rgb(33, 76, 119)  | #214C77 | 60 |
| 3 | hsl(151, 53%, 65%) | rgb(118, 213, 167) | #76D5A7 |115 |
| 4 | hsl(230, 44%, 39%) |  rgb(55, 70, 143)  | #37468F | 61 |
| 5 | hsl(359, 58%, 39%) |  rgb(157, 41, 43)  | #9D292B |131 |
| 6 | hsl(150, 93%, 45%) |  rgb(8, 221, 114)  | #08DD72 | 42 |
| 7 | hsl(312, 96%, 35%) |  rgb(174, 3, 140)  | #AE038C |127 |
| 8 | hsl(260, 82%, 35%) |  rgb(64, 16, 162)  | #4010A2 | 55 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(5, 99%, 52%),rgb(253, 31, 11),202
hsl(210, 56%, 30%),rgb(33, 76, 119),60
hsl(151, 53%, 65%),rgb(118, 213, 167),115
hsl(230, 44%, 39%),rgb(55, 70, 143),61
hsl(359, 58%, 39%),rgb(157, 41, 43),131
hsl(150, 93%, 45%),rgb(8, 221, 114),42
hsl(312, 96%, 35%),rgb(174, 3, 140),127
hsl(260, 82%, 35%),rgb(64, 16, 162),55

Generated: 2026-07-21 17:06:22
```
