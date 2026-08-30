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

![#C2EE3E](https://img.shields.io/badge/-%23C2EE3E?style=flat&logo=none) ![#927F34](https://img.shields.io/badge/-%23927F34?style=flat&logo=none) ![#AB0B1B](https://img.shields.io/badge/-%23AB0B1B?style=flat&logo=none) ![#894019](https://img.shields.io/badge/-%23894019?style=flat&logo=none) ![#E82632](https://img.shields.io/badge/-%23E82632?style=flat&logo=none) ![#4FA9DD](https://img.shields.io/badge/-%234FA9DD?style=flat&logo=none) ![#D929E9](https://img.shields.io/badge/-%23D929E9?style=flat&logo=none) ![#89E42F](https://img.shields.io/badge/-%2389E42F?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-30 02:31:55
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(75, 84%, 59%)  | rgb(194, 238, 62)  | #C2EE3E |191 |
| 2 | hsl(48, 47%, 39%)  | rgb(146, 127, 52)  | #927F34 |137 |
| 3 | hsl(354, 87%, 36%) |  rgb(171, 11, 27)  | #AB0B1B |125 |
| 4 | hsl(21, 69%, 32%)  |  rgb(137, 64, 25)  | #894019 |130 |
| 5 | hsl(356, 81%, 53%) |  rgb(232, 38, 50)  | #E82632 |203 |
| 6 | hsl(202, 68%, 59%) | rgb(79, 169, 221)  | #4FA9DD |110 |
| 7 | hsl(295, 82%, 54%) | rgb(217, 41, 233)  | #D929E9 |171 |
| 8 | hsl(90, 77%, 54%)  | rgb(137, 228, 47)  | #89E42F |149 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(75, 84%, 59%),rgb(194, 238, 62),191
hsl(48, 47%, 39%),rgb(146, 127, 52),137
hsl(354, 87%, 36%),rgb(171, 11, 27),125
hsl(21, 69%, 32%),rgb(137, 64, 25),130
hsl(356, 81%, 53%),rgb(232, 38, 50),203
hsl(202, 68%, 59%),rgb(79, 169, 221),110
hsl(295, 82%, 54%),rgb(217, 41, 233),171
hsl(90, 77%, 54%),rgb(137, 228, 47),149

Generated: 2026-08-30 02:31:55
```
