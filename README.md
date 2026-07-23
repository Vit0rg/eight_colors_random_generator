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

![#4FC9B4](https://img.shields.io/badge/-%234FC9B4?style=flat&logo=none) ![#35DE38](https://img.shields.io/badge/-%2335DE38?style=flat&logo=none) ![#AFD660](https://img.shields.io/badge/-%23AFD660?style=flat&logo=none) ![#7F2C90](https://img.shields.io/badge/-%237F2C90?style=flat&logo=none) ![#5382D4](https://img.shields.io/badge/-%235382D4?style=flat&logo=none) ![#01D559](https://img.shields.io/badge/-%2301D559?style=flat&logo=none) ![#0268ED](https://img.shields.io/badge/-%230268ED?style=flat&logo=none) ![#E721A5](https://img.shields.io/badge/-%23E721A5?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-23 10:11:34
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(170, 53%, 55%) | rgb(79, 201, 180)  | #4FC9B4 |116 |
| 2 | hsl(121, 72%, 54%) |  rgb(53, 222, 56)  | #35DE38 | 77 |
| 3 | hsl(80, 59%, 61%)  | rgb(175, 214, 96)  | #AFD660 |150 |
| 4 | hsl(290, 53%, 37%) | rgb(127, 44, 144)  | #7F2C90 | 97 |
| 5 | hsl(218, 60%, 58%) | rgb(83, 130, 212)  | #5382D4 |110 |
| 6 | hsl(145, 99%, 42%) |  rgb(1, 213, 89)   | #01D559 | 42 |
| 7 | hsl(214, 98%, 47%) |  rgb(2, 104, 237)  | #0268ED | 33 |
| 8 | hsl(320, 81%, 52%) | rgb(231, 33, 165)  | #E721A5 |205 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(170, 53%, 55%),rgb(79, 201, 180),116
hsl(121, 72%, 54%),rgb(53, 222, 56),77
hsl(80, 59%, 61%),rgb(175, 214, 96),150
hsl(290, 53%, 37%),rgb(127, 44, 144),97
hsl(218, 60%, 58%),rgb(83, 130, 212),110
hsl(145, 99%, 42%),rgb(1, 213, 89),42
hsl(214, 98%, 47%),rgb(2, 104, 237),33
hsl(320, 81%, 52%),rgb(231, 33, 165),205

Generated: 2026-07-23 10:11:34
```
