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

![#3115E9](https://img.shields.io/badge/-%233115E9?style=flat&logo=none) ![#76CBB8](https://img.shields.io/badge/-%2376CBB8?style=flat&logo=none) ![#1C7390](https://img.shields.io/badge/-%231C7390?style=flat&logo=none) ![#D416BA](https://img.shields.io/badge/-%23D416BA?style=flat&logo=none) ![#F99B43](https://img.shields.io/badge/-%23F99B43?style=flat&logo=none) ![#6DC05D](https://img.shields.io/badge/-%236DC05D?style=flat&logo=none) ![#B64315](https://img.shields.io/badge/-%23B64315?style=flat&logo=none) ![#42FA4E](https://img.shields.io/badge/-%2342FA4E?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-29 12:23:23
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(248, 83%, 50%) |  rgb(49, 21, 233)  | #3115E9 | 57 |
| 2 | hsl(167, 45%, 63%) | rgb(118, 203, 184) | #76CBB8 |116 |
| 3 | hsl(195, 67%, 34%) | rgb(28, 115, 144)  | #1C7390 | 67 |
| 4 | hsl(308, 81%, 46%) | rgb(212, 22, 186)  | #D416BA |164 |
| 5 | hsl(29, 94%, 62%)  | rgb(249, 155, 67)  | #F99B43 |215 |
| 6 | hsl(110, 44%, 56%) | rgb(109, 192, 93)  | #6DC05D |114 |
| 7 | hsl(17, 79%, 40%)  |  rgb(182, 67, 21)  | #B64315 |166 |
| 8 | hsl(124, 95%, 62%) |  rgb(66, 250, 78)  | #42FA4E | 84 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(248, 83%, 50%),rgb(49, 21, 233),57
hsl(167, 45%, 63%),rgb(118, 203, 184),116
hsl(195, 67%, 34%),rgb(28, 115, 144),67
hsl(308, 81%, 46%),rgb(212, 22, 186),164
hsl(29, 94%, 62%),rgb(249, 155, 67),215
hsl(110, 44%, 56%),rgb(109, 192, 93),114
hsl(17, 79%, 40%),rgb(182, 67, 21),166
hsl(124, 95%, 62%),rgb(66, 250, 78),84

Generated: 2026-06-29 12:23:23
```
