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

![#16E8E1](https://img.shields.io/badge/-%2316E8E1?style=flat&logo=none) ![#AD57C1](https://img.shields.io/badge/-%23AD57C1?style=flat&logo=none) ![#C068D9](https://img.shields.io/badge/-%23C068D9?style=flat&logo=none) ![#53F3BB](https://img.shields.io/badge/-%2353F3BB?style=flat&logo=none) ![#4DF306](https://img.shields.io/badge/-%234DF306?style=flat&logo=none) ![#2A8779](https://img.shields.io/badge/-%232A8779?style=flat&logo=none) ![#1F5AD0](https://img.shields.io/badge/-%231F5AD0?style=flat&logo=none) ![#2805C0](https://img.shields.io/badge/-%232805C0?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-12 02:40:04
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(178, 82%, 50%) | rgb(22, 232, 225)  | #16E8E1 | 50 |
| 2 | hsl(289, 46%, 55%) | rgb(173, 87, 193)  | #AD57C1 |140 |
| 3 | hsl(287, 60%, 63%) | rgb(192, 104, 217) | #C068D9 |176 |
| 4 | hsl(159, 87%, 64%) | rgb(83, 243, 187)  | #53F3BB |122 |
| 5 | hsl(102, 95%, 49%) |  rgb(77, 243, 6)   | #4DF306 |118 |
| 6 | hsl(171, 52%, 35%) | rgb(42, 135, 121)  | #2A8779 | 72 |
| 7 | hsl(220, 74%, 47%) |  rgb(31, 90, 208)  | #1F5AD0 | 68 |
| 8 | hsl(251, 94%, 39%) |  rgb(40, 5, 192)   | #2805C0 | 56 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(178, 82%, 50%),rgb(22, 232, 225),50
hsl(289, 46%, 55%),rgb(173, 87, 193),140
hsl(287, 60%, 63%),rgb(192, 104, 217),176
hsl(159, 87%, 64%),rgb(83, 243, 187),122
hsl(102, 95%, 49%),rgb(77, 243, 6),118
hsl(171, 52%, 35%),rgb(42, 135, 121),72
hsl(220, 74%, 47%),rgb(31, 90, 208),68
hsl(251, 94%, 39%),rgb(40, 5, 192),56

Generated: 2026-06-12 02:40:04
```
