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

![#210D90](https://img.shields.io/badge/-%23210D90?style=flat&logo=none) ![#7765EB](https://img.shields.io/badge/-%237765EB?style=flat&logo=none) ![#8FD835](https://img.shields.io/badge/-%238FD835?style=flat&logo=none) ![#9E15B6](https://img.shields.io/badge/-%239E15B6?style=flat&logo=none) ![#F02856](https://img.shields.io/badge/-%23F02856?style=flat&logo=none) ![#9C80D0](https://img.shields.io/badge/-%239C80D0?style=flat&logo=none) ![#881410](https://img.shields.io/badge/-%23881410?style=flat&logo=none) ![#87CE8B](https://img.shields.io/badge/-%2387CE8B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-06 17:22:59
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(249, 83%, 31%) |  rgb(33, 13, 144)  | #210D90 | 55 |
| 2 | hsl(248, 77%, 66%) | rgb(119, 101, 235) | #7765EB |105 |
| 3 | hsl(87, 68%, 53%)  | rgb(143, 216, 53)  | #8FD835 |149 |
| 4 | hsl(291, 79%, 40%) | rgb(158, 21, 182)  | #9E15B6 |128 |
| 5 | hsl(346, 87%, 55%) |  rgb(240, 40, 86)  | #F02856 |204 |
| 6 | hsl(261, 46%, 66%) | rgb(156, 128, 208) | #9C80D0 |146 |
| 7 |  hsl(2, 78%, 30%)  |  rgb(136, 20, 16)  | #881410 |124 |
| 8 | hsl(123, 42%, 67%) | rgb(135, 206, 139) | #87CE8B |151 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(249, 83%, 31%),rgb(33, 13, 144),55
hsl(248, 77%, 66%),rgb(119, 101, 235),105
hsl(87, 68%, 53%),rgb(143, 216, 53),149
hsl(291, 79%, 40%),rgb(158, 21, 182),128
hsl(346, 87%, 55%),rgb(240, 40, 86),204
hsl(261, 46%, 66%),rgb(156, 128, 208),146
hsl(2, 78%, 30%),rgb(136, 20, 16),124
hsl(123, 42%, 67%),rgb(135, 206, 139),151

Generated: 2026-05-06 17:22:59
```
