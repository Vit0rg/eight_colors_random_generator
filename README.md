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

![#02DE5A](https://img.shields.io/badge/-%2302DE5A?style=flat&logo=none) ![#A582DD](https://img.shields.io/badge/-%23A582DD?style=flat&logo=none) ![#10921D](https://img.shields.io/badge/-%2310921D?style=flat&logo=none) ![#12FBB5](https://img.shields.io/badge/-%2312FBB5?style=flat&logo=none) ![#E13A27](https://img.shields.io/badge/-%23E13A27?style=flat&logo=none) ![#DDA65F](https://img.shields.io/badge/-%23DDA65F?style=flat&logo=none) ![#785320](https://img.shields.io/badge/-%23785320?style=flat&logo=none) ![#76DAE9](https://img.shields.io/badge/-%2376DAE9?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-15 00:41:01
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(144, 98%, 44%) |  rgb(2, 222, 90)   | #02DE5A | 42 |
| 2 | hsl(263, 57%, 69%) | rgb(165, 130, 221) | #A582DD |146 |
| 3 | hsl(126, 80%, 32%) |  rgb(16, 146, 29)  | #10921D | 35 |
| 4 | hsl(162, 97%, 53%) | rgb(18, 251, 181)  | #12FBB5 | 50 |
| 5 |  hsl(6, 76%, 52%)  |  rgb(225, 58, 39)  | #E13A27 |167 |
| 6 | hsl(34, 65%, 62%)  | rgb(221, 166, 95)  | #DDA65F |180 |
| 7 | hsl(35, 57%, 30%)  |  rgb(120, 83, 32)  | #785320 |101 |
| 8 | hsl(188, 73%, 69%) | rgb(118, 218, 233) | #76DAE9 |117 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(144, 98%, 44%),rgb(2, 222, 90),42
hsl(263, 57%, 69%),rgb(165, 130, 221),146
hsl(126, 80%, 32%),rgb(16, 146, 29),35
hsl(162, 97%, 53%),rgb(18, 251, 181),50
hsl(6, 76%, 52%),rgb(225, 58, 39),167
hsl(34, 65%, 62%),rgb(221, 166, 95),180
hsl(35, 57%, 30%),rgb(120, 83, 32),101
hsl(188, 73%, 69%),rgb(118, 218, 233),117

Generated: 2026-08-15 00:41:01
```
