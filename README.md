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

![#B2703D](https://img.shields.io/badge/-%23B2703D?style=flat&logo=none) ![#08919B](https://img.shields.io/badge/-%2308919B?style=flat&logo=none) ![#2B2A6E](https://img.shields.io/badge/-%232B2A6E?style=flat&logo=none) ![#5D4DD5](https://img.shields.io/badge/-%235D4DD5?style=flat&logo=none) ![#5B75D0](https://img.shields.io/badge/-%235B75D0?style=flat&logo=none) ![#F3292D](https://img.shields.io/badge/-%23F3292D?style=flat&logo=none) ![#3203EC](https://img.shields.io/badge/-%233203EC?style=flat&logo=none) ![#A730E8](https://img.shields.io/badge/-%23A730E8?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-12 17:53:09
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(26, 49%, 47%)  | rgb(178, 112, 61)  | #B2703D |137 |
| 2 | hsl(184, 90%, 32%) |  rgb(8, 145, 155)  | #08919B | 37 |
| 3 | hsl(241, 45%, 30%) |  rgb(43, 42, 110)  | #2B2A6E | 60 |
| 4 | hsl(247, 62%, 57%) |  rgb(93, 77, 213)  | #5D4DD5 |104 |
| 5 | hsl(227, 56%, 59%) | rgb(91, 117, 208)  | #5B75D0 |104 |
| 6 | hsl(359, 90%, 56%) |  rgb(243, 41, 45)  | #F3292D |203 |
| 7 | hsl(252, 97%, 47%) |  rgb(50, 3, 236)   | #3203EC | 57 |
| 8 | hsl(279, 80%, 55%) | rgb(167, 48, 232)  | #A730E8 |135 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(26, 49%, 47%),rgb(178, 112, 61),137
hsl(184, 90%, 32%),rgb(8, 145, 155),37
hsl(241, 45%, 30%),rgb(43, 42, 110),60
hsl(247, 62%, 57%),rgb(93, 77, 213),104
hsl(227, 56%, 59%),rgb(91, 117, 208),104
hsl(359, 90%, 56%),rgb(243, 41, 45),203
hsl(252, 97%, 47%),rgb(50, 3, 236),57
hsl(279, 80%, 55%),rgb(167, 48, 232),135

Generated: 2026-05-12 17:53:09
```
