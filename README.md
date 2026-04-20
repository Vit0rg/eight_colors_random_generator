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

![#842D33](https://img.shields.io/badge/-%23842D33?style=flat&logo=none) ![#FDBC44](https://img.shields.io/badge/-%23FDBC44?style=flat&logo=none) ![#DC793B](https://img.shields.io/badge/-%23DC793B?style=flat&logo=none) ![#D1DF70](https://img.shields.io/badge/-%23D1DF70?style=flat&logo=none) ![#ABD816](https://img.shields.io/badge/-%23ABD816?style=flat&logo=none) ![#3DD038](https://img.shields.io/badge/-%233DD038?style=flat&logo=none) ![#3A6DBA](https://img.shields.io/badge/-%233A6DBA?style=flat&logo=none) ![#3BD259](https://img.shields.io/badge/-%233BD259?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-20 01:51:53
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(356, 49%, 35%) |  rgb(132, 45, 51)  | #842D33 |131 |
| 2 | hsl(39, 98%, 63%)  | rgb(253, 188, 68)  | #FDBC44 |221 |
| 3 | hsl(23, 70%, 55%)  | rgb(220, 121, 59)  | #DC793B |173 |
| 4 | hsl(68, 64%, 66%)  | rgb(209, 223, 112) | #D1DF70 |186 |
| 5 | hsl(74, 81%, 47%)  | rgb(171, 216, 22)  | #ABD816 |148 |
| 6 | hsl(118, 62%, 52%) |  rgb(61, 208, 56)  | #3DD038 | 77 |
| 7 | hsl(216, 52%, 48%) | rgb(58, 109, 186)  | #3A6DBA | 68 |
| 8 | hsl(132, 63%, 53%) |  rgb(59, 210, 89)  | #3BD259 | 78 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(356, 49%, 35%),rgb(132, 45, 51),131
hsl(39, 98%, 63%),rgb(253, 188, 68),221
hsl(23, 70%, 55%),rgb(220, 121, 59),173
hsl(68, 64%, 66%),rgb(209, 223, 112),186
hsl(74, 81%, 47%),rgb(171, 216, 22),148
hsl(118, 62%, 52%),rgb(61, 208, 56),77
hsl(216, 52%, 48%),rgb(58, 109, 186),68
hsl(132, 63%, 53%),rgb(59, 210, 89),78

Generated: 2026-04-20 01:51:53
```
