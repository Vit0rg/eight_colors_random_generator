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

![#EFB94C](https://img.shields.io/badge/-%23EFB94C?style=flat&logo=none) ![#C8178A](https://img.shields.io/badge/-%23C8178A?style=flat&logo=none) ![#7707E8](https://img.shields.io/badge/-%237707E8?style=flat&logo=none) ![#68D888](https://img.shields.io/badge/-%2368D888?style=flat&logo=none) ![#213F77](https://img.shields.io/badge/-%23213F77?style=flat&logo=none) ![#B38C32](https://img.shields.io/badge/-%23B38C32?style=flat&logo=none) ![#269676](https://img.shields.io/badge/-%23269676?style=flat&logo=none) ![#7E1A4F](https://img.shields.io/badge/-%237E1A4F?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-17 18:08:57
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(40, 84%, 62%)  | rgb(239, 185, 76)  | #EFB94C |221 |
| 2 | hsl(321, 79%, 44%) | rgb(200, 23, 138)  | #C8178A |163 |
| 3 | hsl(270, 94%, 47%) |  rgb(119, 7, 232)  | #7707E8 | 93 |
| 4 | hsl(137, 59%, 63%) | rgb(104, 216, 136) | #68D888 |115 |
| 5 | hsl(219, 56%, 30%) |  rgb(33, 63, 119)  | #213F77 | 60 |
| 6 | hsl(42, 56%, 45%)  | rgb(179, 140, 50)  | #B38C32 |143 |
| 7 | hsl(163, 59%, 37%) | rgb(38, 150, 118)  | #269676 | 72 |
| 8 | hsl(328, 65%, 30%) |  rgb(126, 26, 79)  | #7E1A4F | 96 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(40, 84%, 62%),rgb(239, 185, 76),221
hsl(321, 79%, 44%),rgb(200, 23, 138),163
hsl(270, 94%, 47%),rgb(119, 7, 232),93
hsl(137, 59%, 63%),rgb(104, 216, 136),115
hsl(219, 56%, 30%),rgb(33, 63, 119),60
hsl(42, 56%, 45%),rgb(179, 140, 50),143
hsl(163, 59%, 37%),rgb(38, 150, 118),72
hsl(328, 65%, 30%),rgb(126, 26, 79),96

Generated: 2026-06-17 18:08:57
```
