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

![#DE5BE5](https://img.shields.io/badge/-%23DE5BE5?style=flat&logo=none) ![#5ED4D8](https://img.shields.io/badge/-%235ED4D8?style=flat&logo=none) ![#EDB662](https://img.shields.io/badge/-%23EDB662?style=flat&logo=none) ![#9D9D43](https://img.shields.io/badge/-%239D9D43?style=flat&logo=none) ![#26962C](https://img.shields.io/badge/-%2326962C?style=flat&logo=none) ![#C97B72](https://img.shields.io/badge/-%23C97B72?style=flat&logo=none) ![#BE8D59](https://img.shields.io/badge/-%23BE8D59?style=flat&logo=none) ![#5327B9](https://img.shields.io/badge/-%235327B9?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-29 17:04:41
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(297, 73%, 63%) | rgb(222, 91, 229)  | #DE5BE5 |176 |
| 2 | hsl(182, 61%, 61%) | rgb(94, 212, 216)  | #5ED4D8 |116 |
| 3 | hsl(36, 80%, 66%)  | rgb(237, 182, 98)  | #EDB662 |222 |
| 4 | hsl(60, 40%, 44%)  | rgb(157, 157, 67)  | #9D9D43 |143 |
| 5 | hsl(123, 59%, 37%) |  rgb(38, 150, 44)  | #26962C | 71 |
| 6 |  hsl(6, 45%, 62%)  | rgb(201, 123, 114) | #C97B72 |174 |
| 7 | hsl(31, 44%, 55%)  | rgb(190, 141, 89)  | #BE8D59 |180 |
| 8 | hsl(258, 65%, 44%) |  rgb(83, 39, 185)  | #5327B9 | 98 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(297, 73%, 63%),rgb(222, 91, 229),176
hsl(182, 61%, 61%),rgb(94, 212, 216),116
hsl(36, 80%, 66%),rgb(237, 182, 98),222
hsl(60, 40%, 44%),rgb(157, 157, 67),143
hsl(123, 59%, 37%),rgb(38, 150, 44),71
hsl(6, 45%, 62%),rgb(201, 123, 114),174
hsl(31, 44%, 55%),rgb(190, 141, 89),180
hsl(258, 65%, 44%),rgb(83, 39, 185),98

Generated: 2026-07-29 17:04:41
```
