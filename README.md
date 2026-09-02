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

![#0F9D9D](https://img.shields.io/badge/-%230F9D9D?style=flat&logo=none) ![#039F98](https://img.shields.io/badge/-%23039F98?style=flat&logo=none) ![#65EFB1](https://img.shields.io/badge/-%2365EFB1?style=flat&logo=none) ![#C1845C](https://img.shields.io/badge/-%23C1845C?style=flat&logo=none) ![#3869DA](https://img.shields.io/badge/-%233869DA?style=flat&logo=none) ![#802D34](https://img.shields.io/badge/-%23802D34?style=flat&logo=none) ![#2ACDF2](https://img.shields.io/badge/-%232ACDF2?style=flat&logo=none) ![#87299D](https://img.shields.io/badge/-%2387299D?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-02 19:05:57
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(180, 82%, 34%) | rgb(15, 157, 157)  | #0F9D9D | 37 |
| 2 | hsl(177, 96%, 32%) |  rgb(3, 159, 152)  | #039F98 | 37 |
| 3 | hsl(153, 82%, 67%) | rgb(101, 239, 177) | #65EFB1 |121 |
| 4 | hsl(24, 45%, 56%)  | rgb(193, 132, 92)  | #C1845C |180 |
| 5 | hsl(222, 69%, 54%) | rgb(56, 105, 218)  | #3869DA | 68 |
| 6 | hsl(355, 48%, 34%) |  rgb(128, 45, 52)  | #802D34 |131 |
| 7 | hsl(191, 89%, 56%) | rgb(42, 205, 242)  | #2ACDF2 | 81 |
| 8 | hsl(289, 58%, 39%) | rgb(135, 41, 157)  | #87299D |133 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(180, 82%, 34%),rgb(15, 157, 157),37
hsl(177, 96%, 32%),rgb(3, 159, 152),37
hsl(153, 82%, 67%),rgb(101, 239, 177),121
hsl(24, 45%, 56%),rgb(193, 132, 92),180
hsl(222, 69%, 54%),rgb(56, 105, 218),68
hsl(355, 48%, 34%),rgb(128, 45, 52),131
hsl(191, 89%, 56%),rgb(42, 205, 242),81
hsl(289, 58%, 39%),rgb(135, 41, 157),133

Generated: 2026-09-02 19:05:57
```
