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

![#7F9D38](https://img.shields.io/badge/-%237F9D38?style=flat&logo=none) ![#A3F05A](https://img.shields.io/badge/-%23A3F05A?style=flat&logo=none) ![#287F38](https://img.shields.io/badge/-%23287F38?style=flat&logo=none) ![#E58F6F](https://img.shields.io/badge/-%23E58F6F?style=flat&logo=none) ![#B9184B](https://img.shields.io/badge/-%23B9184B?style=flat&logo=none) ![#8C248D](https://img.shields.io/badge/-%238C248D?style=flat&logo=none) ![#CB5CDA](https://img.shields.io/badge/-%23CB5CDA?style=flat&logo=none) ![#EC3AFD](https://img.shields.io/badge/-%23EC3AFD?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-26 02:30:46
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(78, 47%, 42%)  | rgb(127, 157, 56)  | #7F9D38 |107 |
| 2 | hsl(91, 84%, 65%)  | rgb(163, 240, 90)  | #A3F05A |156 |
| 3 | hsl(131, 52%, 33%) |  rgb(40, 127, 56)  | #287F38 | 65 |
| 4 | hsl(16, 70%, 67%)  | rgb(229, 143, 111) | #E58F6F |180 |
| 5 | hsl(341, 77%, 41%) |  rgb(185, 24, 75)  | #B9184B |161 |
| 6 | hsl(299, 59%, 35%) | rgb(140, 36, 141)  | #8C248D |133 |
| 7 | hsl(293, 63%, 61%) | rgb(203, 92, 218)  | #CB5CDA |176 |
| 8 | hsl(295, 98%, 61%) | rgb(236, 58, 253)  | #EC3AFD |207 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(78, 47%, 42%),rgb(127, 157, 56),107
hsl(91, 84%, 65%),rgb(163, 240, 90),156
hsl(131, 52%, 33%),rgb(40, 127, 56),65
hsl(16, 70%, 67%),rgb(229, 143, 111),180
hsl(341, 77%, 41%),rgb(185, 24, 75),161
hsl(299, 59%, 35%),rgb(140, 36, 141),133
hsl(293, 63%, 61%),rgb(203, 92, 218),176
hsl(295, 98%, 61%),rgb(236, 58, 253),207

Generated: 2026-06-26 02:30:46
```
