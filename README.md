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

![#DC6A6E](https://img.shields.io/badge/-%23DC6A6E?style=flat&logo=none) ![#17AA32](https://img.shields.io/badge/-%2317AA32?style=flat&logo=none) ![#83C3DC](https://img.shields.io/badge/-%2383C3DC?style=flat&logo=none) ![#3EE302](https://img.shields.io/badge/-%233EE302?style=flat&logo=none) ![#383BDA](https://img.shields.io/badge/-%23383BDA?style=flat&logo=none) ![#94192D](https://img.shields.io/badge/-%2394192D?style=flat&logo=none) ![#0CC43A](https://img.shields.io/badge/-%230CC43A?style=flat&logo=none) ![#FF0C00](https://img.shields.io/badge/-%23FF0C00?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-14 01:46:38
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(358, 62%, 64%) | rgb(220, 106, 110) | #DC6A6E |174 |
| 2 | hsl(131, 76%, 38%) |  rgb(23, 170, 50)  | #17AA32 | 35 |
| 3 | hsl(197, 56%, 69%) | rgb(131, 195, 220) | #83C3DC |152 |
| 4 | hsl(104, 98%, 45%) |  rgb(62, 227, 2)   | #3EE302 | 76 |
| 5 | hsl(239, 69%, 54%) |  rgb(56, 59, 218)  | #383BDA | 62 |
| 6 | hsl(350, 71%, 34%) |  rgb(148, 25, 45)  | #94192D |125 |
| 7 | hsl(135, 88%, 41%) |  rgb(12, 196, 58)  | #0CC43A | 41 |
| 8 | hsl(3, 100%, 50%)  |  rgb(255, 12, 0)   | #FF0C00 |196 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(358, 62%, 64%),rgb(220, 106, 110),174
hsl(131, 76%, 38%),rgb(23, 170, 50),35
hsl(197, 56%, 69%),rgb(131, 195, 220),152
hsl(104, 98%, 45%),rgb(62, 227, 2),76
hsl(239, 69%, 54%),rgb(56, 59, 218),62
hsl(350, 71%, 34%),rgb(148, 25, 45),125
hsl(135, 88%, 41%),rgb(12, 196, 58),41
hsl(3, 100%, 50%),rgb(255, 12, 0),196

Generated: 2026-04-14 01:46:38
```
