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

![#A36CCA](https://img.shields.io/badge/-%23A36CCA?style=flat&logo=none) ![#1CEE01](https://img.shields.io/badge/-%231CEE01?style=flat&logo=none) ![#6046A8](https://img.shields.io/badge/-%236046A8?style=flat&logo=none) ![#5045EC](https://img.shields.io/badge/-%235045EC?style=flat&logo=none) ![#D70DC3](https://img.shields.io/badge/-%23D70DC3?style=flat&logo=none) ![#301D9A](https://img.shields.io/badge/-%23301D9A?style=flat&logo=none) ![#6233D0](https://img.shields.io/badge/-%236233D0?style=flat&logo=none) ![#3EDFB1](https://img.shields.io/badge/-%233EDFB1?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-30 16:52:32
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(275, 47%, 61%) | rgb(163, 108, 202) | #A36CCA |140 |
| 2 | hsl(113, 99%, 47%) |  rgb(28, 238, 1)   | #1CEE01 | 82 |
| 3 | hsl(256, 41%, 47%) |  rgb(96, 70, 168)  | #6046A8 | 97 |
| 4 | hsl(244, 82%, 60%) |  rgb(80, 69, 236)  | #5045EC | 99 |
| 5 | hsl(306, 88%, 45%) | rgb(215, 13, 195)  | #D70DC3 |164 |
| 6 | hsl(249, 68%, 36%) |  rgb(48, 29, 154)  | #301D9A | 61 |
| 7 | hsl(258, 63%, 51%) |  rgb(98, 51, 208)  | #6233D0 | 98 |
| 8 | hsl(163, 72%, 56%) | rgb(62, 223, 177)  | #3EDFB1 | 79 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(275, 47%, 61%),rgb(163, 108, 202),140
hsl(113, 99%, 47%),rgb(28, 238, 1),82
hsl(256, 41%, 47%),rgb(96, 70, 168),97
hsl(244, 82%, 60%),rgb(80, 69, 236),99
hsl(306, 88%, 45%),rgb(215, 13, 195),164
hsl(249, 68%, 36%),rgb(48, 29, 154),61
hsl(258, 63%, 51%),rgb(98, 51, 208),98
hsl(163, 72%, 56%),rgb(62, 223, 177),79

Generated: 2026-05-30 16:52:32
```
