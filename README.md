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

![#1874F5](https://img.shields.io/badge/-%231874F5?style=flat&logo=none) ![#B604D1](https://img.shields.io/badge/-%23B604D1?style=flat&logo=none) ![#099FD1](https://img.shields.io/badge/-%23099FD1?style=flat&logo=none) ![#6F57DA](https://img.shields.io/badge/-%236F57DA?style=flat&logo=none) ![#746CE9](https://img.shields.io/badge/-%23746CE9?style=flat&logo=none) ![#F353E5](https://img.shields.io/badge/-%23F353E5?style=flat&logo=none) ![#DDD268](https://img.shields.io/badge/-%23DDD268?style=flat&logo=none) ![#1E6285](https://img.shields.io/badge/-%231E6285?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-14 01:29:45
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(215, 92%, 53%) | rgb(24, 116, 245)  | #1874F5 | 33 |
| 2 | hsl(292, 96%, 42%) |  rgb(182, 4, 209)  | #B604D1 |164 |
| 3 | hsl(195, 91%, 43%) |  rgb(9, 159, 209)  | #099FD1 | 38 |
| 4 | hsl(251, 64%, 60%) | rgb(111, 87, 218)  | #6F57DA |104 |
| 5 | hsl(244, 74%, 67%) | rgb(116, 108, 233) | #746CE9 |105 |
| 6 | hsl(305, 87%, 64%) | rgb(243, 83, 229)  | #F353E5 |212 |
| 7 | hsl(54, 64%, 64%)  | rgb(221, 210, 104) | #DDD268 |186 |
| 8 | hsl(200, 63%, 32%) |  rgb(30, 98, 133)  | #1E6285 | 67 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(215, 92%, 53%),rgb(24, 116, 245),33
hsl(292, 96%, 42%),rgb(182, 4, 209),164
hsl(195, 91%, 43%),rgb(9, 159, 209),38
hsl(251, 64%, 60%),rgb(111, 87, 218),104
hsl(244, 74%, 67%),rgb(116, 108, 233),105
hsl(305, 87%, 64%),rgb(243, 83, 229),212
hsl(54, 64%, 64%),rgb(221, 210, 104),186
hsl(200, 63%, 32%),rgb(30, 98, 133),67

Generated: 2026-07-14 01:29:45
```
