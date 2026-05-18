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

![#9A2EF9](https://img.shields.io/badge/-%239A2EF9?style=flat&logo=none) ![#128B1C](https://img.shields.io/badge/-%23128B1C?style=flat&logo=none) ![#380BA2](https://img.shields.io/badge/-%23380BA2?style=flat&logo=none) ![#FD34E2](https://img.shields.io/badge/-%23FD34E2?style=flat&logo=none) ![#FA931E](https://img.shields.io/badge/-%23FA931E?style=flat&logo=none) ![#B600B0](https://img.shields.io/badge/-%23B600B0?style=flat&logo=none) ![#DAEA47](https://img.shields.io/badge/-%23DAEA47?style=flat&logo=none) ![#EF3D67](https://img.shields.io/badge/-%23EF3D67?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-18 11:37:53
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(272, 95%, 58%) | rgb(154, 46, 249)  | #9A2EF9 |135 |
| 2 | hsl(125, 76%, 31%) |  rgb(18, 139, 28)  | #128B1C | 35 |
| 3 | hsl(258, 87%, 34%) |  rgb(56, 11, 162)  | #380BA2 | 55 |
| 4 | hsl(308, 99%, 60%) | rgb(253, 52, 226)  | #FD34E2 |206 |
| 5 | hsl(32, 96%, 55%)  | rgb(250, 147, 30)  | #FA931E |215 |
| 6 | hsl(302, 99%, 36%) |  rgb(182, 0, 176)  | #B600B0 |163 |
| 7 | hsl(66, 80%, 60%)  | rgb(218, 234, 71)  | #DAEA47 |191 |
| 8 | hsl(346, 85%, 59%) | rgb(239, 61, 103)  | #EF3D67 |204 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(272, 95%, 58%),rgb(154, 46, 249),135
hsl(125, 76%, 31%),rgb(18, 139, 28),35
hsl(258, 87%, 34%),rgb(56, 11, 162),55
hsl(308, 99%, 60%),rgb(253, 52, 226),206
hsl(32, 96%, 55%),rgb(250, 147, 30),215
hsl(302, 99%, 36%),rgb(182, 0, 176),163
hsl(66, 80%, 60%),rgb(218, 234, 71),191
hsl(346, 85%, 59%),rgb(239, 61, 103),204

Generated: 2026-05-18 11:37:53
```
