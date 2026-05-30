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

![#42B251](https://img.shields.io/badge/-%2342B251?style=flat&logo=none) ![#0CFCE0](https://img.shields.io/badge/-%230CFCE0?style=flat&logo=none) ![#E28154](https://img.shields.io/badge/-%23E28154?style=flat&logo=none) ![#52B23D](https://img.shields.io/badge/-%2352B23D?style=flat&logo=none) ![#263B96](https://img.shields.io/badge/-%23263B96?style=flat&logo=none) ![#863EE4](https://img.shields.io/badge/-%23863EE4?style=flat&logo=none) ![#B53F4D](https://img.shields.io/badge/-%23B53F4D?style=flat&logo=none) ![#C39E64](https://img.shields.io/badge/-%23C39E64?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-30 09:51:15
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(128, 46%, 48%) |  rgb(66, 178, 81)  | #42B251 | 72 |
| 2 | hsl(173, 98%, 52%) | rgb(12, 252, 224)  | #0CFCE0 | 50 |
| 3 | hsl(19, 71%, 61%)  | rgb(226, 129, 84)  | #E28154 |180 |
| 4 | hsl(109, 49%, 47%) |  rgb(82, 178, 61)  | #52B23D |107 |
| 5 | hsl(229, 59%, 37%) |  rgb(38, 59, 150)  | #263B96 | 61 |
| 6 | hsl(266, 76%, 57%) | rgb(134, 62, 228)  | #863EE4 |134 |
| 7 | hsl(353, 48%, 48%) |  rgb(181, 63, 77)  | #B53F4D |168 |
| 8 | hsl(37, 44%, 58%)  | rgb(195, 158, 100) | #C39E64 |180 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(128, 46%, 48%),rgb(66, 178, 81),72
hsl(173, 98%, 52%),rgb(12, 252, 224),50
hsl(19, 71%, 61%),rgb(226, 129, 84),180
hsl(109, 49%, 47%),rgb(82, 178, 61),107
hsl(229, 59%, 37%),rgb(38, 59, 150),61
hsl(266, 76%, 57%),rgb(134, 62, 228),134
hsl(353, 48%, 48%),rgb(181, 63, 77),168
hsl(37, 44%, 58%),rgb(195, 158, 100),180

Generated: 2026-05-30 09:51:15
```
