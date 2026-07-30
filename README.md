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

![#3D5BF4](https://img.shields.io/badge/-%233D5BF4?style=flat&logo=none) ![#6EB133](https://img.shields.io/badge/-%236EB133?style=flat&logo=none) ![#DB7F3D](https://img.shields.io/badge/-%23DB7F3D?style=flat&logo=none) ![#3ADFFD](https://img.shields.io/badge/-%233ADFFD?style=flat&logo=none) ![#E1D609](https://img.shields.io/badge/-%23E1D609?style=flat&logo=none) ![#B0EA3D](https://img.shields.io/badge/-%23B0EA3D?style=flat&logo=none) ![#8E2352](https://img.shields.io/badge/-%238E2352?style=flat&logo=none) ![#F0F943](https://img.shields.io/badge/-%23F0F943?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-30 10:13:23
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(230, 90%, 60%) |  rgb(61, 91, 244)  | #3D5BF4 | 69 |
| 2 | hsl(92, 55%, 45%)  | rgb(110, 177, 51)  | #6EB133 |107 |
| 3 | hsl(25, 69%, 55%)  | rgb(219, 127, 61)  | #DB7F3D |173 |
| 4 | hsl(189, 98%, 61%) | rgb(58, 223, 253)  | #3ADFFD | 81 |
| 5 | hsl(57, 92%, 46%)  |  rgb(225, 214, 9)  | #E1D609 |184 |
| 6 | hsl(80, 81%, 58%)  | rgb(176, 234, 61)  | #B0EA3D |155 |
| 7 | hsl(334, 60%, 35%) |  rgb(142, 35, 82)  | #8E2352 |132 |
| 8 | hsl(63, 94%, 62%)  | rgb(240, 249, 67)  | #F0F943 |227 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(230, 90%, 60%),rgb(61, 91, 244),69
hsl(92, 55%, 45%),rgb(110, 177, 51),107
hsl(25, 69%, 55%),rgb(219, 127, 61),173
hsl(189, 98%, 61%),rgb(58, 223, 253),81
hsl(57, 92%, 46%),rgb(225, 214, 9),184
hsl(80, 81%, 58%),rgb(176, 234, 61),155
hsl(334, 60%, 35%),rgb(142, 35, 82),132
hsl(63, 94%, 62%),rgb(240, 249, 67),227

Generated: 2026-07-30 10:13:23
```
