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

![#90D97C](https://img.shields.io/badge/-%2390D97C?style=flat&logo=none) ![#7AAAC6](https://img.shields.io/badge/-%237AAAC6?style=flat&logo=none) ![#7738E5](https://img.shields.io/badge/-%237738E5?style=flat&logo=none) ![#158353](https://img.shields.io/badge/-%23158353?style=flat&logo=none) ![#DD4FB7](https://img.shields.io/badge/-%23DD4FB7?style=flat&logo=none) ![#0080B6](https://img.shields.io/badge/-%230080B6?style=flat&logo=none) ![#3D8E76](https://img.shields.io/badge/-%233D8E76?style=flat&logo=none) ![#BC6133](https://img.shields.io/badge/-%23BC6133?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-07 02:01:51
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(107, 55%, 67%) | rgb(144, 217, 124) | #90D97C |150 |
| 2 | hsl(202, 40%, 63%) | rgb(122, 170, 198) | #7AAAC6 |110 |
| 3 | hsl(262, 77%, 56%) | rgb(119, 56, 229)  | #7738E5 | 98 |
| 4 | hsl(154, 72%, 30%) |  rgb(21, 131, 83)  | #158353 | 36 |
| 5 | hsl(316, 68%, 59%) | rgb(221, 79, 183)  | #DD4FB7 |176 |
| 6 | hsl(198, 99%, 36%) |  rgb(0, 128, 182)  | #0080B6 | 38 |
| 7 | hsl(162, 40%, 40%) | rgb(61, 142, 118)  | #3D8E76 | 72 |
| 8 | hsl(20, 57%, 47%)  |  rgb(188, 97, 51)  | #BC6133 |173 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(107, 55%, 67%),rgb(144, 217, 124),150
hsl(202, 40%, 63%),rgb(122, 170, 198),110
hsl(262, 77%, 56%),rgb(119, 56, 229),98
hsl(154, 72%, 30%),rgb(21, 131, 83),36
hsl(316, 68%, 59%),rgb(221, 79, 183),176
hsl(198, 99%, 36%),rgb(0, 128, 182),38
hsl(162, 40%, 40%),rgb(61, 142, 118),72
hsl(20, 57%, 47%),rgb(188, 97, 51),173

Generated: 2026-05-07 02:01:51
```
