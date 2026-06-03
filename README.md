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

![#337E38](https://img.shields.io/badge/-%23337E38?style=flat&logo=none) ![#C911F7](https://img.shields.io/badge/-%23C911F7?style=flat&logo=none) ![#3743AE](https://img.shields.io/badge/-%233743AE?style=flat&logo=none) ![#FE52FB](https://img.shields.io/badge/-%23FE52FB?style=flat&logo=none) ![#AD2E45](https://img.shields.io/badge/-%23AD2E45?style=flat&logo=none) ![#54F6AB](https://img.shields.io/badge/-%2354F6AB?style=flat&logo=none) ![#916F30](https://img.shields.io/badge/-%23916F30?style=flat&logo=none) ![#897F1A](https://img.shields.io/badge/-%23897F1A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-03 19:42:10
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(124, 42%, 35%) |  rgb(51, 126, 56)  | #337E38 | 65 |
| 2 | hsl(288, 94%, 52%) | rgb(201, 17, 247)  | #C911F7 |165 |
| 3 | hsl(234, 52%, 45%) |  rgb(55, 67, 174)  | #3743AE | 61 |
| 4 | hsl(301, 99%, 66%) | rgb(254, 82, 251)  | #FE52FB |213 |
| 5 | hsl(349, 58%, 43%) |  rgb(173, 46, 69)  | #AD2E45 |131 |
| 6 | hsl(152, 91%, 65%) | rgb(84, 246, 171)  | #54F6AB |121 |
| 7 | hsl(39, 50%, 38%)  | rgb(145, 111, 48)  | #916F30 |137 |
| 8 | hsl(55, 68%, 32%)  | rgb(137, 127, 26)  | #897F1A |137 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(124, 42%, 35%),rgb(51, 126, 56),65
hsl(288, 94%, 52%),rgb(201, 17, 247),165
hsl(234, 52%, 45%),rgb(55, 67, 174),61
hsl(301, 99%, 66%),rgb(254, 82, 251),213
hsl(349, 58%, 43%),rgb(173, 46, 69),131
hsl(152, 91%, 65%),rgb(84, 246, 171),121
hsl(39, 50%, 38%),rgb(145, 111, 48),137
hsl(55, 68%, 32%),rgb(137, 127, 26),137

Generated: 2026-06-03 19:42:10
```
