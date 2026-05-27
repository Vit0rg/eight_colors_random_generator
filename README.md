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

![#5C41E6](https://img.shields.io/badge/-%235C41E6?style=flat&logo=none) ![#B3D712](https://img.shields.io/badge/-%23B3D712?style=flat&logo=none) ![#395597](https://img.shields.io/badge/-%23395597?style=flat&logo=none) ![#6DCEC8](https://img.shields.io/badge/-%236DCEC8?style=flat&logo=none) ![#F92E42](https://img.shields.io/badge/-%23F92E42?style=flat&logo=none) ![#2D4C6B](https://img.shields.io/badge/-%232D4C6B?style=flat&logo=none) ![#A7C86E](https://img.shields.io/badge/-%23A7C86E?style=flat&logo=none) ![#5FCD9A](https://img.shields.io/badge/-%235FCD9A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-27 18:20:05
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(250, 77%, 58%) |  rgb(92, 65, 230)  | #5C41E6 | 98 |
| 2 | hsl(71, 84%, 46%)  | rgb(179, 215, 18)  | #B3D712 |148 |
| 3 | hsl(222, 45%, 41%) |  rgb(57, 85, 151)  | #395597 | 67 |
| 4 | hsl(176, 50%, 62%) | rgb(109, 206, 200) | #6DCEC8 |116 |
| 5 | hsl(354, 95%, 58%) |  rgb(249, 46, 66)  | #F92E42 |203 |
| 6 | hsl(210, 41%, 30%) |  rgb(45, 76, 107)  | #2D4C6B | 60 |
| 7 | hsl(82, 45%, 61%)  | rgb(167, 200, 110) | #A7C86E |150 |
| 8 | hsl(152, 53%, 59%) | rgb(95, 205, 154)  | #5FCD9A |115 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(250, 77%, 58%),rgb(92, 65, 230),98
hsl(71, 84%, 46%),rgb(179, 215, 18),148
hsl(222, 45%, 41%),rgb(57, 85, 151),67
hsl(176, 50%, 62%),rgb(109, 206, 200),116
hsl(354, 95%, 58%),rgb(249, 46, 66),203
hsl(210, 41%, 30%),rgb(45, 76, 107),60
hsl(82, 45%, 61%),rgb(167, 200, 110),150
hsl(152, 53%, 59%),rgb(95, 205, 154),115

Generated: 2026-05-27 18:20:05
```
