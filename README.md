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

![#039BD2](https://img.shields.io/badge/-%23039BD2?style=flat&logo=none) ![#378F73](https://img.shields.io/badge/-%23378F73?style=flat&logo=none) ![#345EA6](https://img.shields.io/badge/-%23345EA6?style=flat&logo=none) ![#9C2F6B](https://img.shields.io/badge/-%239C2F6B?style=flat&logo=none) ![#F8866C](https://img.shields.io/badge/-%23F8866C?style=flat&logo=none) ![#DA3E91](https://img.shields.io/badge/-%23DA3E91?style=flat&logo=none) ![#557F29](https://img.shields.io/badge/-%23557F29?style=flat&logo=none) ![#50AEF5](https://img.shields.io/badge/-%2350AEF5?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-10 02:34:01
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(196, 97%, 42%) |  rgb(3, 155, 210)  | #039BD2 | 38 |
| 2 | hsl(161, 44%, 39%) | rgb(55, 143, 115)  | #378F73 | 72 |
| 3 | hsl(218, 52%, 43%) |  rgb(52, 94, 166)  | #345EA6 | 67 |
| 4 | hsl(327, 53%, 40%) | rgb(156, 47, 107)  | #9C2F6B |132 |
| 5 | hsl(11, 91%, 70%)  | rgb(248, 134, 108) | #F8866C |216 |
| 6 | hsl(328, 68%, 55%) | rgb(218, 62, 145)  | #DA3E91 |169 |
| 7 | hsl(89, 51%, 33%)  |  rgb(85, 127, 41)  | #557F29 |101 |
| 8 | hsl(206, 90%, 64%) | rgb(80, 174, 245)  | #50AEF5 |111 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(196, 97%, 42%),rgb(3, 155, 210),38
hsl(161, 44%, 39%),rgb(55, 143, 115),72
hsl(218, 52%, 43%),rgb(52, 94, 166),67
hsl(327, 53%, 40%),rgb(156, 47, 107),132
hsl(11, 91%, 70%),rgb(248, 134, 108),216
hsl(328, 68%, 55%),rgb(218, 62, 145),169
hsl(89, 51%, 33%),rgb(85, 127, 41),101
hsl(206, 90%, 64%),rgb(80, 174, 245),111

Generated: 2026-06-10 02:34:01
```
