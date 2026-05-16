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

![#C6759E](https://img.shields.io/badge/-%23C6759E?style=flat&logo=none) ![#9A0310](https://img.shields.io/badge/-%239A0310?style=flat&logo=none) ![#BE4DC0](https://img.shields.io/badge/-%23BE4DC0?style=flat&logo=none) ![#32DC45](https://img.shields.io/badge/-%2332DC45?style=flat&logo=none) ![#5EAE09](https://img.shields.io/badge/-%235EAE09?style=flat&logo=none) ![#76A6DA](https://img.shields.io/badge/-%2376A6DA?style=flat&logo=none) ![#EC0D8B](https://img.shields.io/badge/-%23EC0D8B?style=flat&logo=none) ![#355A82](https://img.shields.io/badge/-%23355A82?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-16 09:21:51
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(330, 42%, 62%) | rgb(198, 117, 158) | #C6759E |175 |
| 2 | hsl(355, 95%, 31%) |  rgb(154, 3, 16)   | #9A0310 |124 |
| 3 | hsl(299, 48%, 53%) | rgb(190, 77, 192)  | #BE4DC0 |176 |
| 4 | hsl(127, 71%, 53%) |  rgb(50, 220, 69)  | #32DC45 | 77 |
| 5 | hsl(89, 90%, 36%)  |  rgb(94, 174, 9)   | #5EAE09 |106 |
| 6 | hsl(211, 58%, 66%) | rgb(118, 166, 218) | #76A6DA |110 |
| 7 | hsl(326, 89%, 49%) | rgb(236, 13, 139)  | #EC0D8B |199 |
| 8 | hsl(211, 42%, 36%) |  rgb(53, 90, 130)  | #355A82 | 67 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(330, 42%, 62%),rgb(198, 117, 158),175
hsl(355, 95%, 31%),rgb(154, 3, 16),124
hsl(299, 48%, 53%),rgb(190, 77, 192),176
hsl(127, 71%, 53%),rgb(50, 220, 69),77
hsl(89, 90%, 36%),rgb(94, 174, 9),106
hsl(211, 58%, 66%),rgb(118, 166, 218),110
hsl(326, 89%, 49%),rgb(236, 13, 139),199
hsl(211, 42%, 36%),rgb(53, 90, 130),67

Generated: 2026-05-16 09:21:51
```
