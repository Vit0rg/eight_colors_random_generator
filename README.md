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

![#41E6B7](https://img.shields.io/badge/-%2341E6B7?style=flat&logo=none) ![#720FA7](https://img.shields.io/badge/-%23720FA7?style=flat&logo=none) ![#2A28A3](https://img.shields.io/badge/-%232A28A3?style=flat&logo=none) ![#6592FA](https://img.shields.io/badge/-%236592FA?style=flat&logo=none) ![#48DEBE](https://img.shields.io/badge/-%2348DEBE?style=flat&logo=none) ![#87167A](https://img.shields.io/badge/-%2387167A?style=flat&logo=none) ![#9063D3](https://img.shields.io/badge/-%239063D3?style=flat&logo=none) ![#160DBE](https://img.shields.io/badge/-%23160DBE?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-06 10:09:28
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(163, 77%, 58%) | rgb(65, 230, 183)  | #41E6B7 | 80 |
| 2 | hsl(279, 83%, 36%) | rgb(114, 15, 167)  | #720FA7 | 91 |
| 3 | hsl(241, 60%, 40%) |  rgb(42, 40, 163)  | #2A28A3 | 61 |
| 4 | hsl(222, 94%, 69%) | rgb(101, 146, 250) | #6592FA |111 |
| 5 | hsl(167, 70%, 58%) | rgb(72, 222, 190)  | #48DEBE | 80 |
| 6 | hsl(307, 71%, 31%) | rgb(135, 22, 122)  | #87167A |126 |
| 7 | hsl(264, 56%, 61%) | rgb(144, 99, 211)  | #9063D3 |140 |
| 8 | hsl(243, 87%, 40%) |  rgb(22, 13, 190)  | #160DBE | 20 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(163, 77%, 58%),rgb(65, 230, 183),80
hsl(279, 83%, 36%),rgb(114, 15, 167),91
hsl(241, 60%, 40%),rgb(42, 40, 163),61
hsl(222, 94%, 69%),rgb(101, 146, 250),111
hsl(167, 70%, 58%),rgb(72, 222, 190),80
hsl(307, 71%, 31%),rgb(135, 22, 122),126
hsl(264, 56%, 61%),rgb(144, 99, 211),140
hsl(243, 87%, 40%),rgb(22, 13, 190),20

Generated: 2026-05-06 10:09:28
```
