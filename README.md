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

![#10BD03](https://img.shields.io/badge/-%2310BD03?style=flat&logo=none) ![#C8B46E](https://img.shields.io/badge/-%23C8B46E?style=flat&logo=none) ![#402681](https://img.shields.io/badge/-%23402681?style=flat&logo=none) ![#4D2EBB](https://img.shields.io/badge/-%234D2EBB?style=flat&logo=none) ![#A5C435](https://img.shields.io/badge/-%23A5C435?style=flat&logo=none) ![#841F31](https://img.shields.io/badge/-%23841F31?style=flat&logo=none) ![#80D0D4](https://img.shields.io/badge/-%2380D0D4?style=flat&logo=none) ![#163A9C](https://img.shields.io/badge/-%23163A9C?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-07 10:14:11
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(116, 96%, 38%) |  rgb(16, 189, 3)   | #10BD03 | 40 |
| 2 | hsl(47, 45%, 61%)  | rgb(200, 180, 110) | #C8B46E |186 |
| 3 | hsl(257, 54%, 33%) |  rgb(64, 38, 129)  | #402681 | 61 |
| 4 | hsl(253, 60%, 46%) |  rgb(77, 46, 187)  | #4D2EBB | 98 |
| 5 | hsl(73, 57%, 49%)  | rgb(165, 196, 53)  | #A5C435 |149 |
| 6 | hsl(349, 62%, 32%) |  rgb(132, 31, 49)  | #841F31 |131 |
| 7 | hsl(183, 50%, 67%) | rgb(128, 208, 212) | #80D0D4 |152 |
| 8 | hsl(224, 75%, 35%) |  rgb(22, 58, 156)  | #163A9C | 25 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(116, 96%, 38%),rgb(16, 189, 3),40
hsl(47, 45%, 61%),rgb(200, 180, 110),186
hsl(257, 54%, 33%),rgb(64, 38, 129),61
hsl(253, 60%, 46%),rgb(77, 46, 187),98
hsl(73, 57%, 49%),rgb(165, 196, 53),149
hsl(349, 62%, 32%),rgb(132, 31, 49),131
hsl(183, 50%, 67%),rgb(128, 208, 212),152
hsl(224, 75%, 35%),rgb(22, 58, 156),25

Generated: 2026-05-07 10:14:11
```
