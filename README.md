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

![#3EE467](https://img.shields.io/badge/-%233EE467?style=flat&logo=none) ![#FC2AB3](https://img.shields.io/badge/-%23FC2AB3?style=flat&logo=none) ![#92A408](https://img.shields.io/badge/-%2392A408?style=flat&logo=none) ![#13A706](https://img.shields.io/badge/-%2313A706?style=flat&logo=none) ![#249C24](https://img.shields.io/badge/-%23249C24?style=flat&logo=none) ![#63F2A3](https://img.shields.io/badge/-%2363F2A3?style=flat&logo=none) ![#903B54](https://img.shields.io/badge/-%23903B54?style=flat&logo=none) ![#513EE4](https://img.shields.io/badge/-%23513EE4?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-17 01:50:07
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(135, 76%, 57%) | rgb(62, 228, 103)  | #3EE467 | 78 |
| 2 | hsl(321, 98%, 58%) | rgb(252, 42, 179)  | #FC2AB3 |205 |
| 3 | hsl(67, 90%, 34%)  |  rgb(146, 164, 8)  | #92A408 |142 |
| 4 | hsl(115, 93%, 34%) |  rgb(19, 167, 6)   | #13A706 | 34 |
| 5 | hsl(120, 62%, 38%) |  rgb(36, 156, 36)  | #249C24 | 71 |
| 6 | hsl(147, 85%, 67%) | rgb(99, 242, 163)  | #63F2A3 |121 |
| 7 | hsl(342, 42%, 40%) |  rgb(144, 59, 84)  | #903B54 |132 |
| 8 | hsl(247, 76%, 57%) |  rgb(81, 62, 228)  | #513EE4 | 98 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(135, 76%, 57%),rgb(62, 228, 103),78
hsl(321, 98%, 58%),rgb(252, 42, 179),205
hsl(67, 90%, 34%),rgb(146, 164, 8),142
hsl(115, 93%, 34%),rgb(19, 167, 6),34
hsl(120, 62%, 38%),rgb(36, 156, 36),71
hsl(147, 85%, 67%),rgb(99, 242, 163),121
hsl(342, 42%, 40%),rgb(144, 59, 84),132
hsl(247, 76%, 57%),rgb(81, 62, 228),98

Generated: 2026-07-17 01:50:07
```
