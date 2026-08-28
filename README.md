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

![#E353A5](https://img.shields.io/badge/-%23E353A5?style=flat&logo=none) ![#219B6E](https://img.shields.io/badge/-%23219B6E?style=flat&logo=none) ![#8C24C0](https://img.shields.io/badge/-%238C24C0?style=flat&logo=none) ![#CF154D](https://img.shields.io/badge/-%23CF154D?style=flat&logo=none) ![#C082DD](https://img.shields.io/badge/-%23C082DD?style=flat&logo=none) ![#0BC55F](https://img.shields.io/badge/-%230BC55F?style=flat&logo=none) ![#2CF621](https://img.shields.io/badge/-%232CF621?style=flat&logo=none) ![#0B86DE](https://img.shields.io/badge/-%230B86DE?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-28 08:02:23
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(326, 72%, 61%) | rgb(227, 83, 165)  | #E353A5 |175 |
| 2 | hsl(158, 65%, 37%) | rgb(33, 155, 110)  | #219B6E | 72 |
| 3 | hsl(280, 68%, 45%) | rgb(140, 36, 192)  | #8C24C0 |134 |
| 4 | hsl(342, 81%, 45%) |  rgb(207, 21, 77)  | #CF154D |162 |
| 5 | hsl(281, 58%, 69%) | rgb(192, 130, 221) | #C082DD |182 |
| 6 | hsl(147, 89%, 41%) |  rgb(11, 197, 95)  | #0BC55F | 42 |
| 7 | hsl(117, 93%, 55%) |  rgb(44, 246, 33)  | #2CF621 | 83 |
| 8 | hsl(205, 90%, 46%) | rgb(11, 134, 222)  | #0B86DE | 38 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(326, 72%, 61%),rgb(227, 83, 165),175
hsl(158, 65%, 37%),rgb(33, 155, 110),72
hsl(280, 68%, 45%),rgb(140, 36, 192),134
hsl(342, 81%, 45%),rgb(207, 21, 77),162
hsl(281, 58%, 69%),rgb(192, 130, 221),182
hsl(147, 89%, 41%),rgb(11, 197, 95),42
hsl(117, 93%, 55%),rgb(44, 246, 33),83
hsl(205, 90%, 46%),rgb(11, 134, 222),38

Generated: 2026-08-28 08:02:23
```
