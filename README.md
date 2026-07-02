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

![#254F73](https://img.shields.io/badge/-%23254F73?style=flat&logo=none) ![#723D2B](https://img.shields.io/badge/-%23723D2B?style=flat&logo=none) ![#87FF47](https://img.shields.io/badge/-%2387FF47?style=flat&logo=none) ![#94E618](https://img.shields.io/badge/-%2394E618?style=flat&logo=none) ![#57F8EB](https://img.shields.io/badge/-%2357F8EB?style=flat&logo=none) ![#788FC9](https://img.shields.io/badge/-%23788FC9?style=flat&logo=none) ![#CC5BDB](https://img.shields.io/badge/-%23CC5BDB?style=flat&logo=none) ![#64C39B](https://img.shields.io/badge/-%2364C39B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-02 02:26:58
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(208, 51%, 30%) |  rgb(37, 79, 115)  | #254F73 | 66 |
| 2 | hsl(15, 45%, 31%)  |  rgb(114, 61, 43)  | #723D2B | 95 |
| 3 | hsl(99, 100%, 64%) | rgb(135, 255, 71)  | #87FF47 |155 |
| 4 | hsl(84, 81%, 50%)  | rgb(148, 230, 24)  | #94E618 |148 |
| 5 | hsl(175, 93%, 66%) | rgb(87, 248, 235)  | #57F8EB |123 |
| 6 | hsl(223, 43%, 63%) | rgb(120, 143, 201) | #788FC9 |110 |
| 7 | hsl(293, 64%, 61%) | rgb(204, 91, 219)  | #CC5BDB |176 |
| 8 | hsl(155, 44%, 58%) | rgb(100, 195, 155) | #64C39B |115 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(208, 51%, 30%),rgb(37, 79, 115),66
hsl(15, 45%, 31%),rgb(114, 61, 43),95
hsl(99, 100%, 64%),rgb(135, 255, 71),155
hsl(84, 81%, 50%),rgb(148, 230, 24),148
hsl(175, 93%, 66%),rgb(87, 248, 235),123
hsl(223, 43%, 63%),rgb(120, 143, 201),110
hsl(293, 64%, 61%),rgb(204, 91, 219),176
hsl(155, 44%, 58%),rgb(100, 195, 155),115

Generated: 2026-07-02 02:26:58
```
