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

![#7E302E](https://img.shields.io/badge/-%237E302E?style=flat&logo=none) ![#5CCF7B](https://img.shields.io/badge/-%235CCF7B?style=flat&logo=none) ![#44E347](https://img.shields.io/badge/-%2344E347?style=flat&logo=none) ![#F3BB39](https://img.shields.io/badge/-%23F3BB39?style=flat&logo=none) ![#80D4B8](https://img.shields.io/badge/-%2380D4B8?style=flat&logo=none) ![#D51578](https://img.shields.io/badge/-%23D51578?style=flat&logo=none) ![#3A4896](https://img.shields.io/badge/-%233A4896?style=flat&logo=none) ![#1D41C3](https://img.shields.io/badge/-%231D41C3?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-01 16:44:45
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 |  hsl(1, 46%, 34%)  |  rgb(126, 48, 46)  | #7E302E | 95 |
| 2 | hsl(136, 55%, 59%) | rgb(92, 207, 123)  | #5CCF7B |114 |
| 3 | hsl(121, 74%, 58%) |  rgb(68, 227, 71)  | #44E347 | 77 |
| 4 | hsl(42, 89%, 59%)  | rgb(243, 187, 57)  | #F3BB39 |221 |
| 5 | hsl(160, 50%, 67%) | rgb(128, 212, 184) | #80D4B8 |152 |
| 6 | hsl(329, 82%, 46%) | rgb(213, 21, 120)  | #D51578 |162 |
| 7 | hsl(231, 44%, 41%) |  rgb(58, 72, 150)  | #3A4896 | 61 |
| 8 | hsl(227, 74%, 44%) |  rgb(29, 65, 195)  | #1D41C3 | 62 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(1, 46%, 34%),rgb(126, 48, 46),95
hsl(136, 55%, 59%),rgb(92, 207, 123),114
hsl(121, 74%, 58%),rgb(68, 227, 71),77
hsl(42, 89%, 59%),rgb(243, 187, 57),221
hsl(160, 50%, 67%),rgb(128, 212, 184),152
hsl(329, 82%, 46%),rgb(213, 21, 120),162
hsl(231, 44%, 41%),rgb(58, 72, 150),61
hsl(227, 74%, 44%),rgb(29, 65, 195),62

Generated: 2026-05-01 16:44:45
```
