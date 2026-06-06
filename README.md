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

![#E4240A](https://img.shields.io/badge/-%23E4240A?style=flat&logo=none) ![#6BDFF3](https://img.shields.io/badge/-%236BDFF3?style=flat&logo=none) ![#444CF3](https://img.shields.io/badge/-%23444CF3?style=flat&logo=none) ![#6F1DEB](https://img.shields.io/badge/-%236F1DEB?style=flat&logo=none) ![#8056B8](https://img.shields.io/badge/-%238056B8?style=flat&logo=none) ![#138534](https://img.shields.io/badge/-%23138534?style=flat&logo=none) ![#DE1B59](https://img.shields.io/badge/-%23DE1B59?style=flat&logo=none) ![#239BAD](https://img.shields.io/badge/-%23239BAD?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-06 17:00:22
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 |  hsl(7, 91%, 47%)  |  rgb(228, 36, 10)  | #E4240A |166 |
| 2 | hsl(189, 86%, 69%) | rgb(107, 223, 243) | #6BDFF3 |117 |
| 3 | hsl(237, 88%, 61%) |  rgb(68, 76, 243)  | #444CF3 | 63 |
| 4 | hsl(264, 84%, 52%) | rgb(111, 29, 235)  | #6F1DEB | 99 |
| 5 | hsl(266, 41%, 53%) | rgb(128, 86, 184)  | #8056B8 |140 |
| 6 | hsl(137, 74%, 30%) |  rgb(19, 133, 52)  | #138534 | 35 |
| 7 | hsl(341, 78%, 49%) |  rgb(222, 27, 89)  | #DE1B59 |168 |
| 8 | hsl(188, 66%, 41%) | rgb(35, 155, 173)  | #239BAD | 73 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(7, 91%, 47%),rgb(228, 36, 10),166
hsl(189, 86%, 69%),rgb(107, 223, 243),117
hsl(237, 88%, 61%),rgb(68, 76, 243),63
hsl(264, 84%, 52%),rgb(111, 29, 235),99
hsl(266, 41%, 53%),rgb(128, 86, 184),140
hsl(137, 74%, 30%),rgb(19, 133, 52),35
hsl(341, 78%, 49%),rgb(222, 27, 89),168
hsl(188, 66%, 41%),rgb(35, 155, 173),73

Generated: 2026-06-06 17:00:22
```
