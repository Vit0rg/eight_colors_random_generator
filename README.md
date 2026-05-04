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

![#EC3E27](https://img.shields.io/badge/-%23EC3E27?style=flat&logo=none) ![#FD381A](https://img.shields.io/badge/-%23FD381A?style=flat&logo=none) ![#3EE7F3](https://img.shields.io/badge/-%233EE7F3?style=flat&logo=none) ![#2C77F1](https://img.shields.io/badge/-%232C77F1?style=flat&logo=none) ![#647DD7](https://img.shields.io/badge/-%23647DD7?style=flat&logo=none) ![#03EC64](https://img.shields.io/badge/-%2303EC64?style=flat&logo=none) ![#6F1CCE](https://img.shields.io/badge/-%236F1CCE?style=flat&logo=none) ![#3BCDF1](https://img.shields.io/badge/-%233BCDF1?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-04 17:22:37
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 |  hsl(7, 84%, 54%)  |  rgb(236, 62, 39)  | #EC3E27 |203 |
| 2 |  hsl(8, 99%, 55%)  |  rgb(253, 56, 26)  | #FD381A |203 |
| 3 | hsl(184, 89%, 60%) | rgb(62, 231, 243)  | #3EE7F3 | 87 |
| 4 | hsl(217, 88%, 56%) | rgb(44, 119, 241)  | #2C77F1 | 69 |
| 5 | hsl(227, 59%, 62%) | rgb(100, 125, 215) | #647DD7 |104 |
| 6 | hsl(145, 97%, 47%) |  rgb(3, 236, 100)  | #03EC64 | 48 |
| 7 | hsl(268, 76%, 46%) | rgb(111, 28, 206)  | #6F1CCE | 98 |
| 8 | hsl(192, 87%, 59%) | rgb(59, 205, 241)  | #3BCDF1 | 81 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(7, 84%, 54%),rgb(236, 62, 39),203
hsl(8, 99%, 55%),rgb(253, 56, 26),203
hsl(184, 89%, 60%),rgb(62, 231, 243),87
hsl(217, 88%, 56%),rgb(44, 119, 241),69
hsl(227, 59%, 62%),rgb(100, 125, 215),104
hsl(145, 97%, 47%),rgb(3, 236, 100),48
hsl(268, 76%, 46%),rgb(111, 28, 206),98
hsl(192, 87%, 59%),rgb(59, 205, 241),81

Generated: 2026-05-04 17:22:37
```
