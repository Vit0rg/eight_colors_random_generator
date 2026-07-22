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

![#F71B8D](https://img.shields.io/badge/-%23F71B8D?style=flat&logo=none) ![#643FA0](https://img.shields.io/badge/-%23643FA0?style=flat&logo=none) ![#905921](https://img.shields.io/badge/-%23905921?style=flat&logo=none) ![#5DD84A](https://img.shields.io/badge/-%235DD84A?style=flat&logo=none) ![#BA4976](https://img.shields.io/badge/-%23BA4976?style=flat&logo=none) ![#72993D](https://img.shields.io/badge/-%2372993D?style=flat&logo=none) ![#64B6C8](https://img.shields.io/badge/-%2364B6C8?style=flat&logo=none) ![#94CC46](https://img.shields.io/badge/-%2394CC46?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-22 10:15:12
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(329, 94%, 54%) | rgb(247, 27, 141)  | #F71B8D |205 |
| 2 | hsl(263, 43%, 44%) | rgb(100, 63, 160)  | #643FA0 | 97 |
| 3 | hsl(30, 62%, 35%)  |  rgb(144, 89, 33)  | #905921 |137 |
| 4 | hsl(112, 65%, 57%) |  rgb(93, 216, 74)  | #5DD84A |113 |
| 5 | hsl(336, 45%, 51%) | rgb(186, 73, 118)  | #BA4976 |168 |
| 6 | hsl(85, 43%, 42%)  | rgb(114, 153, 61)  | #72993D |107 |
| 7 | hsl(191, 48%, 59%) | rgb(100, 182, 200) | #64B6C8 |116 |
| 8 | hsl(85, 57%, 54%)  | rgb(148, 204, 70)  | #94CC46 |149 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(329, 94%, 54%),rgb(247, 27, 141),205
hsl(263, 43%, 44%),rgb(100, 63, 160),97
hsl(30, 62%, 35%),rgb(144, 89, 33),137
hsl(112, 65%, 57%),rgb(93, 216, 74),113
hsl(336, 45%, 51%),rgb(186, 73, 118),168
hsl(85, 43%, 42%),rgb(114, 153, 61),107
hsl(191, 48%, 59%),rgb(100, 182, 200),116
hsl(85, 57%, 54%),rgb(148, 204, 70),149

Generated: 2026-07-22 10:15:12
```
