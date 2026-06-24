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

![#562DBC](https://img.shields.io/badge/-%23562DBC?style=flat&logo=none) ![#6023FA](https://img.shields.io/badge/-%236023FA?style=flat&logo=none) ![#B0014D](https://img.shields.io/badge/-%23B0014D?style=flat&logo=none) ![#ADA205](https://img.shields.io/badge/-%23ADA205?style=flat&logo=none) ![#C97D26](https://img.shields.io/badge/-%23C97D26?style=flat&logo=none) ![#C55F1A](https://img.shields.io/badge/-%23C55F1A?style=flat&logo=none) ![#8158D9](https://img.shields.io/badge/-%238158D9?style=flat&logo=none) ![#6C9D38](https://img.shields.io/badge/-%236C9D38?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-24 17:47:14
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(257, 61%, 46%) |  rgb(86, 45, 188)  | #562DBC | 98 |
| 2 | hsl(257, 96%, 56%) |  rgb(96, 35, 250)  | #6023FA | 99 |
| 3 | hsl(334, 98%, 35%) |  rgb(176, 1, 77)   | #B0014D |126 |
| 4 | hsl(56, 94%, 35%)  |  rgb(173, 162, 5)  | #ADA205 |142 |
| 5 | hsl(32, 68%, 47%)  | rgb(201, 125, 38)  | #C97D26 |173 |
| 6 | hsl(24, 76%, 44%)  |  rgb(197, 95, 26)  | #C55F1A |173 |
| 7 | hsl(259, 63%, 60%) | rgb(129, 88, 217)  | #8158D9 |140 |
| 8 | hsl(89, 47%, 42%)  | rgb(108, 157, 56)  | #6C9D38 |107 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(257, 61%, 46%),rgb(86, 45, 188),98
hsl(257, 96%, 56%),rgb(96, 35, 250),99
hsl(334, 98%, 35%),rgb(176, 1, 77),126
hsl(56, 94%, 35%),rgb(173, 162, 5),142
hsl(32, 68%, 47%),rgb(201, 125, 38),173
hsl(24, 76%, 44%),rgb(197, 95, 26),173
hsl(259, 63%, 60%),rgb(129, 88, 217),140
hsl(89, 47%, 42%),rgb(108, 157, 56),107

Generated: 2026-06-24 17:47:14
```
