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

![#0A980A](https://img.shields.io/badge/-%230A980A?style=flat&logo=none) ![#D20DBB](https://img.shields.io/badge/-%23D20DBB?style=flat&logo=none) ![#EC7D1C](https://img.shields.io/badge/-%23EC7D1C?style=flat&logo=none) ![#0DA087](https://img.shields.io/badge/-%230DA087?style=flat&logo=none) ![#09A344](https://img.shields.io/badge/-%2309A344?style=flat&logo=none) ![#8A109C](https://img.shields.io/badge/-%238A109C?style=flat&logo=none) ![#4CD5EA](https://img.shields.io/badge/-%234CD5EA?style=flat&logo=none) ![#0F94C1](https://img.shields.io/badge/-%230F94C1?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-09 02:02:19
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(120, 87%, 32%) |  rgb(10, 152, 10)  | #0A980A | 34 |
| 2 | hsl(307, 88%, 44%) | rgb(210, 13, 187)  | #D20DBB |164 |
| 3 | hsl(28, 85%, 52%)  | rgb(236, 125, 28)  | #EC7D1C |209 |
| 4 | hsl(170, 85%, 34%) | rgb(13, 160, 135)  | #0DA087 | 37 |
| 5 | hsl(143, 89%, 34%) |  rgb(9, 163, 68)   | #09A344 | 35 |
| 6 | hsl(292, 81%, 34%) | rgb(138, 16, 156)  | #8A109C |127 |
| 7 | hsl(188, 79%, 61%) | rgb(76, 213, 234)  | #4CD5EA | 81 |
| 8 | hsl(195, 85%, 41%) | rgb(15, 148, 193)  | #0F94C1 | 38 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(120, 87%, 32%),rgb(10, 152, 10),34
hsl(307, 88%, 44%),rgb(210, 13, 187),164
hsl(28, 85%, 52%),rgb(236, 125, 28),209
hsl(170, 85%, 34%),rgb(13, 160, 135),37
hsl(143, 89%, 34%),rgb(9, 163, 68),35
hsl(292, 81%, 34%),rgb(138, 16, 156),127
hsl(188, 79%, 61%),rgb(76, 213, 234),81
hsl(195, 85%, 41%),rgb(15, 148, 193),38

Generated: 2026-05-09 02:02:19
```
