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

![#154997](https://img.shields.io/badge/-%23154997?style=flat&logo=none) ![#DA8685](https://img.shields.io/badge/-%23DA8685?style=flat&logo=none) ![#678031](https://img.shields.io/badge/-%23678031?style=flat&logo=none) ![#315D76](https://img.shields.io/badge/-%23315D76?style=flat&logo=none) ![#CD8D55](https://img.shields.io/badge/-%23CD8D55?style=flat&logo=none) ![#C955E6](https://img.shields.io/badge/-%23C955E6?style=flat&logo=none) ![#231A9C](https://img.shields.io/badge/-%23231A9C?style=flat&logo=none) ![#8046EB](https://img.shields.io/badge/-%238046EB?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-24 10:41:05
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(216, 75%, 34%) |  rgb(21, 73, 151)  | #154997 | 25 |
| 2 |  hsl(1, 54%, 69%)  | rgb(218, 134, 133) | #DA8685 |181 |
| 3 | hsl(79, 44%, 35%)  | rgb(103, 128, 49)  | #678031 |107 |
| 4 | hsl(202, 41%, 33%) |  rgb(49, 93, 118)  | #315D76 | 66 |
| 5 | hsl(28, 55%, 57%)  | rgb(205, 141, 85)  | #CD8D55 |180 |
| 6 | hsl(288, 75%, 62%) | rgb(201, 85, 230)  | #C955E6 |176 |
| 7 | hsl(244, 71%, 36%) |  rgb(35, 26, 156)  | #231A9C | 61 |
| 8 | hsl(261, 81%, 60%) | rgb(128, 70, 235)  | #8046EB |135 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(216, 75%, 34%),rgb(21, 73, 151),25
hsl(1, 54%, 69%),rgb(218, 134, 133),181
hsl(79, 44%, 35%),rgb(103, 128, 49),107
hsl(202, 41%, 33%),rgb(49, 93, 118),66
hsl(28, 55%, 57%),rgb(205, 141, 85),180
hsl(288, 75%, 62%),rgb(201, 85, 230),176
hsl(244, 71%, 36%),rgb(35, 26, 156),61
hsl(261, 81%, 60%),rgb(128, 70, 235),135

Generated: 2026-06-24 10:41:05
```
