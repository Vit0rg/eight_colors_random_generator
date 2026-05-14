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

![#681AC0](https://img.shields.io/badge/-%23681AC0?style=flat&logo=none) ![#3495C5](https://img.shields.io/badge/-%233495C5?style=flat&logo=none) ![#D722EB](https://img.shields.io/badge/-%23D722EB?style=flat&logo=none) ![#235F75](https://img.shields.io/badge/-%23235F75?style=flat&logo=none) ![#8B5DEE](https://img.shields.io/badge/-%238B5DEE?style=flat&logo=none) ![#AD4648](https://img.shields.io/badge/-%23AD4648?style=flat&logo=none) ![#CF8ED6](https://img.shields.io/badge/-%23CF8ED6?style=flat&logo=none) ![#694CE0](https://img.shields.io/badge/-%23694CE0?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-14 17:42:30
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(268, 76%, 43%) | rgb(104, 26, 192)  | #681AC0 | 98 |
| 2 | hsl(200, 58%, 49%) | rgb(52, 149, 197)  | #3495C5 | 74 |
| 3 | hsl(294, 84%, 53%) | rgb(215, 34, 235)  | #D722EB |171 |
| 4 | hsl(196, 53%, 30%) |  rgb(35, 95, 117)  | #235F75 | 66 |
| 5 | hsl(259, 81%, 65%) | rgb(139, 93, 238)  | #8B5DEE |141 |
| 6 | hsl(359, 42%, 48%) |  rgb(173, 70, 72)  | #AD4648 |131 |
| 7 | hsl(294, 47%, 70%) | rgb(207, 142, 214) | #CF8ED6 |182 |
| 8 | hsl(252, 71%, 59%) | rgb(105, 76, 224)  | #694CE0 | 98 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(268, 76%, 43%),rgb(104, 26, 192),98
hsl(200, 58%, 49%),rgb(52, 149, 197),74
hsl(294, 84%, 53%),rgb(215, 34, 235),171
hsl(196, 53%, 30%),rgb(35, 95, 117),66
hsl(259, 81%, 65%),rgb(139, 93, 238),141
hsl(359, 42%, 48%),rgb(173, 70, 72),131
hsl(294, 47%, 70%),rgb(207, 142, 214),182
hsl(252, 71%, 59%),rgb(105, 76, 224),98

Generated: 2026-05-14 17:42:30
```
