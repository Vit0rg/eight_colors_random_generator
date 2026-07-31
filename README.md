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

![#44F777](https://img.shields.io/badge/-%2344F777?style=flat&logo=none) ![#5C29F3](https://img.shields.io/badge/-%235C29F3?style=flat&logo=none) ![#EC6981](https://img.shields.io/badge/-%23EC6981?style=flat&logo=none) ![#468FF5](https://img.shields.io/badge/-%23468FF5?style=flat&logo=none) ![#C0AB43](https://img.shields.io/badge/-%23C0AB43?style=flat&logo=none) ![#62D4C8](https://img.shields.io/badge/-%2362D4C8?style=flat&logo=none) ![#5396DE](https://img.shields.io/badge/-%235396DE?style=flat&logo=none) ![#677ECA](https://img.shields.io/badge/-%23677ECA?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-31 17:19:49
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(137, 92%, 62%) | rgb(68, 247, 119)  | #44F777 | 84 |
| 2 | hsl(255, 90%, 56%) |  rgb(92, 41, 243)  | #5C29F3 | 99 |
| 3 | hsl(349, 78%, 67%) | rgb(236, 105, 129) | #EC6981 |211 |
| 4 | hsl(215, 90%, 62%) | rgb(70, 143, 245)  | #468FF5 | 75 |
| 5 | hsl(50, 50%, 51%)  | rgb(192, 171, 67)  | #C0AB43 |179 |
| 6 | hsl(174, 57%, 61%) | rgb(98, 212, 200)  | #62D4C8 |116 |
| 7 | hsl(211, 68%, 60%) | rgb(83, 150, 222)  | #5396DE |110 |
| 8 | hsl(226, 49%, 60%) | rgb(103, 126, 202) | #677ECA |104 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(137, 92%, 62%),rgb(68, 247, 119),84
hsl(255, 90%, 56%),rgb(92, 41, 243),99
hsl(349, 78%, 67%),rgb(236, 105, 129),211
hsl(215, 90%, 62%),rgb(70, 143, 245),75
hsl(50, 50%, 51%),rgb(192, 171, 67),179
hsl(174, 57%, 61%),rgb(98, 212, 200),116
hsl(211, 68%, 60%),rgb(83, 150, 222),110
hsl(226, 49%, 60%),rgb(103, 126, 202),104

Generated: 2026-07-31 17:19:49
```
