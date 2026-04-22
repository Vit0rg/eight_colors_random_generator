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

![#CE4485](https://img.shields.io/badge/-%23CE4485?style=flat&logo=none) ![#68CEA9](https://img.shields.io/badge/-%2368CEA9?style=flat&logo=none) ![#D4B543](https://img.shields.io/badge/-%23D4B543?style=flat&logo=none) ![#B20572](https://img.shields.io/badge/-%23B20572?style=flat&logo=none) ![#520DB4](https://img.shields.io/badge/-%23520DB4?style=flat&logo=none) ![#DA10BB](https://img.shields.io/badge/-%23DA10BB?style=flat&logo=none) ![#747CDC](https://img.shields.io/badge/-%23747CDC?style=flat&logo=none) ![#5574F1](https://img.shields.io/badge/-%235574F1?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-22 16:50:04
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(332, 59%, 54%) | rgb(206, 68, 133)  | #CE4485 |169 |
| 2 | hsl(158, 51%, 61%) | rgb(104, 206, 169) | #68CEA9 |115 |
| 3 | hsl(47, 63%, 55%)  | rgb(212, 181, 67)  | #D4B543 |185 |
| 4 | hsl(322, 94%, 36%) |  rgb(178, 5, 114)  | #B20572 |126 |
| 5 | hsl(265, 86%, 38%) |  rgb(82, 13, 180)  | #520DB4 | 92 |
| 6 | hsl(309, 86%, 46%) | rgb(218, 16, 187)  | #DA10BB |164 |
| 7 | hsl(235, 60%, 66%) | rgb(116, 124, 220) | #747CDC |104 |
| 8 | hsl(228, 85%, 64%) | rgb(85, 116, 241)  | #5574F1 |105 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(332, 59%, 54%),rgb(206, 68, 133),169
hsl(158, 51%, 61%),rgb(104, 206, 169),115
hsl(47, 63%, 55%),rgb(212, 181, 67),185
hsl(322, 94%, 36%),rgb(178, 5, 114),126
hsl(265, 86%, 38%),rgb(82, 13, 180),92
hsl(309, 86%, 46%),rgb(218, 16, 187),164
hsl(235, 60%, 66%),rgb(116, 124, 220),104
hsl(228, 85%, 64%),rgb(85, 116, 241),105

Generated: 2026-04-22 16:50:04
```
