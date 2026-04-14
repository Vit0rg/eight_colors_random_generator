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

![#7AE4D8](https://img.shields.io/badge/-%237AE4D8?style=flat&logo=none) ![#3FA056](https://img.shields.io/badge/-%233FA056?style=flat&logo=none) ![#370FFF](https://img.shields.io/badge/-%23370FFF?style=flat&logo=none) ![#E976B9](https://img.shields.io/badge/-%23E976B9?style=flat&logo=none) ![#4303A4](https://img.shields.io/badge/-%234303A4?style=flat&logo=none) ![#0241FC](https://img.shields.io/badge/-%230241FC?style=flat&logo=none) ![#15BBAA](https://img.shields.io/badge/-%2315BBAA?style=flat&logo=none) ![#2F6E92](https://img.shields.io/badge/-%232F6E92?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-14 16:56:29
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(173, 67%, 69%) | rgb(122, 228, 216) | #7AE4D8 |116 |
| 2 | hsl(134, 43%, 44%) |  rgb(63, 160, 86)  | #3FA056 | 72 |
| 3 |hsl(250, 100%, 53%) |  rgb(55, 15, 255)  | #370FFF | 57 |
| 4 | hsl(325, 73%, 69%) | rgb(233, 118, 185) | #E976B9 |212 |
| 5 | hsl(264, 96%, 33%) |  rgb(67, 3, 164)   | #4303A4 | 55 |
| 6 | hsl(225, 98%, 50%) |  rgb(2, 65, 252)   | #0241FC | 27 |
| 7 | hsl(174, 79%, 41%) | rgb(21, 187, 170)  | #15BBAA | 43 |
| 8 | hsl(202, 51%, 38%) | rgb(47, 110, 146)  | #2F6E92 | 67 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(173, 67%, 69%),rgb(122, 228, 216),116
hsl(134, 43%, 44%),rgb(63, 160, 86),72
hsl(250, 100%, 53%),rgb(55, 15, 255),57
hsl(325, 73%, 69%),rgb(233, 118, 185),212
hsl(264, 96%, 33%),rgb(67, 3, 164),55
hsl(225, 98%, 50%),rgb(2, 65, 252),27
hsl(174, 79%, 41%),rgb(21, 187, 170),43
hsl(202, 51%, 38%),rgb(47, 110, 146),67

Generated: 2026-04-14 16:56:29
```
