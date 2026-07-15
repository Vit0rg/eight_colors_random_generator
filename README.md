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

![#3DEACD](https://img.shields.io/badge/-%233DEACD?style=flat&logo=none) ![#1B77E8](https://img.shields.io/badge/-%231B77E8?style=flat&logo=none) ![#4553F2](https://img.shields.io/badge/-%234553F2?style=flat&logo=none) ![#1F8883](https://img.shields.io/badge/-%231F8883?style=flat&logo=none) ![#343BCA](https://img.shields.io/badge/-%23343BCA?style=flat&logo=none) ![#2F92A2](https://img.shields.io/badge/-%232F92A2?style=flat&logo=none) ![#C72FCF](https://img.shields.io/badge/-%23C72FCF?style=flat&logo=none) ![#5BC768](https://img.shields.io/badge/-%235BC768?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-15 09:51:07
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(170, 81%, 58%) | rgb(61, 234, 205)  | #3DEACD | 86 |
| 2 | hsl(213, 82%, 51%) | rgb(27, 119, 232)  | #1B77E8 | 69 |
| 3 | hsl(235, 87%, 61%) |  rgb(69, 83, 242)  | #4553F2 | 69 |
| 4 | hsl(177, 62%, 33%) | rgb(31, 136, 131)  | #1F8883 | 73 |
| 5 | hsl(237, 59%, 50%) |  rgb(52, 59, 202)  | #343BCA | 62 |
| 6 | hsl(188, 55%, 41%) | rgb(47, 146, 162)  | #2F92A2 | 73 |
| 7 | hsl(297, 63%, 50%) | rgb(199, 47, 207)  | #C72FCF |170 |
| 8 | hsl(127, 49%, 57%) | rgb(91, 199, 104)  | #5BC768 |114 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(170, 81%, 58%),rgb(61, 234, 205),86
hsl(213, 82%, 51%),rgb(27, 119, 232),69
hsl(235, 87%, 61%),rgb(69, 83, 242),69
hsl(177, 62%, 33%),rgb(31, 136, 131),73
hsl(237, 59%, 50%),rgb(52, 59, 202),62
hsl(188, 55%, 41%),rgb(47, 146, 162),73
hsl(297, 63%, 50%),rgb(199, 47, 207),170
hsl(127, 49%, 57%),rgb(91, 199, 104),114

Generated: 2026-07-15 09:51:07
```
