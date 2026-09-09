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

![#4BD7B2](https://img.shields.io/badge/-%234BD7B2?style=flat&logo=none) ![#381CC4](https://img.shields.io/badge/-%23381CC4?style=flat&logo=none) ![#853E1E](https://img.shields.io/badge/-%23853E1E?style=flat&logo=none) ![#15835B](https://img.shields.io/badge/-%2315835B?style=flat&logo=none) ![#BED58A](https://img.shields.io/badge/-%23BED58A?style=flat&logo=none) ![#6471BE](https://img.shields.io/badge/-%236471BE?style=flat&logo=none) ![#0256A0](https://img.shields.io/badge/-%230256A0?style=flat&logo=none) ![#C62442](https://img.shields.io/badge/-%23C62442?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-09 12:34:41
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(164, 64%, 57%) | rgb(75, 215, 178)  | #4BD7B2 | 79 |
| 2 | hsl(250, 75%, 44%) |  rgb(56, 28, 196)  | #381CC4 | 62 |
| 3 | hsl(19, 63%, 32%)  |  rgb(133, 62, 30)  | #853E1E |131 |
| 4 | hsl(158, 72%, 30%) |  rgb(21, 131, 91)  | #15835B | 36 |
| 5 | hsl(78, 47%, 69%)  | rgb(190, 213, 138) | #BED58A |187 |
| 6 | hsl(231, 41%, 57%) | rgb(100, 113, 190) | #6471BE |104 |
| 7 | hsl(208, 97%, 32%) |  rgb(2, 86, 160)   | #0256A0 | 31 |
| 8 | hsl(349, 69%, 46%) |  rgb(198, 36, 66)  | #C62442 |167 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(164, 64%, 57%),rgb(75, 215, 178),79
hsl(250, 75%, 44%),rgb(56, 28, 196),62
hsl(19, 63%, 32%),rgb(133, 62, 30),131
hsl(158, 72%, 30%),rgb(21, 131, 91),36
hsl(78, 47%, 69%),rgb(190, 213, 138),187
hsl(231, 41%, 57%),rgb(100, 113, 190),104
hsl(208, 97%, 32%),rgb(2, 86, 160),31
hsl(349, 69%, 46%),rgb(198, 36, 66),167

Generated: 2026-09-09 12:34:41
```
