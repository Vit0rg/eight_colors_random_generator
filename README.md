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

![#12A7E2](https://img.shields.io/badge/-%2312A7E2?style=flat&logo=none) ![#D2D05F](https://img.shields.io/badge/-%23D2D05F?style=flat&logo=none) ![#40D033](https://img.shields.io/badge/-%2340D033?style=flat&logo=none) ![#A42738](https://img.shields.io/badge/-%23A42738?style=flat&logo=none) ![#F84877](https://img.shields.io/badge/-%23F84877?style=flat&logo=none) ![#B83B6F](https://img.shields.io/badge/-%23B83B6F?style=flat&logo=none) ![#E1278D](https://img.shields.io/badge/-%23E1278D?style=flat&logo=none) ![#792B7C](https://img.shields.io/badge/-%23792B7C?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-05 10:25:54
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(197, 85%, 48%) | rgb(18, 167, 226)  | #12A7E2 | 38 |
| 2 | hsl(59, 56%, 60%)  | rgb(210, 208, 95)  | #D2D05F |186 |
| 3 | hsl(115, 63%, 51%) |  rgb(64, 208, 51)  | #40D033 | 77 |
| 4 | hsl(352, 61%, 40%) |  rgb(164, 39, 56)  | #A42738 |131 |
| 5 | hsl(344, 93%, 63%) | rgb(248, 72, 119)  | #F84877 |204 |
| 6 | hsl(335, 51%, 48%) | rgb(184, 59, 111)  | #B83B6F |168 |
| 7 | hsl(327, 76%, 52%) | rgb(225, 39, 141)  | #E1278D |169 |
| 8 | hsl(298, 48%, 33%) | rgb(121, 43, 124)  | #792B7C | 96 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(197, 85%, 48%),rgb(18, 167, 226),38
hsl(59, 56%, 60%),rgb(210, 208, 95),186
hsl(115, 63%, 51%),rgb(64, 208, 51),77
hsl(352, 61%, 40%),rgb(164, 39, 56),131
hsl(344, 93%, 63%),rgb(248, 72, 119),204
hsl(335, 51%, 48%),rgb(184, 59, 111),168
hsl(327, 76%, 52%),rgb(225, 39, 141),169
hsl(298, 48%, 33%),rgb(121, 43, 124),96

Generated: 2026-08-05 10:25:54
```
