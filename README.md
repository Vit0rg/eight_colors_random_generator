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

![#389897](https://img.shields.io/badge/-%23389897?style=flat&logo=none) ![#83A800](https://img.shields.io/badge/-%2383A800?style=flat&logo=none) ![#76682C](https://img.shields.io/badge/-%2376682C?style=flat&logo=none) ![#902E2C](https://img.shields.io/badge/-%23902E2C?style=flat&logo=none) ![#43AC56](https://img.shields.io/badge/-%2343AC56?style=flat&logo=none) ![#183C8A](https://img.shields.io/badge/-%23183C8A?style=flat&logo=none) ![#AD199E](https://img.shields.io/badge/-%23AD199E?style=flat&logo=none) ![#3FA134](https://img.shields.io/badge/-%233FA134?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-23 00:43:54
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(179, 46%, 41%) | rgb(56, 152, 151)  | #389897 | 73 |
| 2 | hsl(73, 100%, 33%) |  rgb(131, 168, 0)  | #83A800 |142 |
| 3 | hsl(49, 45%, 32%)  | rgb(118, 104, 44)  | #76682C |101 |
| 4 |  hsl(1, 53%, 37%)  |  rgb(144, 46, 44)  | #902E2C |131 |
| 5 | hsl(131, 44%, 47%) |  rgb(67, 172, 86)  | #43AC56 | 72 |
| 6 | hsl(221, 70%, 32%) |  rgb(24, 60, 138)  | #183C8A | 25 |
| 7 | hsl(306, 74%, 39%) | rgb(173, 25, 158)  | #AD199E |127 |
| 8 | hsl(114, 51%, 42%) |  rgb(63, 161, 52)  | #3FA134 | 71 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(179, 46%, 41%),rgb(56, 152, 151),73
hsl(73, 100%, 33%),rgb(131, 168, 0),142
hsl(49, 45%, 32%),rgb(118, 104, 44),101
hsl(1, 53%, 37%),rgb(144, 46, 44),131
hsl(131, 44%, 47%),rgb(67, 172, 86),72
hsl(221, 70%, 32%),rgb(24, 60, 138),25
hsl(306, 74%, 39%),rgb(173, 25, 158),127
hsl(114, 51%, 42%),rgb(63, 161, 52),71

Generated: 2026-08-23 00:43:54
```
