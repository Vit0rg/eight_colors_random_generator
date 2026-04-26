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

![#2DC42B](https://img.shields.io/badge/-%232DC42B?style=flat&logo=none) ![#A4E141](https://img.shields.io/badge/-%23A4E141?style=flat&logo=none) ![#E72135](https://img.shields.io/badge/-%23E72135?style=flat&logo=none) ![#3EE9A7](https://img.shields.io/badge/-%233EE9A7?style=flat&logo=none) ![#1A8E5D](https://img.shields.io/badge/-%231A8E5D?style=flat&logo=none) ![#F310D9](https://img.shields.io/badge/-%23F310D9?style=flat&logo=none) ![#70C232](https://img.shields.io/badge/-%2370C232?style=flat&logo=none) ![#FF691E](https://img.shields.io/badge/-%23FF691E?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-26 16:33:00
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(119, 64%, 47%) |  rgb(45, 196, 43)  | #2DC42B | 77 |
| 2 | hsl(83, 73%, 57%)  | rgb(164, 225, 65)  | #A4E141 |149 |
| 3 | hsl(354, 81%, 52%) |  rgb(231, 33, 53)  | #E72135 |203 |
| 4 | hsl(157, 80%, 58%) | rgb(62, 233, 167)  | #3EE9A7 | 85 |
| 5 | hsl(155, 69%, 33%) |  rgb(26, 142, 93)  | #1A8E5D | 72 |
| 6 | hsl(307, 91%, 51%) | rgb(243, 16, 217)  | #F310D9 |200 |
| 7 | hsl(94, 59%, 48%)  | rgb(112, 194, 50)  | #70C232 |113 |
| 8 | hsl(20, 100%, 56%) | rgb(255, 105, 30)  | #FF691E |209 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(119, 64%, 47%),rgb(45, 196, 43),77
hsl(83, 73%, 57%),rgb(164, 225, 65),149
hsl(354, 81%, 52%),rgb(231, 33, 53),203
hsl(157, 80%, 58%),rgb(62, 233, 167),85
hsl(155, 69%, 33%),rgb(26, 142, 93),72
hsl(307, 91%, 51%),rgb(243, 16, 217),200
hsl(94, 59%, 48%),rgb(112, 194, 50),113
hsl(20, 100%, 56%),rgb(255, 105, 30),209

Generated: 2026-04-26 16:33:00
```
