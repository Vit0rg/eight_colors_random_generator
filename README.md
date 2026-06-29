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

![#9DEB79](https://img.shields.io/badge/-%239DEB79?style=flat&logo=none) ![#C600B6](https://img.shields.io/badge/-%23C600B6?style=flat&logo=none) ![#0AE0AA](https://img.shields.io/badge/-%230AE0AA?style=flat&logo=none) ![#13AECD](https://img.shields.io/badge/-%2313AECD?style=flat&logo=none) ![#1B1A8E](https://img.shields.io/badge/-%231B1A8E?style=flat&logo=none) ![#E1E816](https://img.shields.io/badge/-%23E1E816?style=flat&logo=none) ![#EF57E7](https://img.shields.io/badge/-%23EF57E7?style=flat&logo=none) ![#196794](https://img.shields.io/badge/-%23196794?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-29 02:36:51
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(101, 74%, 70%) | rgb(157, 235, 121) | #9DEB79 |156 |
| 2 |hsl(305, 100%, 39%) |  rgb(198, 0, 182)  | #C600B6 |164 |
| 3 | hsl(165, 91%, 46%) | rgb(10, 224, 170)  | #0AE0AA | 43 |
| 4 | hsl(190, 83%, 44%) | rgb(19, 174, 205)  | #13AECD | 38 |
| 5 | hsl(241, 69%, 33%) |  rgb(27, 26, 142)  | #1B1A8E | 61 |
| 6 | hsl(62, 82%, 50%)  | rgb(225, 232, 22)  | #E1E816 |190 |
| 7 | hsl(303, 83%, 64%) | rgb(239, 87, 231)  | #EF57E7 |213 |
| 8 | hsl(202, 71%, 34%) | rgb(25, 103, 148)  | #196794 | 31 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(101, 74%, 70%),rgb(157, 235, 121),156
hsl(305, 100%, 39%),rgb(198, 0, 182),164
hsl(165, 91%, 46%),rgb(10, 224, 170),43
hsl(190, 83%, 44%),rgb(19, 174, 205),38
hsl(241, 69%, 33%),rgb(27, 26, 142),61
hsl(62, 82%, 50%),rgb(225, 232, 22),190
hsl(303, 83%, 64%),rgb(239, 87, 231),213
hsl(202, 71%, 34%),rgb(25, 103, 148),31

Generated: 2026-06-29 02:36:51
```
