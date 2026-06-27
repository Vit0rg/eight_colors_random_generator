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

![#2D4489](https://img.shields.io/badge/-%232D4489?style=flat&logo=none) ![#089F4A](https://img.shields.io/badge/-%23089F4A?style=flat&logo=none) ![#D92070](https://img.shields.io/badge/-%23D92070?style=flat&logo=none) ![#C46FCC](https://img.shields.io/badge/-%23C46FCC?style=flat&logo=none) ![#CB0A3E](https://img.shields.io/badge/-%23CB0A3E?style=flat&logo=none) ![#189979](https://img.shields.io/badge/-%23189979?style=flat&logo=none) ![#B610F8](https://img.shields.io/badge/-%23B610F8?style=flat&logo=none) ![#76BC04](https://img.shields.io/badge/-%2376BC04?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-27 09:56:31
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(225, 50%, 36%) |  rgb(45, 68, 137)  | #2D4489 | 61 |
| 2 | hsl(146, 90%, 33%) |  rgb(8, 159, 74)   | #089F4A | 35 |
| 3 | hsl(334, 74%, 49%) | rgb(217, 32, 112)  | #D92070 |168 |
| 4 | hsl(295, 48%, 62%) | rgb(196, 111, 204) | #C46FCC |176 |
| 5 | hsl(344, 90%, 42%) |  rgb(203, 10, 62)  | #CB0A3E |161 |
| 6 | hsl(165, 72%, 35%) | rgb(24, 153, 121)  | #189979 | 36 |
| 7 | hsl(283, 95%, 52%) | rgb(182, 16, 248)  | #B610F8 |165 |
| 8 | hsl(83, 95%, 38%)  |  rgb(118, 188, 4)  | #76BC04 |112 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(225, 50%, 36%),rgb(45, 68, 137),61
hsl(146, 90%, 33%),rgb(8, 159, 74),35
hsl(334, 74%, 49%),rgb(217, 32, 112),168
hsl(295, 48%, 62%),rgb(196, 111, 204),176
hsl(344, 90%, 42%),rgb(203, 10, 62),161
hsl(165, 72%, 35%),rgb(24, 153, 121),36
hsl(283, 95%, 52%),rgb(182, 16, 248),165
hsl(83, 95%, 38%),rgb(118, 188, 4),112

Generated: 2026-06-27 09:56:31
```
