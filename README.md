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

![#11C933](https://img.shields.io/badge/-%2311C933?style=flat&logo=none) ![#B14350](https://img.shields.io/badge/-%23B14350?style=flat&logo=none) ![#63A739](https://img.shields.io/badge/-%2363A739?style=flat&logo=none) ![#2DFFD8](https://img.shields.io/badge/-%232DFFD8?style=flat&logo=none) ![#DFF825](https://img.shields.io/badge/-%23DFF825?style=flat&logo=none) ![#567FD6](https://img.shields.io/badge/-%23567FD6?style=flat&logo=none) ![#71AAE4](https://img.shields.io/badge/-%2371AAE4?style=flat&logo=none) ![#324375](https://img.shields.io/badge/-%23324375?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-16 16:46:48
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(131, 84%, 43%) |  rgb(17, 201, 51)  | #11C933 | 41 |
| 2 | hsl(353, 45%, 48%) |  rgb(177, 67, 80)  | #B14350 |132 |
| 3 | hsl(97, 49%, 44%)  |  rgb(99, 167, 57)  | #63A739 |107 |
| 4 |hsl(169, 100%, 59%) | rgb(45, 255, 216)  | #2DFFD8 | 86 |
| 5 | hsl(67, 94%, 56%)  | rgb(223, 248, 37)  | #DFF825 |191 |
| 6 | hsl(221, 61%, 59%) | rgb(86, 127, 214)  | #567FD6 |104 |
| 7 | hsl(210, 68%, 67%) | rgb(113, 170, 228) | #71AAE4 |110 |
| 8 | hsl(225, 40%, 33%) |  rgb(50, 67, 117)  | #324375 | 60 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(131, 84%, 43%),rgb(17, 201, 51),41
hsl(353, 45%, 48%),rgb(177, 67, 80),132
hsl(97, 49%, 44%),rgb(99, 167, 57),107
hsl(169, 100%, 59%),rgb(45, 255, 216),86
hsl(67, 94%, 56%),rgb(223, 248, 37),191
hsl(221, 61%, 59%),rgb(86, 127, 214),104
hsl(210, 68%, 67%),rgb(113, 170, 228),110
hsl(225, 40%, 33%),rgb(50, 67, 117),60

Generated: 2026-05-16 16:46:48
```
