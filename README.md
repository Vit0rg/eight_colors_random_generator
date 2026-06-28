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

![#0723F7](https://img.shields.io/badge/-%230723F7?style=flat&logo=none) ![#32B129](https://img.shields.io/badge/-%2332B129?style=flat&logo=none) ![#D22C90](https://img.shields.io/badge/-%23D22C90?style=flat&logo=none) ![#FD58EA](https://img.shields.io/badge/-%23FD58EA?style=flat&logo=none) ![#77E3ED](https://img.shields.io/badge/-%2377E3ED?style=flat&logo=none) ![#84D4D6](https://img.shields.io/badge/-%2384D4D6?style=flat&logo=none) ![#D657E4](https://img.shields.io/badge/-%23D657E4?style=flat&logo=none) ![#14AD75](https://img.shields.io/badge/-%2314AD75?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-28 16:59:01
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(233, 94%, 50%) |  rgb(7, 35, 247)   | #0723F7 | 27 |
| 2 | hsl(116, 62%, 43%) |  rgb(50, 177, 41)  | #32B129 | 71 |
| 3 | hsl(324, 65%, 50%) | rgb(210, 44, 144)  | #D22C90 |169 |
| 4 | hsl(307, 98%, 67%) | rgb(253, 88, 234)  | #FD58EA |213 |
| 5 | hsl(185, 77%, 70%) | rgb(119, 227, 237) | #77E3ED |117 |
| 6 | hsl(181, 50%, 68%) | rgb(132, 212, 214) | #84D4D6 |152 |
| 7 | hsl(294, 73%, 62%) | rgb(214, 87, 228)  | #D657E4 |176 |
| 8 | hsl(158, 79%, 38%) | rgb(20, 173, 117)  | #14AD75 | 36 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(233, 94%, 50%),rgb(7, 35, 247),27
hsl(116, 62%, 43%),rgb(50, 177, 41),71
hsl(324, 65%, 50%),rgb(210, 44, 144),169
hsl(307, 98%, 67%),rgb(253, 88, 234),213
hsl(185, 77%, 70%),rgb(119, 227, 237),117
hsl(181, 50%, 68%),rgb(132, 212, 214),152
hsl(294, 73%, 62%),rgb(214, 87, 228),176
hsl(158, 79%, 38%),rgb(20, 173, 117),36

Generated: 2026-06-28 16:59:01
```
