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

![#F0C15A](https://img.shields.io/badge/-%23F0C15A?style=flat&logo=none) ![#C1FD1A](https://img.shields.io/badge/-%23C1FD1A?style=flat&logo=none) ![#FADC32](https://img.shields.io/badge/-%23FADC32?style=flat&logo=none) ![#0641A7](https://img.shields.io/badge/-%230641A7?style=flat&logo=none) ![#2C775E](https://img.shields.io/badge/-%232C775E?style=flat&logo=none) ![#6FCE16](https://img.shields.io/badge/-%236FCE16?style=flat&logo=none) ![#A43B70](https://img.shields.io/badge/-%23A43B70?style=flat&logo=none) ![#AC9006](https://img.shields.io/badge/-%23AC9006?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-04 02:04:37
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(41, 84%, 65%)  | rgb(240, 193, 90)  | #F0C15A |222 |
| 2 | hsl(76, 99%, 55%)  | rgb(193, 253, 26)  | #C1FD1A |191 |
| 3 | hsl(51, 96%, 59%)  | rgb(250, 220, 50)  | #FADC32 |221 |
| 4 | hsl(218, 93%, 34%) |  rgb(6, 65, 167)   | #0641A7 | 25 |
| 5 | hsl(160, 46%, 32%) |  rgb(44, 119, 94)  | #2C775E | 66 |
| 6 | hsl(91, 80%, 45%)  | rgb(111, 206, 22)  | #6FCE16 |112 |
| 7 | hsl(330, 47%, 44%) | rgb(164, 59, 112)  | #A43B70 |132 |
| 8 | hsl(50, 93%, 35%)  |  rgb(172, 144, 6)  | #AC9006 |142 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(41, 84%, 65%),rgb(240, 193, 90),222
hsl(76, 99%, 55%),rgb(193, 253, 26),191
hsl(51, 96%, 59%),rgb(250, 220, 50),221
hsl(218, 93%, 34%),rgb(6, 65, 167),25
hsl(160, 46%, 32%),rgb(44, 119, 94),66
hsl(91, 80%, 45%),rgb(111, 206, 22),112
hsl(330, 47%, 44%),rgb(164, 59, 112),132
hsl(50, 93%, 35%),rgb(172, 144, 6),142

Generated: 2026-09-04 02:04:37
```
