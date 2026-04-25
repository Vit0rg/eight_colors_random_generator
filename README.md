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

![#C1E669](https://img.shields.io/badge/-%23C1E669?style=flat&logo=none) ![#CA39C5](https://img.shields.io/badge/-%23CA39C5?style=flat&logo=none) ![#A64468](https://img.shields.io/badge/-%23A64468?style=flat&logo=none) ![#71D7F3](https://img.shields.io/badge/-%2371D7F3?style=flat&logo=none) ![#496BB0](https://img.shields.io/badge/-%23496BB0?style=flat&logo=none) ![#1C2681](https://img.shields.io/badge/-%231C2681?style=flat&logo=none) ![#711D80](https://img.shields.io/badge/-%23711D80?style=flat&logo=none) ![#325DC2](https://img.shields.io/badge/-%23325DC2?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-25 08:42:11
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(78, 72%, 66%)  | rgb(193, 230, 105) | #C1E669 |186 |
| 2 | hsl(302, 58%, 51%) | rgb(202, 57, 197)  | #CA39C5 |170 |
| 3 | hsl(338, 42%, 46%) | rgb(166, 68, 104)  | #A64468 |132 |
| 4 | hsl(193, 85%, 70%) | rgb(113, 215, 243) | #71D7F3 |117 |
| 5 | hsl(220, 41%, 49%) | rgb(73, 107, 176)  | #496BB0 | 67 |
| 6 | hsl(234, 64%, 31%) |  rgb(28, 38, 129)  | #1C2681 | 61 |
| 7 | hsl(291, 63%, 31%) | rgb(113, 29, 128)  | #711D80 | 97 |
| 8 | hsl(222, 59%, 48%) |  rgb(50, 93, 194)  | #325DC2 | 68 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(78, 72%, 66%),rgb(193, 230, 105),186
hsl(302, 58%, 51%),rgb(202, 57, 197),170
hsl(338, 42%, 46%),rgb(166, 68, 104),132
hsl(193, 85%, 70%),rgb(113, 215, 243),117
hsl(220, 41%, 49%),rgb(73, 107, 176),67
hsl(234, 64%, 31%),rgb(28, 38, 129),61
hsl(291, 63%, 31%),rgb(113, 29, 128),97
hsl(222, 59%, 48%),rgb(50, 93, 194),68

Generated: 2026-04-25 08:42:11
```
