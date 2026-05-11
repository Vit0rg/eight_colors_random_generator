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

![#77D87B](https://img.shields.io/badge/-%2377D87B?style=flat&logo=none) ![#4AE63B](https://img.shields.io/badge/-%234AE63B?style=flat&logo=none) ![#FF8656](https://img.shields.io/badge/-%23FF8656?style=flat&logo=none) ![#545EC9](https://img.shields.io/badge/-%23545EC9?style=flat&logo=none) ![#650DA0](https://img.shields.io/badge/-%23650DA0?style=flat&logo=none) ![#611BED](https://img.shields.io/badge/-%23611BED?style=flat&logo=none) ![#B1721F](https://img.shields.io/badge/-%23B1721F?style=flat&logo=none) ![#823CC8](https://img.shields.io/badge/-%23823CC8?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-11 17:49:36
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(122, 56%, 66%) | rgb(119, 216, 123) | #77D87B |114 |
| 2 | hsl(115, 78%, 57%) |  rgb(74, 230, 59)  | #4AE63B | 77 |
| 3 | hsl(17, 100%, 67%) | rgb(255, 134, 86)  | #FF8656 |216 |
| 4 | hsl(235, 52%, 56%) |  rgb(84, 94, 201)  | #545EC9 |104 |
| 5 | hsl(276, 85%, 34%) | rgb(101, 13, 160)  | #650DA0 | 91 |
| 6 | hsl(260, 86%, 52%) |  rgb(97, 27, 237)  | #611BED | 99 |
| 7 | hsl(34, 70%, 41%)  | rgb(177, 114, 31)  | #B1721F |137 |
| 8 | hsl(270, 56%, 51%) | rgb(130, 60, 200)  | #823CC8 |134 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(122, 56%, 66%),rgb(119, 216, 123),114
hsl(115, 78%, 57%),rgb(74, 230, 59),77
hsl(17, 100%, 67%),rgb(255, 134, 86),216
hsl(235, 52%, 56%),rgb(84, 94, 201),104
hsl(276, 85%, 34%),rgb(101, 13, 160),91
hsl(260, 86%, 52%),rgb(97, 27, 237),99
hsl(34, 70%, 41%),rgb(177, 114, 31),137
hsl(270, 56%, 51%),rgb(130, 60, 200),134

Generated: 2026-05-11 17:49:36
```
