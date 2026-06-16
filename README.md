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

![#67BF88](https://img.shields.io/badge/-%2367BF88?style=flat&logo=none) ![#25BB39](https://img.shields.io/badge/-%2325BB39?style=flat&logo=none) ![#9690D4](https://img.shields.io/badge/-%239690D4?style=flat&logo=none) ![#7F3FD9](https://img.shields.io/badge/-%237F3FD9?style=flat&logo=none) ![#73A7EC](https://img.shields.io/badge/-%2373A7EC?style=flat&logo=none) ![#160BAB](https://img.shields.io/badge/-%23160BAB?style=flat&logo=none) ![#D86335](https://img.shields.io/badge/-%23D86335?style=flat&logo=none) ![#99AB0B](https://img.shields.io/badge/-%2399AB0B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-16 12:45:25
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(142, 41%, 58%) | rgb(103, 191, 136) | #67BF88 |115 |
| 2 | hsl(128, 67%, 44%) |  rgb(37, 187, 57)  | #25BB39 | 77 |
| 3 | hsl(245, 44%, 70%) | rgb(150, 144, 212) | #9690D4 |146 |
| 4 | hsl(265, 67%, 55%) | rgb(127, 63, 217)  | #7F3FD9 | 98 |
| 5 | hsl(214, 77%, 69%) | rgb(115, 167, 236) | #73A7EC |111 |
| 6 | hsl(244, 87%, 36%) |  rgb(22, 11, 171)  | #160BAB | 19 |
| 7 | hsl(17, 68%, 53%)  |  rgb(216, 99, 53)  | #D86335 |173 |
| 8 | hsl(67, 87%, 36%)  | rgb(153, 171, 11)  | #99AB0B |142 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(142, 41%, 58%),rgb(103, 191, 136),115
hsl(128, 67%, 44%),rgb(37, 187, 57),77
hsl(245, 44%, 70%),rgb(150, 144, 212),146
hsl(265, 67%, 55%),rgb(127, 63, 217),98
hsl(214, 77%, 69%),rgb(115, 167, 236),111
hsl(244, 87%, 36%),rgb(22, 11, 171),19
hsl(17, 68%, 53%),rgb(216, 99, 53),173
hsl(67, 87%, 36%),rgb(153, 171, 11),142

Generated: 2026-06-16 12:45:25
```
