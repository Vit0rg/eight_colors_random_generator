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

![#CF2F62](https://img.shields.io/badge/-%23CF2F62?style=flat&logo=none) ![#A5266A](https://img.shields.io/badge/-%23A5266A?style=flat&logo=none) ![#FF1E9A](https://img.shields.io/badge/-%23FF1E9A?style=flat&logo=none) ![#7A1682](https://img.shields.io/badge/-%237A1682?style=flat&logo=none) ![#DEE55B](https://img.shields.io/badge/-%23DEE55B?style=flat&logo=none) ![#67EE72](https://img.shields.io/badge/-%2367EE72?style=flat&logo=none) ![#E9624D](https://img.shields.io/badge/-%23E9624D?style=flat&logo=none) ![#03D241](https://img.shields.io/badge/-%2303D241?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-08 09:06:19
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(341, 63%, 50%) |  rgb(207, 47, 98)  | #CF2F62 |168 |
| 2 | hsl(328, 62%, 40%) | rgb(165, 38, 106)  | #A5266A |132 |
| 3 |hsl(327, 100%, 56%) | rgb(255, 30, 154)  | #FF1E9A |205 |
| 4 | hsl(296, 70%, 30%) | rgb(122, 22, 130)  | #7A1682 | 91 |
| 5 | hsl(63, 73%, 63%)  | rgb(222, 229, 91)  | #DEE55B |186 |
| 6 | hsl(125, 80%, 67%) | rgb(103, 238, 114) | #67EE72 |120 |
| 7 |  hsl(8, 78%, 61%)  |  rgb(233, 98, 77)  | #E9624D |210 |
| 8 | hsl(138, 97%, 42%) |  rgb(3, 210, 65)   | #03D241 | 41 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(341, 63%, 50%),rgb(207, 47, 98),168
hsl(328, 62%, 40%),rgb(165, 38, 106),132
hsl(327, 100%, 56%),rgb(255, 30, 154),205
hsl(296, 70%, 30%),rgb(122, 22, 130),91
hsl(63, 73%, 63%),rgb(222, 229, 91),186
hsl(125, 80%, 67%),rgb(103, 238, 114),120
hsl(8, 78%, 61%),rgb(233, 98, 77),210
hsl(138, 97%, 42%),rgb(3, 210, 65),41

Generated: 2026-05-08 09:06:19
```
