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

![#2FCFBD](https://img.shields.io/badge/-%232FCFBD?style=flat&logo=none) ![#4A41AD](https://img.shields.io/badge/-%234A41AD?style=flat&logo=none) ![#BE3617](https://img.shields.io/badge/-%23BE3617?style=flat&logo=none) ![#ABCF4D](https://img.shields.io/badge/-%23ABCF4D?style=flat&logo=none) ![#100494](https://img.shields.io/badge/-%23100494?style=flat&logo=none) ![#098EE1](https://img.shields.io/badge/-%23098EE1?style=flat&logo=none) ![#10BB43](https://img.shields.io/badge/-%2310BB43?style=flat&logo=none) ![#90CF90](https://img.shields.io/badge/-%2390CF90?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-20 10:41:35
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(173, 63%, 50%) | rgb(47, 207, 189)  | #2FCFBD | 80 |
| 2 | hsl(245, 45%, 47%) |  rgb(74, 65, 173)  | #4A41AD | 61 |
| 3 | hsl(11, 78%, 42%)  |  rgb(190, 54, 23)  | #BE3617 |166 |
| 4 | hsl(77, 58%, 56%)  | rgb(171, 207, 77)  | #ABCF4D |150 |
| 5 | hsl(245, 94%, 30%) |  rgb(16, 4, 148)   | #100494 | 19 |
| 6 | hsl(203, 92%, 46%) |  rgb(9, 142, 225)  | #098EE1 | 38 |
| 7 | hsl(138, 84%, 40%) |  rgb(16, 187, 67)  | #10BB43 | 41 |
| 8 | hsl(120, 40%, 69%) | rgb(144, 207, 144) | #90CF90 |151 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(173, 63%, 50%),rgb(47, 207, 189),80
hsl(245, 45%, 47%),rgb(74, 65, 173),61
hsl(11, 78%, 42%),rgb(190, 54, 23),166
hsl(77, 58%, 56%),rgb(171, 207, 77),150
hsl(245, 94%, 30%),rgb(16, 4, 148),19
hsl(203, 92%, 46%),rgb(9, 142, 225),38
hsl(138, 84%, 40%),rgb(16, 187, 67),41
hsl(120, 40%, 69%),rgb(144, 207, 144),151

Generated: 2026-07-20 10:41:35
```
