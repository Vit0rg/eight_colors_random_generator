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

![#6EBA3F](https://img.shields.io/badge/-%236EBA3F?style=flat&logo=none) ![#0512A3](https://img.shields.io/badge/-%230512A3?style=flat&logo=none) ![#642D8F](https://img.shields.io/badge/-%23642D8F?style=flat&logo=none) ![#919C10](https://img.shields.io/badge/-%23919C10?style=flat&logo=none) ![#807923](https://img.shields.io/badge/-%23807923?style=flat&logo=none) ![#2D7B8F](https://img.shields.io/badge/-%232D7B8F?style=flat&logo=none) ![#7250D7](https://img.shields.io/badge/-%237250D7?style=flat&logo=none) ![#76E97A](https://img.shields.io/badge/-%2376E97A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-13 02:12:48
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(97, 49%, 49%)  | rgb(110, 186, 63)  | #6EBA3F |113 |
| 2 | hsl(235, 94%, 33%) |  rgb(5, 18, 163)   | #0512A3 | 19 |
| 3 | hsl(274, 52%, 37%) | rgb(100, 45, 143)  | #642D8F | 97 |
| 4 | hsl(65, 81%, 34%)  | rgb(145, 156, 16)  | #919C10 |142 |
| 5 | hsl(56, 57%, 32%)  | rgb(128, 121, 35)  | #807923 |137 |
| 6 | hsl(192, 52%, 37%) | rgb(45, 123, 143)  | #2D7B8F | 67 |
| 7 | hsl(255, 63%, 58%) | rgb(114, 80, 215)  | #7250D7 |104 |
| 8 | hsl(122, 73%, 69%) | rgb(118, 233, 122) | #76E97A |120 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(97, 49%, 49%),rgb(110, 186, 63),113
hsl(235, 94%, 33%),rgb(5, 18, 163),19
hsl(274, 52%, 37%),rgb(100, 45, 143),97
hsl(65, 81%, 34%),rgb(145, 156, 16),142
hsl(56, 57%, 32%),rgb(128, 121, 35),137
hsl(192, 52%, 37%),rgb(45, 123, 143),67
hsl(255, 63%, 58%),rgb(114, 80, 215),104
hsl(122, 73%, 69%),rgb(118, 233, 122),120

Generated: 2026-05-13 02:12:48
```
