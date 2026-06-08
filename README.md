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

![#B6C855](https://img.shields.io/badge/-%23B6C855?style=flat&logo=none) ![#43DFF4](https://img.shields.io/badge/-%2343DFF4?style=flat&logo=none) ![#C0E155](https://img.shields.io/badge/-%23C0E155?style=flat&logo=none) ![#275C85](https://img.shields.io/badge/-%23275C85?style=flat&logo=none) ![#FC20DB](https://img.shields.io/badge/-%23FC20DB?style=flat&logo=none) ![#636EE2](https://img.shields.io/badge/-%23636EE2?style=flat&logo=none) ![#77C6D4](https://img.shields.io/badge/-%2377C6D4?style=flat&logo=none) ![#9B9107](https://img.shields.io/badge/-%239B9107?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-08 02:43:31
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(69, 51%, 56%)  | rgb(182, 200, 85)  | #B6C855 |186 |
| 2 | hsl(187, 89%, 61%) | rgb(67, 223, 244)  | #43DFF4 | 81 |
| 3 | hsl(74, 70%, 61%)  | rgb(192, 225, 85)  | #C0E155 |186 |
| 4 | hsl(206, 54%, 34%) |  rgb(39, 92, 133)  | #275C85 | 67 |
| 5 | hsl(309, 98%, 56%) | rgb(252, 32, 219)  | #FC20DB |206 |
| 6 | hsl(235, 69%, 64%) | rgb(99, 110, 226)  | #636EE2 |104 |
| 7 | hsl(189, 52%, 65%) | rgb(119, 198, 212) | #77C6D4 |116 |
| 8 | hsl(56, 91%, 32%)  |  rgb(155, 145, 7)  | #9B9107 |142 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(69, 51%, 56%),rgb(182, 200, 85),186
hsl(187, 89%, 61%),rgb(67, 223, 244),81
hsl(74, 70%, 61%),rgb(192, 225, 85),186
hsl(206, 54%, 34%),rgb(39, 92, 133),67
hsl(309, 98%, 56%),rgb(252, 32, 219),206
hsl(235, 69%, 64%),rgb(99, 110, 226),104
hsl(189, 52%, 65%),rgb(119, 198, 212),116
hsl(56, 91%, 32%),rgb(155, 145, 7),142

Generated: 2026-06-08 02:43:31
```
