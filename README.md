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

![#0CD469](https://img.shields.io/badge/-%230CD469?style=flat&logo=none) ![#BE02A8](https://img.shields.io/badge/-%23BE02A8?style=flat&logo=none) ![#2358F4](https://img.shields.io/badge/-%232358F4?style=flat&logo=none) ![#20548D](https://img.shields.io/badge/-%2320548D?style=flat&logo=none) ![#3A2870](https://img.shields.io/badge/-%233A2870?style=flat&logo=none) ![#E21C43](https://img.shields.io/badge/-%23E21C43?style=flat&logo=none) ![#2A9C7C](https://img.shields.io/badge/-%232A9C7C?style=flat&logo=none) ![#76CBC1](https://img.shields.io/badge/-%2376CBC1?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-04 12:22:25
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(148, 89%, 44%) | rgb(12, 212, 105)  | #0CD469 | 42 |
| 2 | hsl(307, 97%, 38%) |  rgb(190, 2, 168)  | #BE02A8 |163 |
| 3 | hsl(225, 91%, 55%) |  rgb(35, 88, 244)  | #2358F4 | 69 |
| 4 | hsl(211, 63%, 34%) |  rgb(32, 84, 141)  | #20548D | 67 |
| 5 | hsl(255, 47%, 30%) |  rgb(58, 40, 112)  | #3A2870 | 60 |
| 6 | hsl(348, 78%, 50%) |  rgb(226, 28, 67)  | #E21C43 |167 |
| 7 | hsl(163, 57%, 39%) | rgb(42, 156, 124)  | #2A9C7C | 72 |
| 8 | hsl(173, 45%, 63%) | rgb(118, 203, 193) | #76CBC1 |116 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(148, 89%, 44%),rgb(12, 212, 105),42
hsl(307, 97%, 38%),rgb(190, 2, 168),163
hsl(225, 91%, 55%),rgb(35, 88, 244),69
hsl(211, 63%, 34%),rgb(32, 84, 141),67
hsl(255, 47%, 30%),rgb(58, 40, 112),60
hsl(348, 78%, 50%),rgb(226, 28, 67),167
hsl(163, 57%, 39%),rgb(42, 156, 124),72
hsl(173, 45%, 63%),rgb(118, 203, 193),116

Generated: 2026-09-04 12:22:25
```
