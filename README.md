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

![#E6B960](https://img.shields.io/badge/-%23E6B960?style=flat&logo=none) ![#8991CC](https://img.shields.io/badge/-%238991CC?style=flat&logo=none) ![#D82638](https://img.shields.io/badge/-%23D82638?style=flat&logo=none) ![#FD7158](https://img.shields.io/badge/-%23FD7158?style=flat&logo=none) ![#9C421B](https://img.shields.io/badge/-%239C421B?style=flat&logo=none) ![#B83BF6](https://img.shields.io/badge/-%23B83BF6?style=flat&logo=none) ![#CD0361](https://img.shields.io/badge/-%23CD0361?style=flat&logo=none) ![#D22D08](https://img.shields.io/badge/-%23D22D08?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-10 16:42:46
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(40, 73%, 64%)  | rgb(230, 185, 96)  | #E6B960 |186 |
| 2 | hsl(233, 40%, 67%) | rgb(137, 145, 204) | #8991CC |146 |
| 3 | hsl(354, 70%, 50%) |  rgb(216, 38, 56)  | #D82638 |167 |
| 4 |  hsl(9, 98%, 67%)  | rgb(253, 113, 88)  | #FD7158 |210 |
| 5 | hsl(18, 70%, 36%)  |  rgb(156, 66, 27)  | #9C421B |131 |
| 6 | hsl(280, 92%, 60%) | rgb(184, 59, 246)  | #B83BF6 |171 |
| 7 | hsl(332, 97%, 41%) |  rgb(205, 3, 97)   | #CD0361 |162 |
| 8 | hsl(11, 92%, 43%)  |  rgb(210, 45, 8)   | #D22D08 |166 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(40, 73%, 64%),rgb(230, 185, 96),186
hsl(233, 40%, 67%),rgb(137, 145, 204),146
hsl(354, 70%, 50%),rgb(216, 38, 56),167
hsl(9, 98%, 67%),rgb(253, 113, 88),210
hsl(18, 70%, 36%),rgb(156, 66, 27),131
hsl(280, 92%, 60%),rgb(184, 59, 246),171
hsl(332, 97%, 41%),rgb(205, 3, 97),162
hsl(11, 92%, 43%),rgb(210, 45, 8),166

Generated: 2026-08-10 16:42:46
```
