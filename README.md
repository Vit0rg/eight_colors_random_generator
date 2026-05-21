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

![#1ACB58](https://img.shields.io/badge/-%231ACB58?style=flat&logo=none) ![#6ADCB6](https://img.shields.io/badge/-%236ADCB6?style=flat&logo=none) ![#B0EE20](https://img.shields.io/badge/-%23B0EE20?style=flat&logo=none) ![#5C1FD4](https://img.shields.io/badge/-%235C1FD4?style=flat&logo=none) ![#CF85B7](https://img.shields.io/badge/-%23CF85B7?style=flat&logo=none) ![#5AB8D7](https://img.shields.io/badge/-%235AB8D7?style=flat&logo=none) ![#453898](https://img.shields.io/badge/-%23453898?style=flat&logo=none) ![#EB74DF](https://img.shields.io/badge/-%23EB74DF?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-21 02:30:10
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(141, 77%, 45%) |  rgb(26, 203, 88)  | #1ACB58 | 78 |
| 2 | hsl(160, 62%, 64%) | rgb(106, 220, 182) | #6ADCB6 |116 |
| 3 | hsl(78, 86%, 53%)  | rgb(176, 238, 32)  | #B0EE20 |155 |
| 4 | hsl(260, 74%, 48%) |  rgb(92, 31, 212)  | #5C1FD4 | 98 |
| 5 | hsl(320, 44%, 67%) | rgb(207, 133, 183) | #CF85B7 |182 |
| 6 | hsl(195, 61%, 60%) | rgb(90, 184, 215)  | #5AB8D7 |116 |
| 7 | hsl(248, 46%, 41%) |  rgb(69, 56, 152)  | #453898 | 61 |
| 8 | hsl(306, 75%, 69%) | rgb(235, 116, 223) | #EB74DF |212 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(141, 77%, 45%),rgb(26, 203, 88),78
hsl(160, 62%, 64%),rgb(106, 220, 182),116
hsl(78, 86%, 53%),rgb(176, 238, 32),155
hsl(260, 74%, 48%),rgb(92, 31, 212),98
hsl(320, 44%, 67%),rgb(207, 133, 183),182
hsl(195, 61%, 60%),rgb(90, 184, 215),116
hsl(248, 46%, 41%),rgb(69, 56, 152),61
hsl(306, 75%, 69%),rgb(235, 116, 223),212

Generated: 2026-05-21 02:30:10
```
