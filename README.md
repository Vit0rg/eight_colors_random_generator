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

![#82F06F](https://img.shields.io/badge/-%2382F06F?style=flat&logo=none) ![#407B2C](https://img.shields.io/badge/-%23407B2C?style=flat&logo=none) ![#44A074](https://img.shields.io/badge/-%2344A074?style=flat&logo=none) ![#22D24E](https://img.shields.io/badge/-%2322D24E?style=flat&logo=none) ![#CD2AD9](https://img.shields.io/badge/-%23CD2AD9?style=flat&logo=none) ![#1C6A90](https://img.shields.io/badge/-%231C6A90?style=flat&logo=none) ![#E1E63B](https://img.shields.io/badge/-%23E1E63B?style=flat&logo=none) ![#C8AB6E](https://img.shields.io/badge/-%23C8AB6E?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-10 02:10:49
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(111, 82%, 69%) | rgb(130, 240, 111) | #82F06F |156 |
| 2 | hsl(105, 47%, 33%) |  rgb(64, 123, 44)  | #407B2C | 65 |
| 3 | hsl(151, 40%, 45%) | rgb(68, 160, 116)  | #44A074 | 72 |
| 4 | hsl(135, 72%, 48%) |  rgb(34, 210, 78)  | #22D24E | 78 |
| 5 | hsl(296, 70%, 51%) | rgb(205, 42, 217)  | #CD2AD9 |170 |
| 6 | hsl(200, 67%, 34%) | rgb(28, 106, 144)  | #1C6A90 | 67 |
| 7 | hsl(62, 78%, 57%)  | rgb(225, 230, 59)  | #E1E63B |185 |
| 8 | hsl(41, 45%, 61%)  | rgb(200, 171, 110) | #C8AB6E |180 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(111, 82%, 69%),rgb(130, 240, 111),156
hsl(105, 47%, 33%),rgb(64, 123, 44),65
hsl(151, 40%, 45%),rgb(68, 160, 116),72
hsl(135, 72%, 48%),rgb(34, 210, 78),78
hsl(296, 70%, 51%),rgb(205, 42, 217),170
hsl(200, 67%, 34%),rgb(28, 106, 144),67
hsl(62, 78%, 57%),rgb(225, 230, 59),185
hsl(41, 45%, 61%),rgb(200, 171, 110),180

Generated: 2026-09-10 02:10:49
```
