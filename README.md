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

![#03B324](https://img.shields.io/badge/-%2303B324?style=flat&logo=none) ![#8B27F6](https://img.shields.io/badge/-%238B27F6?style=flat&logo=none) ![#DBFB0D](https://img.shields.io/badge/-%23DBFB0D?style=flat&logo=none) ![#7E34DF](https://img.shields.io/badge/-%237E34DF?style=flat&logo=none) ![#101BB5](https://img.shields.io/badge/-%23101BB5?style=flat&logo=none) ![#911B64](https://img.shields.io/badge/-%23911B64?style=flat&logo=none) ![#50A016](https://img.shields.io/badge/-%2350A016?style=flat&logo=none) ![#83254F](https://img.shields.io/badge/-%2383254F?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-13 10:21:30
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(131, 96%, 36%) |  rgb(3, 179, 36)   | #03B324 | 35 |
| 2 | hsl(269, 92%, 56%) | rgb(139, 39, 246)  | #8B27F6 |135 |
| 3 | hsl(68, 97%, 52%)  | rgb(219, 251, 13)  | #DBFB0D |190 |
| 4 | hsl(266, 73%, 54%) | rgb(126, 52, 223)  | #7E34DF | 98 |
| 5 | hsl(236, 83%, 39%) |  rgb(16, 27, 181)  | #101BB5 | 26 |
| 6 | hsl(323, 68%, 34%) | rgb(145, 27, 100)  | #911B64 |132 |
| 7 | hsl(95, 75%, 36%)  |  rgb(80, 160, 22)  | #50A016 |106 |
| 8 | hsl(333, 56%, 33%) |  rgb(131, 37, 79)  | #83254F |132 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(131, 96%, 36%),rgb(3, 179, 36),35
hsl(269, 92%, 56%),rgb(139, 39, 246),135
hsl(68, 97%, 52%),rgb(219, 251, 13),190
hsl(266, 73%, 54%),rgb(126, 52, 223),98
hsl(236, 83%, 39%),rgb(16, 27, 181),26
hsl(323, 68%, 34%),rgb(145, 27, 100),132
hsl(95, 75%, 36%),rgb(80, 160, 22),106
hsl(333, 56%, 33%),rgb(131, 37, 79),132

Generated: 2026-06-13 10:21:30
```
