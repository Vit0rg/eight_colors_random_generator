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

![#9D0FB6](https://img.shields.io/badge/-%239D0FB6?style=flat&logo=none) ![#7302B4](https://img.shields.io/badge/-%237302B4?style=flat&logo=none) ![#1F9D4F](https://img.shields.io/badge/-%231F9D4F?style=flat&logo=none) ![#E8AE77](https://img.shields.io/badge/-%23E8AE77?style=flat&logo=none) ![#77B33B](https://img.shields.io/badge/-%2377B33B?style=flat&logo=none) ![#6281CA](https://img.shields.io/badge/-%236281CA?style=flat&logo=none) ![#4326E8](https://img.shields.io/badge/-%234326E8?style=flat&logo=none) ![#E95848](https://img.shields.io/badge/-%23E95848?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-13 16:44:48
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(291, 84%, 39%) | rgb(157, 15, 182)  | #9D0FB6 |128 |
| 2 | hsl(278, 97%, 36%) |  rgb(115, 2, 180)  | #7302B4 | 92 |
| 3 | hsl(143, 67%, 37%) |  rgb(31, 157, 79)  | #1F9D4F | 72 |
| 4 | hsl(29, 72%, 69%)  | rgb(232, 174, 119) | #E8AE77 |216 |
| 5 | hsl(90, 50%, 47%)  | rgb(119, 179, 59)  | #77B33B |107 |
| 6 | hsl(222, 50%, 59%) | rgb(98, 129, 202)  | #6281CA |110 |
| 7 | hsl(249, 81%, 53%) |  rgb(67, 38, 232)  | #4326E8 | 63 |
| 8 |  hsl(6, 79%, 60%)  |  rgb(233, 88, 72)  | #E95848 |209 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(291, 84%, 39%),rgb(157, 15, 182),128
hsl(278, 97%, 36%),rgb(115, 2, 180),92
hsl(143, 67%, 37%),rgb(31, 157, 79),72
hsl(29, 72%, 69%),rgb(232, 174, 119),216
hsl(90, 50%, 47%),rgb(119, 179, 59),107
hsl(222, 50%, 59%),rgb(98, 129, 202),110
hsl(249, 81%, 53%),rgb(67, 38, 232),63
hsl(6, 79%, 60%),rgb(233, 88, 72),209

Generated: 2026-08-13 16:44:48
```
