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

![#551781](https://img.shields.io/badge/-%23551781?style=flat&logo=none) ![#1923AD](https://img.shields.io/badge/-%231923AD?style=flat&logo=none) ![#991861](https://img.shields.io/badge/-%23991861?style=flat&logo=none) ![#21DBE2](https://img.shields.io/badge/-%2321DBE2?style=flat&logo=none) ![#D1EB28](https://img.shields.io/badge/-%23D1EB28?style=flat&logo=none) ![#57EAC7](https://img.shields.io/badge/-%2357EAC7?style=flat&logo=none) ![#DB4CE0](https://img.shields.io/badge/-%23DB4CE0?style=flat&logo=none) ![#D62885](https://img.shields.io/badge/-%23D62885?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-16 01:50:31
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(275, 69%, 30%) |  rgb(85, 23, 129)  | #551781 | 91 |
| 2 | hsl(236, 74%, 39%) |  rgb(25, 35, 173)  | #1923AD | 25 |
| 3 | hsl(326, 72%, 35%) |  rgb(153, 24, 97)  | #991861 |126 |
| 4 | hsl(182, 77%, 51%) | rgb(33, 219, 226)  | #21DBE2 | 80 |
| 5 | hsl(68, 83%, 54%)  | rgb(209, 235, 40)  | #D1EB28 |191 |
| 6 | hsl(166, 78%, 63%) | rgb(87, 234, 199)  | #57EAC7 |122 |
| 7 | hsl(298, 71%, 59%) | rgb(219, 76, 224)  | #DB4CE0 |170 |
| 8 | hsl(328, 68%, 50%) | rgb(214, 40, 133)  | #D62885 |169 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(275, 69%, 30%),rgb(85, 23, 129),91
hsl(236, 74%, 39%),rgb(25, 35, 173),25
hsl(326, 72%, 35%),rgb(153, 24, 97),126
hsl(182, 77%, 51%),rgb(33, 219, 226),80
hsl(68, 83%, 54%),rgb(209, 235, 40),191
hsl(166, 78%, 63%),rgb(87, 234, 199),122
hsl(298, 71%, 59%),rgb(219, 76, 224),170
hsl(328, 68%, 50%),rgb(214, 40, 133),169

Generated: 2026-04-16 01:50:31
```
