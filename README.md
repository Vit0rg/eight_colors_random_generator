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

![#D9868F](https://img.shields.io/badge/-%23D9868F?style=flat&logo=none) ![#DB8D7A](https://img.shields.io/badge/-%23DB8D7A?style=flat&logo=none) ![#404AD7](https://img.shields.io/badge/-%23404AD7?style=flat&logo=none) ![#5BD694](https://img.shields.io/badge/-%235BD694?style=flat&logo=none) ![#C4E967](https://img.shields.io/badge/-%23C4E967?style=flat&logo=none) ![#918DD2](https://img.shields.io/badge/-%23918DD2?style=flat&logo=none) ![#9734EE](https://img.shields.io/badge/-%239734EE?style=flat&logo=none) ![#8E5129](https://img.shields.io/badge/-%238E5129?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-26 17:29:31
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(354, 52%, 69%) | rgb(217, 134, 143) | #D9868F |181 |
| 2 | hsl(12, 58%, 67%)  | rgb(219, 141, 122) | #DB8D7A |180 |
| 3 | hsl(236, 66%, 55%) |  rgb(64, 74, 215)  | #404AD7 | 62 |
| 4 | hsl(148, 60%, 60%) | rgb(91, 214, 148)  | #5BD694 |115 |
| 5 | hsl(77, 75%, 66%)  | rgb(196, 233, 103) | #C4E967 |192 |
| 6 | hsl(244, 44%, 69%) | rgb(145, 141, 210) | #918DD2 |146 |
| 7 | hsl(272, 85%, 57%) | rgb(151, 52, 238)  | #9734EE |135 |
| 8 | hsl(24, 55%, 36%)  |  rgb(142, 81, 41)  | #8E5129 |137 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(354, 52%, 69%),rgb(217, 134, 143),181
hsl(12, 58%, 67%),rgb(219, 141, 122),180
hsl(236, 66%, 55%),rgb(64, 74, 215),62
hsl(148, 60%, 60%),rgb(91, 214, 148),115
hsl(77, 75%, 66%),rgb(196, 233, 103),192
hsl(244, 44%, 69%),rgb(145, 141, 210),146
hsl(272, 85%, 57%),rgb(151, 52, 238),135
hsl(24, 55%, 36%),rgb(142, 81, 41),137

Generated: 2026-06-26 17:29:31
```
