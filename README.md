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

![#C803E2](https://img.shields.io/badge/-%23C803E2?style=flat&logo=none) ![#EB3DF4](https://img.shields.io/badge/-%23EB3DF4?style=flat&logo=none) ![#713AE7](https://img.shields.io/badge/-%23713AE7?style=flat&logo=none) ![#3A4896](https://img.shields.io/badge/-%233A4896?style=flat&logo=none) ![#2EA357](https://img.shields.io/badge/-%232EA357?style=flat&logo=none) ![#9A722C](https://img.shields.io/badge/-%239A722C?style=flat&logo=none) ![#4CA8B2](https://img.shields.io/badge/-%234CA8B2?style=flat&logo=none) ![#88BA58](https://img.shields.io/badge/-%2388BA58?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-04 02:00:01
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(293, 97%, 45%) |  rgb(200, 3, 226)  | #C803E2 |164 |
| 2 | hsl(297, 90%, 60%) | rgb(235, 61, 244)  | #EB3DF4 |207 |
| 3 | hsl(259, 79%, 57%) | rgb(113, 58, 231)  | #713AE7 | 99 |
| 4 | hsl(231, 44%, 41%) |  rgb(58, 72, 150)  | #3A4896 | 61 |
| 5 | hsl(141, 56%, 41%) |  rgb(46, 163, 87)  | #2EA357 | 72 |
| 6 | hsl(38, 55%, 39%)  | rgb(154, 114, 44)  | #9A722C |137 |
| 7 | hsl(186, 40%, 50%) | rgb(76, 168, 178)  | #4CA8B2 | 73 |
| 8 | hsl(91, 42%, 54%)  | rgb(136, 186, 88)  | #88BA58 |150 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(293, 97%, 45%),rgb(200, 3, 226),164
hsl(297, 90%, 60%),rgb(235, 61, 244),207
hsl(259, 79%, 57%),rgb(113, 58, 231),99
hsl(231, 44%, 41%),rgb(58, 72, 150),61
hsl(141, 56%, 41%),rgb(46, 163, 87),72
hsl(38, 55%, 39%),rgb(154, 114, 44),137
hsl(186, 40%, 50%),rgb(76, 168, 178),73
hsl(91, 42%, 54%),rgb(136, 186, 88),150

Generated: 2026-05-04 02:00:01
```
