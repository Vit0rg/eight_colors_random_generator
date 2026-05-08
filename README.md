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

![#C9C126](https://img.shields.io/badge/-%23C9C126?style=flat&logo=none) ![#6FE6B2](https://img.shields.io/badge/-%236FE6B2?style=flat&logo=none) ![#3666A4](https://img.shields.io/badge/-%233666A4?style=flat&logo=none) ![#7D3EF3](https://img.shields.io/badge/-%237D3EF3?style=flat&logo=none) ![#184585](https://img.shields.io/badge/-%23184585?style=flat&logo=none) ![#0D9571](https://img.shields.io/badge/-%230D9571?style=flat&logo=none) ![#47F4A0](https://img.shields.io/badge/-%2347F4A0?style=flat&logo=none) ![#2A8D86](https://img.shields.io/badge/-%232A8D86?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-08 02:08:38
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(57, 68%, 47%)  | rgb(201, 193, 38)  | #C9C126 |185 |
| 2 | hsl(154, 71%, 67%) | rgb(111, 230, 178) | #6FE6B2 |115 |
| 3 | hsl(214, 50%, 43%) | rgb(54, 102, 164)  | #3666A4 | 67 |
| 4 | hsl(261, 89%, 60%) | rgb(125, 62, 243)  | #7D3EF3 | 99 |
| 5 | hsl(215, 69%, 31%) |  rgb(24, 69, 133)  | #184585 | 25 |
| 6 | hsl(164, 83%, 32%) | rgb(13, 149, 113)  | #0D9571 | 36 |
| 7 | hsl(151, 89%, 62%) | rgb(71, 244, 160)  | #47F4A0 | 85 |
| 8 | hsl(176, 54%, 36%) | rgb(42, 141, 134)  | #2A8D86 | 73 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(57, 68%, 47%),rgb(201, 193, 38),185
hsl(154, 71%, 67%),rgb(111, 230, 178),115
hsl(214, 50%, 43%),rgb(54, 102, 164),67
hsl(261, 89%, 60%),rgb(125, 62, 243),99
hsl(215, 69%, 31%),rgb(24, 69, 133),25
hsl(164, 83%, 32%),rgb(13, 149, 113),36
hsl(151, 89%, 62%),rgb(71, 244, 160),85
hsl(176, 54%, 36%),rgb(42, 141, 134),73

Generated: 2026-05-08 02:08:38
```
