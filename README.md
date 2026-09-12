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

![#F857FE](https://img.shields.io/badge/-%23F857FE?style=flat&logo=none) ![#2F009E](https://img.shields.io/badge/-%232F009E?style=flat&logo=none) ![#0B488D](https://img.shields.io/badge/-%230B488D?style=flat&logo=none) ![#EB64BE](https://img.shields.io/badge/-%23EB64BE?style=flat&logo=none) ![#ACBC2D](https://img.shields.io/badge/-%23ACBC2D?style=flat&logo=none) ![#D79912](https://img.shields.io/badge/-%23D79912?style=flat&logo=none) ![#CFF074](https://img.shields.io/badge/-%23CFF074?style=flat&logo=none) ![#AE44BA](https://img.shields.io/badge/-%23AE44BA?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-12 02:13:04
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(298, 99%, 67%) | rgb(248, 87, 254)  | #F857FE |213 |
| 2 |hsl(258, 100%, 31%) |  rgb(47, 0, 158)   | #2F009E | 55 |
| 3 | hsl(212, 85%, 30%) |  rgb(11, 72, 141)  | #0B488D | 25 |
| 4 | hsl(320, 78%, 66%) | rgb(235, 100, 190) | #EB64BE |212 |
| 5 | hsl(67, 61%, 46%)  | rgb(172, 188, 45)  | #ACBC2D |149 |
| 6 | hsl(41, 84%, 46%)  | rgb(215, 153, 18)  | #D79912 |178 |
| 7 | hsl(76, 81%, 70%)  | rgb(207, 240, 116) | #CFF074 |192 |
| 8 | hsl(294, 46%, 50%) | rgb(174, 68, 186)  | #AE44BA |134 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(298, 99%, 67%),rgb(248, 87, 254),213
hsl(258, 100%, 31%),rgb(47, 0, 158),55
hsl(212, 85%, 30%),rgb(11, 72, 141),25
hsl(320, 78%, 66%),rgb(235, 100, 190),212
hsl(67, 61%, 46%),rgb(172, 188, 45),149
hsl(41, 84%, 46%),rgb(215, 153, 18),178
hsl(76, 81%, 70%),rgb(207, 240, 116),192
hsl(294, 46%, 50%),rgb(174, 68, 186),134

Generated: 2026-09-12 02:13:04
```
