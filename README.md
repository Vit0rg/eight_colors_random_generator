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

![#E60E6F](https://img.shields.io/badge/-%23E60E6F?style=flat&logo=none) ![#890F66](https://img.shields.io/badge/-%23890F66?style=flat&logo=none) ![#C7D712](https://img.shields.io/badge/-%23C7D712?style=flat&logo=none) ![#7B9338](https://img.shields.io/badge/-%237B9338?style=flat&logo=none) ![#D644D8](https://img.shields.io/badge/-%23D644D8?style=flat&logo=none) ![#46B6C7](https://img.shields.io/badge/-%2346B6C7?style=flat&logo=none) ![#8EE939](https://img.shields.io/badge/-%238EE939?style=flat&logo=none) ![#75C421](https://img.shields.io/badge/-%2375C421?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-08 02:08:50
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(333, 88%, 48%) | rgb(230, 14, 111)  | #E60E6F |162 |
| 2 | hsl(317, 80%, 30%) | rgb(137, 15, 102)  | #890F66 |126 |
| 3 | hsl(65, 84%, 46%)  | rgb(199, 215, 18)  | #C7D712 |184 |
| 4 | hsl(76, 45%, 40%)  | rgb(123, 147, 56)  | #7B9338 |107 |
| 5 | hsl(299, 66%, 56%) | rgb(214, 68, 216)  | #D644D8 |170 |
| 6 | hsl(188, 54%, 53%) | rgb(70, 182, 199)  | #46B6C7 | 80 |
| 7 | hsl(91, 80%, 57%)  | rgb(142, 233, 57)  | #8EE939 |155 |
| 8 | hsl(89, 71%, 45%)  | rgb(117, 196, 33)  | #75C421 |113 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(333, 88%, 48%),rgb(230, 14, 111),162
hsl(317, 80%, 30%),rgb(137, 15, 102),126
hsl(65, 84%, 46%),rgb(199, 215, 18),184
hsl(76, 45%, 40%),rgb(123, 147, 56),107
hsl(299, 66%, 56%),rgb(214, 68, 216),170
hsl(188, 54%, 53%),rgb(70, 182, 199),80
hsl(91, 80%, 57%),rgb(142, 233, 57),155
hsl(89, 71%, 45%),rgb(117, 196, 33),113

Generated: 2026-09-08 02:08:50
```
