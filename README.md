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

![#D3C482](https://img.shields.io/badge/-%23D3C482?style=flat&logo=none) ![#08E7DF](https://img.shields.io/badge/-%2308E7DF?style=flat&logo=none) ![#505BF0](https://img.shields.io/badge/-%23505BF0?style=flat&logo=none) ![#1A8440](https://img.shields.io/badge/-%231A8440?style=flat&logo=none) ![#F30B58](https://img.shields.io/badge/-%23F30B58?style=flat&logo=none) ![#238050](https://img.shields.io/badge/-%23238050?style=flat&logo=none) ![#5F5FF1](https://img.shields.io/badge/-%235F5FF1?style=flat&logo=none) ![#716DED](https://img.shields.io/badge/-%23716DED?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-02 01:52:31
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(49, 48%, 67%)  | rgb(211, 196, 130) | #D3C482 |187 |
| 2 | hsl(178, 93%, 47%) |  rgb(8, 231, 223)  | #08E7DF | 50 |
| 3 | hsl(236, 85%, 63%) |  rgb(80, 91, 240)  | #505BF0 |105 |
| 4 | hsl(142, 67%, 31%) |  rgb(26, 132, 64)  | #1A8440 | 71 |
| 5 | hsl(340, 91%, 50%) |  rgb(243, 11, 88)  | #F30B58 |198 |
| 6 | hsl(149, 57%, 32%) |  rgb(35, 128, 80)  | #238050 | 72 |
| 7 | hsl(240, 84%, 66%) |  rgb(95, 95, 241)  | #5F5FF1 |105 |
| 8 | hsl(242, 78%, 68%) | rgb(113, 109, 237) | #716DED |105 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(49, 48%, 67%),rgb(211, 196, 130),187
hsl(178, 93%, 47%),rgb(8, 231, 223),50
hsl(236, 85%, 63%),rgb(80, 91, 240),105
hsl(142, 67%, 31%),rgb(26, 132, 64),71
hsl(340, 91%, 50%),rgb(243, 11, 88),198
hsl(149, 57%, 32%),rgb(35, 128, 80),72
hsl(240, 84%, 66%),rgb(95, 95, 241),105
hsl(242, 78%, 68%),rgb(113, 109, 237),105

Generated: 2026-08-02 01:52:31
```
