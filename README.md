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

![#23CB72](https://img.shields.io/badge/-%2323CB72?style=flat&logo=none) ![#B85197](https://img.shields.io/badge/-%23B85197?style=flat&logo=none) ![#8275D5](https://img.shields.io/badge/-%238275D5?style=flat&logo=none) ![#4AC3FC](https://img.shields.io/badge/-%234AC3FC?style=flat&logo=none) ![#6B86F4](https://img.shields.io/badge/-%236B86F4?style=flat&logo=none) ![#62D255](https://img.shields.io/badge/-%2362D255?style=flat&logo=none) ![#6198E5](https://img.shields.io/badge/-%236198E5?style=flat&logo=none) ![#B871D4](https://img.shields.io/badge/-%23B871D4?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-22 17:44:55
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(148, 70%, 47%) | rgb(35, 203, 114)  | #23CB72 | 78 |
| 2 | hsl(319, 42%, 52%) | rgb(184, 81, 151)  | #B85197 |175 |
| 3 | hsl(248, 54%, 65%) | rgb(130, 117, 213) | #8275D5 |140 |
| 4 | hsl(199, 97%, 64%) | rgb(74, 195, 252)  | #4AC3FC | 81 |
| 5 | hsl(228, 87%, 69%) | rgb(107, 134, 244) | #6B86F4 |111 |
| 6 | hsl(114, 58%, 58%) |  rgb(98, 210, 85)  | #62D255 |114 |
| 7 | hsl(215, 72%, 64%) | rgb(97, 152, 229)  | #6198E5 |110 |
| 8 | hsl(283, 54%, 64%) | rgb(184, 113, 212) | #B871D4 |176 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(148, 70%, 47%),rgb(35, 203, 114),78
hsl(319, 42%, 52%),rgb(184, 81, 151),175
hsl(248, 54%, 65%),rgb(130, 117, 213),140
hsl(199, 97%, 64%),rgb(74, 195, 252),81
hsl(228, 87%, 69%),rgb(107, 134, 244),111
hsl(114, 58%, 58%),rgb(98, 210, 85),114
hsl(215, 72%, 64%),rgb(97, 152, 229),110
hsl(283, 54%, 64%),rgb(184, 113, 212),176

Generated: 2026-05-22 17:44:55
```
