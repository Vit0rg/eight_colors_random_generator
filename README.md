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

![#EA9604](https://img.shields.io/badge/-%23EA9604?style=flat&logo=none) ![#70F20C](https://img.shields.io/badge/-%2370F20C?style=flat&logo=none) ![#80D48D](https://img.shields.io/badge/-%2380D48D?style=flat&logo=none) ![#2B6D52](https://img.shields.io/badge/-%232B6D52?style=flat&logo=none) ![#E7930D](https://img.shields.io/badge/-%23E7930D?style=flat&logo=none) ![#807A37](https://img.shields.io/badge/-%23807A37?style=flat&logo=none) ![#B6AC4D](https://img.shields.io/badge/-%23B6AC4D?style=flat&logo=none) ![#DA6C8D](https://img.shields.io/badge/-%23DA6C8D?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-10 01:00:50
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(38, 96%, 47%)  |  rgb(234, 150, 4)  | #EA9604 |214 |
| 2 | hsl(94, 90%, 50%)  | rgb(112, 242, 12)  | #70F20C |118 |
| 3 | hsl(129, 50%, 67%) | rgb(128, 212, 141) | #80D48D |151 |
| 4 | hsl(155, 43%, 30%) |  rgb(43, 109, 82)  | #2B6D52 | 66 |
| 5 | hsl(37, 89%, 48%)  | rgb(231, 147, 13)  | #E7930D |214 |
| 6 | hsl(55, 40%, 36%)  | rgb(128, 122, 55)  | #807A37 |137 |
| 7 | hsl(54, 42%, 51%)  | rgb(182, 172, 77)  | #B6AC4D |180 |
| 8 | hsl(342, 60%, 64%) | rgb(218, 108, 141) | #DA6C8D |175 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(38, 96%, 47%),rgb(234, 150, 4),214
hsl(94, 90%, 50%),rgb(112, 242, 12),118
hsl(129, 50%, 67%),rgb(128, 212, 141),151
hsl(155, 43%, 30%),rgb(43, 109, 82),66
hsl(37, 89%, 48%),rgb(231, 147, 13),214
hsl(55, 40%, 36%),rgb(128, 122, 55),137
hsl(54, 42%, 51%),rgb(182, 172, 77),180
hsl(342, 60%, 64%),rgb(218, 108, 141),175

Generated: 2026-08-10 01:00:50
```
