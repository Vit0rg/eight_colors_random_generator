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

![#DB6504](https://img.shields.io/badge/-%23DB6504?style=flat&logo=none) ![#6112D7](https://img.shields.io/badge/-%236112D7?style=flat&logo=none) ![#2C5FCC](https://img.shields.io/badge/-%232C5FCC?style=flat&logo=none) ![#65F57F](https://img.shields.io/badge/-%2365F57F?style=flat&logo=none) ![#188561](https://img.shields.io/badge/-%23188561?style=flat&logo=none) ![#0DA408](https://img.shields.io/badge/-%230DA408?style=flat&logo=none) ![#762236](https://img.shields.io/badge/-%23762236?style=flat&logo=none) ![#1A9258](https://img.shields.io/badge/-%231A9258?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-19 02:29:30
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(27, 96%, 44%)  |  rgb(219, 101, 4)  | #DB6504 |172 |
| 2 | hsl(264, 84%, 46%) |  rgb(97, 18, 215)  | #6112D7 | 92 |
| 3 | hsl(221, 64%, 49%) |  rgb(44, 95, 204)  | #2C5FCC | 68 |
| 4 | hsl(131, 88%, 68%) | rgb(101, 245, 127) | #65F57F |120 |
| 5 | hsl(160, 69%, 31%) |  rgb(24, 133, 97)  | #188561 | 36 |
| 6 | hsl(118, 90%, 34%) |  rgb(13, 164, 8)   | #0DA408 | 34 |
| 7 | hsl(346, 55%, 30%) |  rgb(118, 34, 54)  | #762236 | 95 |
| 8 | hsl(151, 69%, 34%) |  rgb(26, 146, 88)  | #1A9258 | 72 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(27, 96%, 44%),rgb(219, 101, 4),172
hsl(264, 84%, 46%),rgb(97, 18, 215),92
hsl(221, 64%, 49%),rgb(44, 95, 204),68
hsl(131, 88%, 68%),rgb(101, 245, 127),120
hsl(160, 69%, 31%),rgb(24, 133, 97),36
hsl(118, 90%, 34%),rgb(13, 164, 8),34
hsl(346, 55%, 30%),rgb(118, 34, 54),95
hsl(151, 69%, 34%),rgb(26, 146, 88),72

Generated: 2026-05-19 02:29:30
```
