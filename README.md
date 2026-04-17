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

![#3AC2FD](https://img.shields.io/badge/-%233AC2FD?style=flat&logo=none) ![#317654](https://img.shields.io/badge/-%23317654?style=flat&logo=none) ![#72B8F2](https://img.shields.io/badge/-%2372B8F2?style=flat&logo=none) ![#0EE661](https://img.shields.io/badge/-%230EE661?style=flat&logo=none) ![#5EDECA](https://img.shields.io/badge/-%235EDECA?style=flat&logo=none) ![#FB4B68](https://img.shields.io/badge/-%23FB4B68?style=flat&logo=none) ![#EE34D2](https://img.shields.io/badge/-%23EE34D2?style=flat&logo=none) ![#12C3C1](https://img.shields.io/badge/-%2312C3C1?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-17 01:46:35
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(198, 98%, 61%) | rgb(58, 194, 253)  | #3AC2FD | 81 |
| 2 | hsl(150, 41%, 33%) |  rgb(49, 118, 84)  | #317654 | 66 |
| 3 | hsl(207, 84%, 70%) | rgb(114, 184, 242) | #72B8F2 |117 |
| 4 | hsl(143, 88%, 48%) |  rgb(14, 230, 97)  | #0EE661 | 42 |
| 5 | hsl(171, 66%, 62%) | rgb(94, 222, 202)  | #5EDECA |116 |
| 6 | hsl(350, 96%, 64%) | rgb(251, 75, 104)  | #FB4B68 |204 |
| 7 | hsl(309, 85%, 57%) | rgb(238, 52, 210)  | #EE34D2 |206 |
| 8 | hsl(179, 83%, 42%) | rgb(18, 195, 193)  | #12C3C1 | 44 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(198, 98%, 61%),rgb(58, 194, 253),81
hsl(150, 41%, 33%),rgb(49, 118, 84),66
hsl(207, 84%, 70%),rgb(114, 184, 242),117
hsl(143, 88%, 48%),rgb(14, 230, 97),42
hsl(171, 66%, 62%),rgb(94, 222, 202),116
hsl(350, 96%, 64%),rgb(251, 75, 104),204
hsl(309, 85%, 57%),rgb(238, 52, 210),206
hsl(179, 83%, 42%),rgb(18, 195, 193),44

Generated: 2026-04-17 01:46:35
```
