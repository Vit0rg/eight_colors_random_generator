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

![#BBCE78](https://img.shields.io/badge/-%23BBCE78?style=flat&logo=none) ![#7169E2](https://img.shields.io/badge/-%237169E2?style=flat&logo=none) ![#3CF051](https://img.shields.io/badge/-%233CF051?style=flat&logo=none) ![#C2AA5B](https://img.shields.io/badge/-%23C2AA5B?style=flat&logo=none) ![#F05241](https://img.shields.io/badge/-%23F05241?style=flat&logo=none) ![#5434F8](https://img.shields.io/badge/-%235434F8?style=flat&logo=none) ![#3833D0](https://img.shields.io/badge/-%233833D0?style=flat&logo=none) ![#587A1E](https://img.shields.io/badge/-%23587A1E?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-02 11:57:25
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(73, 47%, 64%)  | rgb(187, 206, 120) | #BBCE78 |186 |
| 2 | hsl(244, 68%, 65%) | rgb(113, 105, 226) | #7169E2 |104 |
| 3 | hsl(127, 86%, 59%) |  rgb(60, 240, 81)  | #3CF051 | 84 |
| 4 | hsl(46, 46%, 56%)  | rgb(194, 170, 91)  | #C2AA5B |180 |
| 5 |  hsl(6, 86%, 60%)  |  rgb(240, 82, 65)  | #F05241 |209 |
| 6 | hsl(250, 94%, 59%) |  rgb(84, 52, 248)  | #5434F8 | 99 |
| 7 | hsl(242, 63%, 51%) |  rgb(56, 51, 208)  | #3833D0 | 62 |
| 8 | hsl(82, 60%, 30%)  |  rgb(88, 122, 30)  | #587A1E |101 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(73, 47%, 64%),rgb(187, 206, 120),186
hsl(244, 68%, 65%),rgb(113, 105, 226),104
hsl(127, 86%, 59%),rgb(60, 240, 81),84
hsl(46, 46%, 56%),rgb(194, 170, 91),180
hsl(6, 86%, 60%),rgb(240, 82, 65),209
hsl(250, 94%, 59%),rgb(84, 52, 248),99
hsl(242, 63%, 51%),rgb(56, 51, 208),62
hsl(82, 60%, 30%),rgb(88, 122, 30),101

Generated: 2026-06-02 11:57:25
```
