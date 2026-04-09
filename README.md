# Eight Colors Random Generator

Generates 8 random colors with HSL, RGB, Hex, and ANSI values every 4 hours via GitHub Actions.

## How It Works

A shell script (`generate_colors.sh`) generates 8 random colors by:

1. Picking random HSL values (H: 0–359, S: 40–100%, L: 30–70%)
2. Converting HSL → RGB using `awk`
3. Calculating the closest ANSI 256 color code

## Output

Each run creates a file named `MM_DD_YYYY_HH_MM_colors` containing:

- **Table** — centered columns showing Num, HSL, RGB, Hex, and ANSI
- **CSV** — machine-readable list of HSL, RGB, and ANSI values

The README is automatically updated with the latest palette on each run.

## Usage

### Manual

```bash
bash generate_colors.sh
```

### Automatic (GitHub Actions)

The workflow runs every 4 hours and commits the output file to the repository.

To trigger manually: **Actions → Generate Eight Colors → Run workflow**.

## Files

| File | Description |
|---|---|
| `generate_colors.sh` | Main script |
| `*_*_*_*_*_colors` | Generated color files |
| `.github/workflows/generate_colors.yml` | CI workflow |


## Latest Palette

```
=====================================================================
  Eight Colors - 2026-04-09 20:08:23
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(93, 46%, 43%)  | rgb(104, 160, 59)  | #68A03B |107 |
| 2 | hsl(33, 63%, 40%)  | rgb(166, 108, 37)  | #A66C25 |137 |
| 3 | hsl(176, 49%, 52%) | rgb(72, 192, 184)  | #48C0B8 | 80 |
| 4 | hsl(193, 57%, 42%) | rgb(46, 141, 168)  | #2E8DA8 | 73 |
| 5 | hsl(141, 60%, 31%) |  rgb(31, 126, 64)  | #1F7E40 | 65 |
| 6 | hsl(44, 62%, 31%)  | rgb(128, 101, 30)  | #80651E |137 |
| 7 | hsl(355, 95%, 48%) |  rgb(238, 6, 25)   | #EE0619 |196 |
| 8 | hsl(290, 75%, 59%) | rgb(202, 72, 228)  | #CA48E4 |170 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(93, 46%, 43%),rgb(104, 160, 59),107
hsl(33, 63%, 40%),rgb(166, 108, 37),137
hsl(176, 49%, 52%),rgb(72, 192, 184),80
hsl(193, 57%, 42%),rgb(46, 141, 168),73
hsl(141, 60%, 31%),rgb(31, 126, 64),65
hsl(44, 62%, 31%),rgb(128, 101, 30),137
hsl(355, 95%, 48%),rgb(238, 6, 25),196
hsl(290, 75%, 59%),rgb(202, 72, 228),170

Generated: 2026-04-09 20:08:23
```
