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

![#3575A0](https://img.shields.io/badge/-%233575A0?style=flat&logo=none) ![#74EB8A](https://img.shields.io/badge/-%2374EB8A?style=flat&logo=none) ![#5CC5DF](https://img.shields.io/badge/-%235CC5DF?style=flat&logo=none) ![#7E9D1F](https://img.shields.io/badge/-%237E9D1F?style=flat&logo=none) ![#68F278](https://img.shields.io/badge/-%2368F278?style=flat&logo=none) ![#3D920B](https://img.shields.io/badge/-%233D920B?style=flat&logo=none) ![#D60E5E](https://img.shields.io/badge/-%23D60E5E?style=flat&logo=none) ![#908027](https://img.shields.io/badge/-%23908027?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-10 18:24:37
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(204, 50%, 42%) | rgb(53, 117, 160)  | #3575A0 | 67 |
| 2 | hsl(131, 75%, 69%) | rgb(116, 235, 138) | #74EB8A |121 |
| 3 | hsl(192, 68%, 62%) | rgb(92, 197, 223)  | #5CC5DF |116 |
| 4 | hsl(75, 67%, 37%)  | rgb(126, 157, 31)  | #7E9D1F |107 |
| 5 | hsl(127, 85%, 68%) | rgb(104, 242, 120) | #68F278 |120 |
| 6 | hsl(98, 85%, 31%)  |  rgb(61, 146, 11)  | #3D920B | 70 |
| 7 | hsl(336, 87%, 45%) |  rgb(214, 14, 94)  | #D60E5E |162 |
| 8 | hsl(51, 57%, 36%)  | rgb(144, 128, 39)  | #908027 |143 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(204, 50%, 42%),rgb(53, 117, 160),67
hsl(131, 75%, 69%),rgb(116, 235, 138),121
hsl(192, 68%, 62%),rgb(92, 197, 223),116
hsl(75, 67%, 37%),rgb(126, 157, 31),107
hsl(127, 85%, 68%),rgb(104, 242, 120),120
hsl(98, 85%, 31%),rgb(61, 146, 11),70
hsl(336, 87%, 45%),rgb(214, 14, 94),162
hsl(51, 57%, 36%),rgb(144, 128, 39),143

Generated: 2026-06-10 18:24:37
```
