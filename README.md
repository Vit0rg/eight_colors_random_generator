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

![#1285F1](https://img.shields.io/badge/-%231285F1?style=flat&logo=none) ![#D953B7](https://img.shields.io/badge/-%23D953B7?style=flat&logo=none) ![#B3D269](https://img.shields.io/badge/-%23B3D269?style=flat&logo=none) ![#1F8358](https://img.shields.io/badge/-%231F8358?style=flat&logo=none) ![#B66320](https://img.shields.io/badge/-%23B66320?style=flat&logo=none) ![#63F2C5](https://img.shields.io/badge/-%2363F2C5?style=flat&logo=none) ![#3DB751](https://img.shields.io/badge/-%233DB751?style=flat&logo=none) ![#3741F0](https://img.shields.io/badge/-%233741F0?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-06 01:59:19
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(209, 89%, 51%) | rgb(18, 133, 241)  | #1285F1 | 39 |
| 2 | hsl(315, 64%, 59%) | rgb(217, 83, 183)  | #D953B7 |176 |
| 3 | hsl(78, 54%, 62%)  | rgb(179, 210, 105) | #B3D269 |150 |
| 4 | hsl(154, 61%, 32%) |  rgb(31, 131, 88)  | #1F8358 | 72 |
| 5 | hsl(27, 70%, 42%)  |  rgb(182, 99, 32)  | #B66320 |173 |
| 6 | hsl(161, 85%, 67%) | rgb(99, 242, 197)  | #63F2C5 |122 |
| 7 | hsl(130, 50%, 48%) |  rgb(61, 183, 81)  | #3DB751 | 78 |
| 8 | hsl(237, 86%, 58%) |  rgb(55, 65, 240)  | #3741F0 | 63 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(209, 89%, 51%),rgb(18, 133, 241),39
hsl(315, 64%, 59%),rgb(217, 83, 183),176
hsl(78, 54%, 62%),rgb(179, 210, 105),150
hsl(154, 61%, 32%),rgb(31, 131, 88),72
hsl(27, 70%, 42%),rgb(182, 99, 32),173
hsl(161, 85%, 67%),rgb(99, 242, 197),122
hsl(130, 50%, 48%),rgb(61, 183, 81),78
hsl(237, 86%, 58%),rgb(55, 65, 240),63

Generated: 2026-05-06 01:59:19
```
