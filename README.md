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

![#FC02E3](https://img.shields.io/badge/-%23FC02E3?style=flat&logo=none) ![#70DC28](https://img.shields.io/badge/-%2370DC28?style=flat&logo=none) ![#7BA819](https://img.shields.io/badge/-%237BA819?style=flat&logo=none) ![#83791F](https://img.shields.io/badge/-%2383791F?style=flat&logo=none) ![#2868D6](https://img.shields.io/badge/-%232868D6?style=flat&logo=none) ![#60E071](https://img.shields.io/badge/-%2360E071?style=flat&logo=none) ![#78FF56](https://img.shields.io/badge/-%2378FF56?style=flat&logo=none) ![#9ED24B](https://img.shields.io/badge/-%239ED24B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-03 18:58:46
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(306, 98%, 50%) |  rgb(252, 2, 227)  | #FC02E3 |200 |
| 2 | hsl(96, 72%, 51%)  | rgb(112, 220, 40)  | #70DC28 |113 |
| 3 | hsl(79, 74%, 38%)  | rgb(123, 168, 25)  | #7BA819 |106 |
| 4 | hsl(54, 61%, 32%)  | rgb(131, 121, 31)  | #83791F |137 |
| 5 | hsl(218, 68%, 50%) | rgb(40, 104, 214)  | #2868D6 | 68 |
| 6 | hsl(128, 68%, 63%) | rgb(96, 224, 113)  | #60E071 |114 |
| 7 |hsl(108, 100%, 67%) | rgb(120, 255, 86)  | #78FF56 |120 |
| 8 | hsl(83, 60%, 56%)  | rgb(158, 210, 75)  | #9ED24B |149 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(306, 98%, 50%),rgb(252, 2, 227),200
hsl(96, 72%, 51%),rgb(112, 220, 40),113
hsl(79, 74%, 38%),rgb(123, 168, 25),106
hsl(54, 61%, 32%),rgb(131, 121, 31),137
hsl(218, 68%, 50%),rgb(40, 104, 214),68
hsl(128, 68%, 63%),rgb(96, 224, 113),114
hsl(108, 100%, 67%),rgb(120, 255, 86),120
hsl(83, 60%, 56%),rgb(158, 210, 75),149

Generated: 2026-09-03 18:58:46
```
