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

![#348D46](https://img.shields.io/badge/-%23348D46?style=flat&logo=none) ![#189B0C](https://img.shields.io/badge/-%23189B0C?style=flat&logo=none) ![#D4C62F](https://img.shields.io/badge/-%23D4C62F?style=flat&logo=none) ![#C44D3F](https://img.shields.io/badge/-%23C44D3F?style=flat&logo=none) ![#AF08E2](https://img.shields.io/badge/-%23AF08E2?style=flat&logo=none) ![#6534CF](https://img.shields.io/badge/-%236534CF?style=flat&logo=none) ![#8A9413](https://img.shields.io/badge/-%238A9413?style=flat&logo=none) ![#D82F1C](https://img.shields.io/badge/-%23D82F1C?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-06 11:55:50
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(132, 46%, 38%) |  rgb(52, 141, 70)  | #348D46 | 71 |
| 2 | hsl(115, 85%, 33%) |  rgb(24, 155, 12)  | #189B0C | 34 |
| 3 | hsl(55, 66%, 51%)  | rgb(212, 198, 47)  | #D4C62F |185 |
| 4 |  hsl(6, 53%, 51%)  |  rgb(196, 77, 63)  | #C44D3F |173 |
| 5 | hsl(286, 93%, 46%) |  rgb(175, 8, 226)  | #AF08E2 |128 |
| 6 | hsl(259, 62%, 51%) | rgb(101, 52, 207)  | #6534CF | 98 |
| 7 | hsl(65, 77%, 33%)  | rgb(138, 148, 19)  | #8A9413 |142 |
| 8 |  hsl(6, 77%, 48%)  |  rgb(216, 47, 28)  | #D82F1C |167 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(132, 46%, 38%),rgb(52, 141, 70),71
hsl(115, 85%, 33%),rgb(24, 155, 12),34
hsl(55, 66%, 51%),rgb(212, 198, 47),185
hsl(6, 53%, 51%),rgb(196, 77, 63),173
hsl(286, 93%, 46%),rgb(175, 8, 226),128
hsl(259, 62%, 51%),rgb(101, 52, 207),98
hsl(65, 77%, 33%),rgb(138, 148, 19),142
hsl(6, 77%, 48%),rgb(216, 47, 28),167

Generated: 2026-07-06 11:55:50
```
