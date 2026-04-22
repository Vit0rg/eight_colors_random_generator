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

![#6FF583](https://img.shields.io/badge/-%236FF583?style=flat&logo=none) ![#4ECC00](https://img.shields.io/badge/-%234ECC00?style=flat&logo=none) ![#BCE519](https://img.shields.io/badge/-%23BCE519?style=flat&logo=none) ![#1477DF](https://img.shields.io/badge/-%231477DF?style=flat&logo=none) ![#92DD82](https://img.shields.io/badge/-%2392DD82?style=flat&logo=none) ![#349C11](https://img.shields.io/badge/-%23349C11?style=flat&logo=none) ![#D5AC61](https://img.shields.io/badge/-%23D5AC61?style=flat&logo=none) ![#FD5DCD](https://img.shields.io/badge/-%23FD5DCD?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-22 01:46:12
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(129, 87%, 70%) | rgb(111, 245, 131) | #6FF583 |121 |
| 2 | hsl(97, 100%, 40%) |  rgb(78, 204, 0)   | #4ECC00 |112 |
| 3 | hsl(72, 80%, 50%)  | rgb(188, 229, 25)  | #BCE519 |184 |
| 4 | hsl(211, 83%, 48%) | rgb(20, 119, 223)  | #1477DF | 32 |
| 5 | hsl(109, 58%, 69%) | rgb(146, 221, 130) | #92DD82 |151 |
| 6 | hsl(105, 80%, 34%) |  rgb(52, 156, 17)  | #349C11 | 70 |
| 7 | hsl(39, 58%, 61%)  | rgb(213, 172, 97)  | #D5AC61 |180 |
| 8 | hsl(318, 98%, 68%) | rgb(253, 93, 205)  | #FD5DCD |212 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(129, 87%, 70%),rgb(111, 245, 131),121
hsl(97, 100%, 40%),rgb(78, 204, 0),112
hsl(72, 80%, 50%),rgb(188, 229, 25),184
hsl(211, 83%, 48%),rgb(20, 119, 223),32
hsl(109, 58%, 69%),rgb(146, 221, 130),151
hsl(105, 80%, 34%),rgb(52, 156, 17),70
hsl(39, 58%, 61%),rgb(213, 172, 97),180
hsl(318, 98%, 68%),rgb(253, 93, 205),212

Generated: 2026-04-22 01:46:12
```
