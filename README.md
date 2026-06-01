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

![#A0533F](https://img.shields.io/badge/-%23A0533F?style=flat&logo=none) ![#2A2097](https://img.shields.io/badge/-%232A2097?style=flat&logo=none) ![#673E9C](https://img.shields.io/badge/-%23673E9C?style=flat&logo=none) ![#9EDB0F](https://img.shields.io/badge/-%239EDB0F?style=flat&logo=none) ![#C2DE44](https://img.shields.io/badge/-%23C2DE44?style=flat&logo=none) ![#333E99](https://img.shields.io/badge/-%23333E99?style=flat&logo=none) ![#87D274](https://img.shields.io/badge/-%2387D274?style=flat&logo=none) ![#C86984](https://img.shields.io/badge/-%23C86984?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-01 20:10:50
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(12, 43%, 44%)  |  rgb(160, 83, 63)  | #A0533F |137 |
| 2 | hsl(245, 65%, 36%) |  rgb(42, 32, 151)  | #2A2097 | 61 |
| 3 | hsl(266, 43%, 43%) | rgb(103, 62, 156)  | #673E9C | 97 |
| 4 | hsl(78, 87%, 46%)  | rgb(158, 219, 15)  | #9EDB0F |148 |
| 5 | hsl(71, 70%, 57%)  | rgb(194, 222, 68)  | #C2DE44 |185 |
| 6 | hsl(233, 50%, 40%) |  rgb(51, 62, 153)  | #333E99 | 61 |
| 7 | hsl(108, 51%, 64%) | rgb(135, 210, 116) | #87D274 |150 |
| 8 | hsl(343, 47%, 60%) | rgb(200, 105, 132) | #C86984 |175 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(12, 43%, 44%),rgb(160, 83, 63),137
hsl(245, 65%, 36%),rgb(42, 32, 151),61
hsl(266, 43%, 43%),rgb(103, 62, 156),97
hsl(78, 87%, 46%),rgb(158, 219, 15),148
hsl(71, 70%, 57%),rgb(194, 222, 68),185
hsl(233, 50%, 40%),rgb(51, 62, 153),61
hsl(108, 51%, 64%),rgb(135, 210, 116),150
hsl(343, 47%, 60%),rgb(200, 105, 132),175

Generated: 2026-06-01 20:10:50
```
