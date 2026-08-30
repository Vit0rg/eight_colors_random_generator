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

![#366495](https://img.shields.io/badge/-%23366495?style=flat&logo=none) ![#4B53EB](https://img.shields.io/badge/-%234B53EB?style=flat&logo=none) ![#10DEDE](https://img.shields.io/badge/-%2310DEDE?style=flat&logo=none) ![#5EA9D8](https://img.shields.io/badge/-%235EA9D8?style=flat&logo=none) ![#3A5391](https://img.shields.io/badge/-%233A5391?style=flat&logo=none) ![#1540AC](https://img.shields.io/badge/-%231540AC?style=flat&logo=none) ![#894229](https://img.shields.io/badge/-%23894229?style=flat&logo=none) ![#A3E47B](https://img.shields.io/badge/-%23A3E47B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-30 18:56:11
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(211, 47%, 40%) | rgb(54, 100, 149)  | #366495 | 67 |
| 2 | hsl(237, 80%, 61%) |  rgb(75, 83, 235)  | #4B53EB | 69 |
| 3 | hsl(180, 86%, 47%) | rgb(16, 222, 222)  | #10DEDE | 44 |
| 4 | hsl(203, 61%, 61%) | rgb(94, 169, 216)  | #5EA9D8 |110 |
| 5 | hsl(223, 43%, 40%) |  rgb(58, 83, 145)  | #3A5391 | 67 |
| 6 | hsl(223, 78%, 38%) |  rgb(21, 64, 172)  | #1540AC | 25 |
| 7 | hsl(16, 54%, 35%)  |  rgb(137, 66, 41)  | #894229 |131 |
| 8 | hsl(97, 66%, 69%)  | rgb(163, 228, 123) | #A3E47B |150 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(211, 47%, 40%),rgb(54, 100, 149),67
hsl(237, 80%, 61%),rgb(75, 83, 235),69
hsl(180, 86%, 47%),rgb(16, 222, 222),44
hsl(203, 61%, 61%),rgb(94, 169, 216),110
hsl(223, 43%, 40%),rgb(58, 83, 145),67
hsl(223, 78%, 38%),rgb(21, 64, 172),25
hsl(16, 54%, 35%),rgb(137, 66, 41),131
hsl(97, 66%, 69%),rgb(163, 228, 123),150

Generated: 2026-08-30 18:56:11
```
