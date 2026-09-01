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

![#CE259C](https://img.shields.io/badge/-%23CE259C?style=flat&logo=none) ![#239896](https://img.shields.io/badge/-%23239896?style=flat&logo=none) ![#FDFA24](https://img.shields.io/badge/-%23FDFA24?style=flat&logo=none) ![#B61ACB](https://img.shields.io/badge/-%23B61ACB?style=flat&logo=none) ![#360CAA](https://img.shields.io/badge/-%23360CAA?style=flat&logo=none) ![#3428A3](https://img.shields.io/badge/-%233428A3?style=flat&logo=none) ![#AFF06F](https://img.shields.io/badge/-%23AFF06F?style=flat&logo=none) ![#267191](https://img.shields.io/badge/-%23267191?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-01 02:42:02
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(318, 69%, 48%) | rgb(206, 37, 156)  | #CE259C |169 |
| 2 | hsl(179, 62%, 37%) | rgb(35, 152, 150)  | #239896 | 73 |
| 3 | hsl(59, 99%, 57%)  | rgb(253, 250, 36)  | #FDFA24 |227 |
| 4 | hsl(293, 77%, 45%) | rgb(182, 26, 203)  | #B61ACB |170 |
| 5 | hsl(256, 86%, 36%) |  rgb(54, 12, 170)  | #360CAA | 55 |
| 6 | hsl(246, 60%, 40%) |  rgb(52, 40, 163)  | #3428A3 | 61 |
| 7 | hsl(90, 82%, 69%)  | rgb(175, 240, 111) | #AFF06F |156 |
| 8 | hsl(198, 58%, 36%) | rgb(38, 113, 145)  | #267191 | 67 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(318, 69%, 48%),rgb(206, 37, 156),169
hsl(179, 62%, 37%),rgb(35, 152, 150),73
hsl(59, 99%, 57%),rgb(253, 250, 36),227
hsl(293, 77%, 45%),rgb(182, 26, 203),170
hsl(256, 86%, 36%),rgb(54, 12, 170),55
hsl(246, 60%, 40%),rgb(52, 40, 163),61
hsl(90, 82%, 69%),rgb(175, 240, 111),156
hsl(198, 58%, 36%),rgb(38, 113, 145),67

Generated: 2026-09-01 02:42:02
```
