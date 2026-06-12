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

![#BC7614](https://img.shields.io/badge/-%23BC7614?style=flat&logo=none) ![#82E298](https://img.shields.io/badge/-%2382E298?style=flat&logo=none) ![#8C2826](https://img.shields.io/badge/-%238C2826?style=flat&logo=none) ![#C94579](https://img.shields.io/badge/-%23C94579?style=flat&logo=none) ![#6AF087](https://img.shields.io/badge/-%236AF087?style=flat&logo=none) ![#333784](https://img.shields.io/badge/-%23333784?style=flat&logo=none) ![#09E1D2](https://img.shields.io/badge/-%2309E1D2?style=flat&logo=none) ![#23934C](https://img.shields.io/badge/-%2323934C?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-12 17:58:56
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(35, 80%, 41%)  | rgb(188, 118, 20)  | #BC7614 |172 |
| 2 | hsl(134, 63%, 70%) | rgb(130, 226, 152) | #82E298 |151 |
| 3 |  hsl(1, 57%, 35%)  |  rgb(140, 40, 38)  | #8C2826 |131 |
| 4 | hsl(336, 55%, 53%) | rgb(201, 69, 121)  | #C94579 |168 |
| 5 | hsl(133, 82%, 68%) | rgb(106, 240, 135) | #6AF087 |121 |
| 6 | hsl(237, 44%, 36%) |  rgb(51, 55, 132)  | #333784 | 61 |
| 7 | hsl(176, 92%, 46%) |  rgb(9, 225, 210)  | #09E1D2 | 44 |
| 8 | hsl(142, 61%, 36%) |  rgb(35, 147, 76)  | #23934C | 71 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(35, 80%, 41%),rgb(188, 118, 20),172
hsl(134, 63%, 70%),rgb(130, 226, 152),151
hsl(1, 57%, 35%),rgb(140, 40, 38),131
hsl(336, 55%, 53%),rgb(201, 69, 121),168
hsl(133, 82%, 68%),rgb(106, 240, 135),121
hsl(237, 44%, 36%),rgb(51, 55, 132),61
hsl(176, 92%, 46%),rgb(9, 225, 210),44
hsl(142, 61%, 36%),rgb(35, 147, 76),71

Generated: 2026-06-12 17:58:56
```
