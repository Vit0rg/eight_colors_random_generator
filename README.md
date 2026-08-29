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

![#34CA7A](https://img.shields.io/badge/-%2334CA7A?style=flat&logo=none) ![#A048FE](https://img.shields.io/badge/-%23A048FE?style=flat&logo=none) ![#0CB932](https://img.shields.io/badge/-%230CB932?style=flat&logo=none) ![#9A035B](https://img.shields.io/badge/-%239A035B?style=flat&logo=none) ![#221DC3](https://img.shields.io/badge/-%23221DC3?style=flat&logo=none) ![#09A601](https://img.shields.io/badge/-%2309A601?style=flat&logo=none) ![#25ED4D](https://img.shields.io/badge/-%2325ED4D?style=flat&logo=none) ![#AC1056](https://img.shields.io/badge/-%23AC1056?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-29 13:28:48
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(148, 59%, 50%) | rgb(52, 202, 122)  | #34CA7A | 78 |
| 2 | hsl(269, 99%, 64%) | rgb(160, 72, 254)  | #A048FE |135 |
| 3 | hsl(133, 87%, 39%) |  rgb(12, 185, 50)  | #0CB932 | 41 |
| 4 | hsl(325, 95%, 31%) |  rgb(154, 3, 91)   | #9A035B |126 |
| 5 | hsl(242, 74%, 44%) |  rgb(34, 29, 195)  | #221DC3 | 62 |
| 6 | hsl(117, 98%, 33%) |   rgb(9, 166, 1)   | #09A601 | 34 |
| 7 | hsl(132, 85%, 54%) |  rgb(37, 237, 77)  | #25ED4D | 84 |
| 8 | hsl(333, 83%, 37%) |  rgb(172, 16, 86)  | #AC1056 |126 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(148, 59%, 50%),rgb(52, 202, 122),78
hsl(269, 99%, 64%),rgb(160, 72, 254),135
hsl(133, 87%, 39%),rgb(12, 185, 50),41
hsl(325, 95%, 31%),rgb(154, 3, 91),126
hsl(242, 74%, 44%),rgb(34, 29, 195),62
hsl(117, 98%, 33%),rgb(9, 166, 1),34
hsl(132, 85%, 54%),rgb(37, 237, 77),84
hsl(333, 83%, 37%),rgb(172, 16, 86),126

Generated: 2026-08-29 13:28:48
```
