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

![#7C1DA9](https://img.shields.io/badge/-%237C1DA9?style=flat&logo=none) ![#C3CF90](https://img.shields.io/badge/-%23C3CF90?style=flat&logo=none) ![#896C23](https://img.shields.io/badge/-%23896C23?style=flat&logo=none) ![#E637B7](https://img.shields.io/badge/-%23E637B7?style=flat&logo=none) ![#F96F3E](https://img.shields.io/badge/-%23F96F3E?style=flat&logo=none) ![#8AADD0](https://img.shields.io/badge/-%238AADD0?style=flat&logo=none) ![#A54407](https://img.shields.io/badge/-%23A54407?style=flat&logo=none) ![#50A819](https://img.shields.io/badge/-%2350A819?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-31 02:35:57
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(281, 70%, 39%) | rgb(124, 29, 169)  | #7C1DA9 | 97 |
| 2 | hsl(71, 40%, 69%)  | rgb(195, 207, 144) | #C3CF90 |187 |
| 3 | hsl(43, 59%, 34%)  | rgb(137, 108, 35)  | #896C23 |137 |
| 4 | hsl(316, 78%, 56%) | rgb(230, 55, 183)  | #E637B7 |170 |
| 5 | hsl(16, 94%, 61%)  | rgb(249, 111, 62)  | #F96F3E |209 |
| 6 | hsl(210, 43%, 68%) | rgb(138, 173, 208) | #8AADD0 |146 |
| 7 | hsl(23, 91%, 34%)  |  rgb(165, 68, 7)   | #A54407 |130 |
| 8 | hsl(97, 74%, 38%)  |  rgb(80, 168, 25)  | #50A819 |106 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(281, 70%, 39%),rgb(124, 29, 169),97
hsl(71, 40%, 69%),rgb(195, 207, 144),187
hsl(43, 59%, 34%),rgb(137, 108, 35),137
hsl(316, 78%, 56%),rgb(230, 55, 183),170
hsl(16, 94%, 61%),rgb(249, 111, 62),209
hsl(210, 43%, 68%),rgb(138, 173, 208),146
hsl(23, 91%, 34%),rgb(165, 68, 7),130
hsl(97, 74%, 38%),rgb(80, 168, 25),106

Generated: 2026-05-31 02:35:57
```
