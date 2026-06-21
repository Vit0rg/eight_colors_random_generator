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

![#40C82C](https://img.shields.io/badge/-%2340C82C?style=flat&logo=none) ![#E42591](https://img.shields.io/badge/-%23E42591?style=flat&logo=none) ![#736530](https://img.shields.io/badge/-%23736530?style=flat&logo=none) ![#42B759](https://img.shields.io/badge/-%2342B759?style=flat&logo=none) ![#D7506F](https://img.shields.io/badge/-%23D7506F?style=flat&logo=none) ![#EE840B](https://img.shields.io/badge/-%23EE840B?style=flat&logo=none) ![#81A92C](https://img.shields.io/badge/-%2381A92C?style=flat&logo=none) ![#4438B7](https://img.shields.io/badge/-%234438B7?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-21 10:59:45
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(112, 64%, 48%) |  rgb(64, 200, 44)  | #40C82C | 77 |
| 2 | hsl(326, 78%, 52%) | rgb(228, 37, 145)  | #E42591 |169 |
| 3 | hsl(48, 41%, 32%)  | rgb(115, 101, 48)  | #736530 |101 |
| 4 | hsl(132, 47%, 49%) |  rgb(66, 183, 89)  | #42B759 | 78 |
| 5 | hsl(346, 63%, 58%) | rgb(215, 80, 111)  | #D7506F |174 |
| 6 | hsl(32, 91%, 49%)  | rgb(238, 132, 11)  | #EE840B |214 |
| 7 | hsl(79, 58%, 42%)  | rgb(129, 169, 44)  | #81A92C |143 |
| 8 | hsl(246, 53%, 47%) |  rgb(68, 56, 183)  | #4438B7 | 62 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(112, 64%, 48%),rgb(64, 200, 44),77
hsl(326, 78%, 52%),rgb(228, 37, 145),169
hsl(48, 41%, 32%),rgb(115, 101, 48),101
hsl(132, 47%, 49%),rgb(66, 183, 89),78
hsl(346, 63%, 58%),rgb(215, 80, 111),174
hsl(32, 91%, 49%),rgb(238, 132, 11),214
hsl(79, 58%, 42%),rgb(129, 169, 44),143
hsl(246, 53%, 47%),rgb(68, 56, 183),62

Generated: 2026-06-21 10:59:45
```
