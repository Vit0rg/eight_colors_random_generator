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

![#8A1368](https://img.shields.io/badge/-%238A1368?style=flat&logo=none) ![#4301DF](https://img.shields.io/badge/-%234301DF?style=flat&logo=none) ![#704AE2](https://img.shields.io/badge/-%23704AE2?style=flat&logo=none) ![#7D3B2F](https://img.shields.io/badge/-%237D3B2F?style=flat&logo=none) ![#ABD18D](https://img.shields.io/badge/-%23ABD18D?style=flat&logo=none) ![#1EB0FA](https://img.shields.io/badge/-%231EB0FA?style=flat&logo=none) ![#75AAEF](https://img.shields.io/badge/-%2375AAEF?style=flat&logo=none) ![#64CD74](https://img.shields.io/badge/-%2364CD74?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-02 19:36:16
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(317, 75%, 31%) | rgb(138, 19, 104)  | #8A1368 |126 |
| 2 | hsl(258, 99%, 44%) |  rgb(67, 1, 223)   | #4301DF | 56 |
| 3 | hsl(255, 73%, 59%) | rgb(112, 74, 226)  | #704AE2 | 98 |
| 4 |  hsl(9, 45%, 34%)  |  rgb(125, 59, 47)  | #7D3B2F | 95 |
| 5 | hsl(94, 43%, 69%)  | rgb(171, 209, 141) | #ABD18D |151 |
| 6 | hsl(200, 96%, 55%) | rgb(30, 176, 250)  | #1EB0FA | 75 |
| 7 | hsl(214, 80%, 70%) | rgb(117, 170, 239) | #75AAEF |111 |
| 8 | hsl(129, 51%, 60%) | rgb(100, 205, 116) | #64CD74 |114 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(317, 75%, 31%),rgb(138, 19, 104),126
hsl(258, 99%, 44%),rgb(67, 1, 223),56
hsl(255, 73%, 59%),rgb(112, 74, 226),98
hsl(9, 45%, 34%),rgb(125, 59, 47),95
hsl(94, 43%, 69%),rgb(171, 209, 141),151
hsl(200, 96%, 55%),rgb(30, 176, 250),75
hsl(214, 80%, 70%),rgb(117, 170, 239),111
hsl(129, 51%, 60%),rgb(100, 205, 116),114

Generated: 2026-06-02 19:36:16
```
