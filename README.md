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

![#469C1B](https://img.shields.io/badge/-%23469C1B?style=flat&logo=none) ![#E877C0](https://img.shields.io/badge/-%23E877C0?style=flat&logo=none) ![#50E401](https://img.shields.io/badge/-%2350E401?style=flat&logo=none) ![#4C43F9](https://img.shields.io/badge/-%234C43F9?style=flat&logo=none) ![#8A3243](https://img.shields.io/badge/-%238A3243?style=flat&logo=none) ![#B91CAC](https://img.shields.io/badge/-%23B91CAC?style=flat&logo=none) ![#1F7DD4](https://img.shields.io/badge/-%231F7DD4?style=flat&logo=none) ![#7CB71F](https://img.shields.io/badge/-%237CB71F?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-03 09:14:13
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(100, 70%, 36%) |  rgb(70, 156, 27)  | #469C1B | 71 |
| 2 | hsl(321, 72%, 69%) | rgb(232, 119, 192) | #E877C0 |212 |
| 3 | hsl(99, 99%, 45%)  |  rgb(80, 228, 1)   | #50E401 |112 |
| 4 | hsl(243, 94%, 62%) |  rgb(76, 67, 249)  | #4C43F9 | 63 |
| 5 | hsl(348, 47%, 37%) |  rgb(138, 50, 67)  | #8A3243 |131 |
| 6 | hsl(305, 73%, 42%) | rgb(185, 28, 172)  | #B91CAC |169 |
| 7 | hsl(209, 74%, 48%) | rgb(31, 125, 212)  | #1F7DD4 | 68 |
| 8 | hsl(83, 71%, 42%)  | rgb(124, 183, 31)  | #7CB71F |113 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(100, 70%, 36%),rgb(70, 156, 27),71
hsl(321, 72%, 69%),rgb(232, 119, 192),212
hsl(99, 99%, 45%),rgb(80, 228, 1),112
hsl(243, 94%, 62%),rgb(76, 67, 249),63
hsl(348, 47%, 37%),rgb(138, 50, 67),131
hsl(305, 73%, 42%),rgb(185, 28, 172),169
hsl(209, 74%, 48%),rgb(31, 125, 212),68
hsl(83, 71%, 42%),rgb(124, 183, 31),113

Generated: 2026-05-03 09:14:13
```
