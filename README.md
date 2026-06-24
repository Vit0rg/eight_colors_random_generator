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

![#887A25](https://img.shields.io/badge/-%23887A25?style=flat&logo=none) ![#2D8034](https://img.shields.io/badge/-%232D8034?style=flat&logo=none) ![#9001E9](https://img.shields.io/badge/-%239001E9?style=flat&logo=none) ![#83D8E1](https://img.shields.io/badge/-%2383D8E1?style=flat&logo=none) ![#363A95](https://img.shields.io/badge/-%23363A95?style=flat&logo=none) ![#CF5C79](https://img.shields.io/badge/-%23CF5C79?style=flat&logo=none) ![#8B1220](https://img.shields.io/badge/-%238B1220?style=flat&logo=none) ![#42E07C](https://img.shields.io/badge/-%2342E07C?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-24 02:27:29
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(52, 57%, 34%)  | rgb(136, 122, 37)  | #887A25 |137 |
| 2 | hsl(125, 48%, 34%) |  rgb(45, 128, 52)  | #2D8034 | 71 |
| 3 | hsl(277, 99%, 46%) |  rgb(144, 1, 233)  | #9001E9 |129 |
| 4 | hsl(186, 62%, 70%) | rgb(131, 216, 225) | #83D8E1 |152 |
| 5 | hsl(237, 47%, 40%) |  rgb(54, 58, 149)  | #363A95 | 61 |
| 6 | hsl(345, 55%, 59%) | rgb(207, 92, 121)  | #CF5C79 |174 |
| 7 | hsl(353, 77%, 31%) |  rgb(139, 18, 32)  | #8B1220 |125 |
| 8 | hsl(142, 72%, 57%) | rgb(66, 224, 124)  | #42E07C | 78 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(52, 57%, 34%),rgb(136, 122, 37),137
hsl(125, 48%, 34%),rgb(45, 128, 52),71
hsl(277, 99%, 46%),rgb(144, 1, 233),129
hsl(186, 62%, 70%),rgb(131, 216, 225),152
hsl(237, 47%, 40%),rgb(54, 58, 149),61
hsl(345, 55%, 59%),rgb(207, 92, 121),174
hsl(353, 77%, 31%),rgb(139, 18, 32),125
hsl(142, 72%, 57%),rgb(66, 224, 124),78

Generated: 2026-06-24 02:27:29
```
