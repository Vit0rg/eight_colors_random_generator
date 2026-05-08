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

![#1EEF1E](https://img.shields.io/badge/-%231EEF1E?style=flat&logo=none) ![#CB7548](https://img.shields.io/badge/-%23CB7548?style=flat&logo=none) ![#6751D6](https://img.shields.io/badge/-%236751D6?style=flat&logo=none) ![#9D6F2E](https://img.shields.io/badge/-%239D6F2E?style=flat&logo=none) ![#726CE9](https://img.shields.io/badge/-%23726CE9?style=flat&logo=none) ![#C6058F](https://img.shields.io/badge/-%23C6058F?style=flat&logo=none) ![#0899CD](https://img.shields.io/badge/-%230899CD?style=flat&logo=none) ![#B1156B](https://img.shields.io/badge/-%23B1156B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-08 17:03:17
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(120, 87%, 53%) |  rgb(30, 239, 30)  | #1EEF1E | 83 |
| 2 | hsl(21, 56%, 54%)  | rgb(203, 117, 72)  | #CB7548 |173 |
| 3 | hsl(250, 62%, 58%) | rgb(103, 81, 214)  | #6751D6 |104 |
| 4 | hsl(35, 54%, 40%)  | rgb(157, 111, 46)  | #9D6F2E |137 |
| 5 | hsl(243, 74%, 67%) | rgb(114, 108, 233) | #726CE9 |105 |
| 6 | hsl(317, 95%, 40%) |  rgb(198, 5, 143)  | #C6058F |163 |
| 7 | hsl(196, 92%, 42%) |  rgb(8, 153, 205)  | #0899CD | 38 |
| 8 | hsl(327, 78%, 39%) | rgb(177, 21, 107)  | #B1156B |126 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(120, 87%, 53%),rgb(30, 239, 30),83
hsl(21, 56%, 54%),rgb(203, 117, 72),173
hsl(250, 62%, 58%),rgb(103, 81, 214),104
hsl(35, 54%, 40%),rgb(157, 111, 46),137
hsl(243, 74%, 67%),rgb(114, 108, 233),105
hsl(317, 95%, 40%),rgb(198, 5, 143),163
hsl(196, 92%, 42%),rgb(8, 153, 205),38
hsl(327, 78%, 39%),rgb(177, 21, 107),126

Generated: 2026-05-08 17:03:17
```
