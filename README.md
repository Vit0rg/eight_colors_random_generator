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

![#237380](https://img.shields.io/badge/-%23237380?style=flat&logo=none) ![#08AF08](https://img.shields.io/badge/-%2308AF08?style=flat&logo=none) ![#CC3C7F](https://img.shields.io/badge/-%23CC3C7F?style=flat&logo=none) ![#772152](https://img.shields.io/badge/-%23772152?style=flat&logo=none) ![#16CEB6](https://img.shields.io/badge/-%2316CEB6?style=flat&logo=none) ![#86353F](https://img.shields.io/badge/-%2386353F?style=flat&logo=none) ![#7CC9E3](https://img.shields.io/badge/-%237CC9E3?style=flat&logo=none) ![#CD4A74](https://img.shields.io/badge/-%23CD4A74?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-22 08:17:31
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(188, 57%, 32%) | rgb(35, 115, 128)  | #237380 | 67 |
| 2 | hsl(120, 91%, 36%) |   rgb(8, 175, 8)   | #08AF08 | 34 |
| 3 | hsl(332, 59%, 52%) | rgb(204, 60, 127)  | #CC3C7F |168 |
| 4 | hsl(326, 56%, 30%) |  rgb(119, 33, 82)  | #772152 | 96 |
| 5 | hsl(172, 80%, 45%) | rgb(22, 206, 182)  | #16CEB6 | 44 |
| 6 | hsl(353, 43%, 37%) |  rgb(134, 53, 63)  | #86353F |131 |
| 7 | hsl(195, 65%, 69%) | rgb(124, 201, 227) | #7CC9E3 |116 |
| 8 | hsl(341, 57%, 55%) | rgb(205, 74, 116)  | #CD4A74 |168 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(188, 57%, 32%),rgb(35, 115, 128),67
hsl(120, 91%, 36%),rgb(8, 175, 8),34
hsl(332, 59%, 52%),rgb(204, 60, 127),168
hsl(326, 56%, 30%),rgb(119, 33, 82),96
hsl(172, 80%, 45%),rgb(22, 206, 182),44
hsl(353, 43%, 37%),rgb(134, 53, 63),131
hsl(195, 65%, 69%),rgb(124, 201, 227),116
hsl(341, 57%, 55%),rgb(205, 74, 116),168

Generated: 2026-08-22 08:17:31
```
