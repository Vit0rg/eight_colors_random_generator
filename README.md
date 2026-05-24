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

![#35B440](https://img.shields.io/badge/-%2335B440?style=flat&logo=none) ![#1AF4B2](https://img.shields.io/badge/-%231AF4B2?style=flat&logo=none) ![#278034](https://img.shields.io/badge/-%23278034?style=flat&logo=none) ![#10C6B6](https://img.shields.io/badge/-%2310C6B6?style=flat&logo=none) ![#8859EC](https://img.shields.io/badge/-%238859EC?style=flat&logo=none) ![#1DB5B8](https://img.shields.io/badge/-%231DB5B8?style=flat&logo=none) ![#CE78B1](https://img.shields.io/badge/-%23CE78B1?style=flat&logo=none) ![#25258D](https://img.shields.io/badge/-%2325258D?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-24 02:27:12
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(125, 54%, 46%) |  rgb(53, 180, 64)  | #35B440 | 77 |
| 2 | hsl(162, 91%, 53%) | rgb(26, 244, 178)  | #1AF4B2 | 85 |
| 3 | hsl(129, 53%, 33%) |  rgb(39, 128, 52)  | #278034 | 71 |
| 4 | hsl(175, 85%, 42%) | rgb(16, 198, 182)  | #10C6B6 | 44 |
| 5 | hsl(259, 80%, 64%) | rgb(136, 89, 236)  | #8859EC |141 |
| 6 | hsl(181, 72%, 42%) | rgb(29, 181, 184)  | #1DB5B8 | 80 |
| 7 | hsl(320, 47%, 64%) | rgb(206, 120, 177) | #CE78B1 |175 |
| 8 | hsl(240, 58%, 35%) |  rgb(37, 37, 141)  | #25258D | 61 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(125, 54%, 46%),rgb(53, 180, 64),77
hsl(162, 91%, 53%),rgb(26, 244, 178),85
hsl(129, 53%, 33%),rgb(39, 128, 52),71
hsl(175, 85%, 42%),rgb(16, 198, 182),44
hsl(259, 80%, 64%),rgb(136, 89, 236),141
hsl(181, 72%, 42%),rgb(29, 181, 184),80
hsl(320, 47%, 64%),rgb(206, 120, 177),175
hsl(240, 58%, 35%),rgb(37, 37, 141),61

Generated: 2026-05-24 02:27:12
```
