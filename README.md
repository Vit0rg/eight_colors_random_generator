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

![#6E7B1D](https://img.shields.io/badge/-%236E7B1D?style=flat&logo=none) ![#DC74C4](https://img.shields.io/badge/-%23DC74C4?style=flat&logo=none) ![#DC6FCB](https://img.shields.io/badge/-%23DC6FCB?style=flat&logo=none) ![#FF1443](https://img.shields.io/badge/-%23FF1443?style=flat&logo=none) ![#F1E673](https://img.shields.io/badge/-%23F1E673?style=flat&logo=none) ![#A57317](https://img.shields.io/badge/-%23A57317?style=flat&logo=none) ![#38A6B7](https://img.shields.io/badge/-%2338A6B7?style=flat&logo=none) ![#5CF3F1](https://img.shields.io/badge/-%235CF3F1?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-30 13:25:02
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(68, 61%, 30%)  | rgb(110, 123, 29)  | #6E7B1D |101 |
| 2 | hsl(314, 60%, 66%) | rgb(220, 116, 196) | #DC74C4 |176 |
| 3 | hsl(309, 61%, 65%) | rgb(220, 111, 203) | #DC6FCB |176 |
| 4 |hsl(348, 100%, 54%) |  rgb(255, 20, 67)  | #FF1443 |197 |
| 5 | hsl(55, 82%, 70%)  | rgb(241, 230, 115) | #F1E673 |222 |
| 6 | hsl(39, 75%, 37%)  | rgb(165, 115, 23)  | #A57317 |136 |
| 7 | hsl(188, 53%, 47%) | rgb(56, 166, 183)  | #38A6B7 | 74 |
| 8 | hsl(179, 87%, 66%) | rgb(92, 243, 241)  | #5CF3F1 |123 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(68, 61%, 30%),rgb(110, 123, 29),101
hsl(314, 60%, 66%),rgb(220, 116, 196),176
hsl(309, 61%, 65%),rgb(220, 111, 203),176
hsl(348, 100%, 54%),rgb(255, 20, 67),197
hsl(55, 82%, 70%),rgb(241, 230, 115),222
hsl(39, 75%, 37%),rgb(165, 115, 23),136
hsl(188, 53%, 47%),rgb(56, 166, 183),74
hsl(179, 87%, 66%),rgb(92, 243, 241),123

Generated: 2026-08-30 13:25:02
```
