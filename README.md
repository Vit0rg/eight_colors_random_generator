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

![#7D16DE](https://img.shields.io/badge/-%237D16DE?style=flat&logo=none) ![#6410CA](https://img.shields.io/badge/-%236410CA?style=flat&logo=none) ![#B61518](https://img.shields.io/badge/-%23B61518?style=flat&logo=none) ![#C65B38](https://img.shields.io/badge/-%23C65B38?style=flat&logo=none) ![#D5EA32](https://img.shields.io/badge/-%23D5EA32?style=flat&logo=none) ![#927DDD](https://img.shields.io/badge/-%23927DDD?style=flat&logo=none) ![#6B2BC4](https://img.shields.io/badge/-%236B2BC4?style=flat&logo=none) ![#E2D112](https://img.shields.io/badge/-%23E2D112?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-11 16:43:25
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(271, 82%, 48%) | rgb(125, 22, 222)  | #7D16DE | 92 |
| 2 | hsl(267, 85%, 43%) | rgb(100, 16, 202)  | #6410CA | 92 |
| 3 | hsl(359, 79%, 40%) |  rgb(182, 21, 24)  | #B61518 |160 |
| 4 | hsl(15, 56%, 50%)  |  rgb(198, 91, 56)  | #C65B38 |173 |
| 5 | hsl(67, 82%, 56%)  | rgb(213, 234, 50)  | #D5EA32 |191 |
| 6 | hsl(253, 59%, 68%) | rgb(146, 125, 221) | #927DDD |140 |
| 7 | hsl(265, 64%, 47%) | rgb(107, 43, 196)  | #6B2BC4 | 98 |
| 8 | hsl(55, 85%, 48%)  | rgb(226, 209, 18)  | #E2D112 |184 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(271, 82%, 48%),rgb(125, 22, 222),92
hsl(267, 85%, 43%),rgb(100, 16, 202),92
hsl(359, 79%, 40%),rgb(182, 21, 24),160
hsl(15, 56%, 50%),rgb(198, 91, 56),173
hsl(67, 82%, 56%),rgb(213, 234, 50),191
hsl(253, 59%, 68%),rgb(146, 125, 221),140
hsl(265, 64%, 47%),rgb(107, 43, 196),98
hsl(55, 85%, 48%),rgb(226, 209, 18),184

Generated: 2026-07-11 16:43:25
```
