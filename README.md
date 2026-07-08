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

![#DA9571](https://img.shields.io/badge/-%23DA9571?style=flat&logo=none) ![#4E5CFD](https://img.shields.io/badge/-%234E5CFD?style=flat&logo=none) ![#4AE7AD](https://img.shields.io/badge/-%234AE7AD?style=flat&logo=none) ![#5C2C90](https://img.shields.io/badge/-%235C2C90?style=flat&logo=none) ![#74D638](https://img.shields.io/badge/-%2374D638?style=flat&logo=none) ![#672974](https://img.shields.io/badge/-%23672974?style=flat&logo=none) ![#19A606](https://img.shields.io/badge/-%2319A606?style=flat&logo=none) ![#2E841F](https://img.shields.io/badge/-%232E841F?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-08 10:07:25
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(21, 59%, 65%)  | rgb(218, 149, 113) | #DA9571 |180 |
| 2 | hsl(235, 98%, 65%) |  rgb(78, 92, 253)  | #4E5CFD |105 |
| 3 | hsl(158, 77%, 60%) | rgb(74, 231, 173)  | #4AE7AD | 85 |
| 4 | hsl(269, 53%, 37%) |  rgb(92, 44, 144)  | #5C2C90 | 97 |
| 5 | hsl(97, 66%, 53%)  | rgb(116, 214, 56)  | #74D638 |113 |
| 6 | hsl(290, 47%, 31%) | rgb(103, 41, 116)  | #672974 | 96 |
| 7 | hsl(113, 92%, 34%) |  rgb(25, 166, 6)   | #19A606 | 34 |
| 8 | hsl(111, 62%, 32%) |  rgb(46, 132, 31)  | #2E841F | 71 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(21, 59%, 65%),rgb(218, 149, 113),180
hsl(235, 98%, 65%),rgb(78, 92, 253),105
hsl(158, 77%, 60%),rgb(74, 231, 173),85
hsl(269, 53%, 37%),rgb(92, 44, 144),97
hsl(97, 66%, 53%),rgb(116, 214, 56),113
hsl(290, 47%, 31%),rgb(103, 41, 116),96
hsl(113, 92%, 34%),rgb(25, 166, 6),34
hsl(111, 62%, 32%),rgb(46, 132, 31),71

Generated: 2026-07-08 10:07:25
```
