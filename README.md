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

![#AC2473](https://img.shields.io/badge/-%23AC2473?style=flat&logo=none) ![#15AD0A](https://img.shields.io/badge/-%2315AD0A?style=flat&logo=none) ![#C86974](https://img.shields.io/badge/-%23C86974?style=flat&logo=none) ![#C875DB](https://img.shields.io/badge/-%23C875DB?style=flat&logo=none) ![#B62533](https://img.shields.io/badge/-%23B62533?style=flat&logo=none) ![#F40A96](https://img.shields.io/badge/-%23F40A96?style=flat&logo=none) ![#7E80C7](https://img.shields.io/badge/-%237E80C7?style=flat&logo=none) ![#283370](https://img.shields.io/badge/-%23283370?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-16 08:16:58
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(325, 65%, 41%) | rgb(172, 36, 115)  | #AC2473 |132 |
| 2 | hsl(116, 89%, 36%) |  rgb(21, 173, 10)  | #15AD0A | 34 |
| 3 | hsl(353, 47%, 60%) | rgb(200, 105, 116) | #C86974 |174 |
| 4 | hsl(289, 59%, 66%) | rgb(200, 117, 219) | #C875DB |176 |
| 5 | hsl(354, 66%, 43%) |  rgb(182, 37, 51)  | #B62533 |167 |
| 6 | hsl(324, 92%, 50%) | rgb(244, 10, 150)  | #F40A96 |199 |
| 7 | hsl(238, 40%, 64%) | rgb(126, 128, 199) | #7E80C7 |110 |
| 8 | hsl(231, 47%, 30%) |  rgb(40, 51, 112)  | #283370 | 60 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(325, 65%, 41%),rgb(172, 36, 115),132
hsl(116, 89%, 36%),rgb(21, 173, 10),34
hsl(353, 47%, 60%),rgb(200, 105, 116),174
hsl(289, 59%, 66%),rgb(200, 117, 219),176
hsl(354, 66%, 43%),rgb(182, 37, 51),167
hsl(324, 92%, 50%),rgb(244, 10, 150),199
hsl(238, 40%, 64%),rgb(126, 128, 199),110
hsl(231, 47%, 30%),rgb(40, 51, 112),60

Generated: 2026-08-16 08:16:58
```
