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

![#C600E0](https://img.shields.io/badge/-%23C600E0?style=flat&logo=none) ![#7811D9](https://img.shields.io/badge/-%237811D9?style=flat&logo=none) ![#ACAC24](https://img.shields.io/badge/-%23ACAC24?style=flat&logo=none) ![#1AA280](https://img.shields.io/badge/-%231AA280?style=flat&logo=none) ![#DE4460](https://img.shields.io/badge/-%23DE4460?style=flat&logo=none) ![#C28760](https://img.shields.io/badge/-%23C28760?style=flat&logo=none) ![#D42F84](https://img.shields.io/badge/-%23D42F84?style=flat&logo=none) ![#F69869](https://img.shields.io/badge/-%23F69869?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-13 02:10:00
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 |hsl(293, 100%, 44%) |  rgb(198, 0, 224)  | #C600E0 |164 |
| 2 | hsl(271, 85%, 46%) | rgb(120, 17, 217)  | #7811D9 | 92 |
| 3 | hsl(60, 65%, 41%)  | rgb(172, 172, 36)  | #ACAC24 |143 |
| 4 | hsl(165, 72%, 37%) | rgb(26, 162, 128)  | #1AA280 | 73 |
| 5 | hsl(349, 70%, 57%) |  rgb(222, 68, 96)  | #DE4460 |168 |
| 6 | hsl(24, 45%, 57%)  | rgb(194, 135, 96)  | #C28760 |180 |
| 7 | hsl(329, 66%, 51%) | rgb(212, 47, 132)  | #D42F84 |169 |
| 8 | hsl(20, 89%, 69%)  | rgb(246, 152, 105) | #F69869 |216 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(293, 100%, 44%),rgb(198, 0, 224),164
hsl(271, 85%, 46%),rgb(120, 17, 217),92
hsl(60, 65%, 41%),rgb(172, 172, 36),143
hsl(165, 72%, 37%),rgb(26, 162, 128),73
hsl(349, 70%, 57%),rgb(222, 68, 96),168
hsl(24, 45%, 57%),rgb(194, 135, 96),180
hsl(329, 66%, 51%),rgb(212, 47, 132),169
hsl(20, 89%, 69%),rgb(246, 152, 105),216

Generated: 2026-09-13 02:10:00
```
