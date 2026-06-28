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

![#376A94](https://img.shields.io/badge/-%23376A94?style=flat&logo=none) ![#824C30](https://img.shields.io/badge/-%23824C30?style=flat&logo=none) ![#1E5AEF](https://img.shields.io/badge/-%231E5AEF?style=flat&logo=none) ![#B1BC5C](https://img.shields.io/badge/-%23B1BC5C?style=flat&logo=none) ![#29935A](https://img.shields.io/badge/-%2329935A?style=flat&logo=none) ![#387C21](https://img.shields.io/badge/-%23387C21?style=flat&logo=none) ![#CA3EB7](https://img.shields.io/badge/-%23CA3EB7?style=flat&logo=none) ![#C70925](https://img.shields.io/badge/-%23C70925?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-28 10:20:51
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(207, 46%, 40%) | rgb(55, 106, 148)  | #376A94 | 67 |
| 2 | hsl(21, 46%, 35%)  |  rgb(130, 76, 48)  | #824C30 |131 |
| 3 | hsl(223, 87%, 53%) |  rgb(30, 90, 239)  | #1E5AEF | 69 |
| 4 | hsl(67, 42%, 55%)  | rgb(177, 188, 92)  | #B1BC5C |150 |
| 5 | hsl(148, 56%, 37%) |  rgb(41, 147, 90)  | #29935A | 72 |
| 6 | hsl(105, 58%, 31%) |  rgb(56, 124, 33)  | #387C21 | 65 |
| 7 | hsl(308, 57%, 52%) | rgb(202, 62, 183)  | #CA3EB7 |170 |
| 8 | hsl(351, 91%, 41%) |  rgb(199, 9, 37)   | #C70925 |161 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(207, 46%, 40%),rgb(55, 106, 148),67
hsl(21, 46%, 35%),rgb(130, 76, 48),131
hsl(223, 87%, 53%),rgb(30, 90, 239),69
hsl(67, 42%, 55%),rgb(177, 188, 92),150
hsl(148, 56%, 37%),rgb(41, 147, 90),72
hsl(105, 58%, 31%),rgb(56, 124, 33),65
hsl(308, 57%, 52%),rgb(202, 62, 183),170
hsl(351, 91%, 41%),rgb(199, 9, 37),161

Generated: 2026-06-28 10:20:51
```
