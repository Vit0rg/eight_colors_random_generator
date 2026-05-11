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

![#0174F8](https://img.shields.io/badge/-%230174F8?style=flat&logo=none) ![#00C6C0](https://img.shields.io/badge/-%2300C6C0?style=flat&logo=none) ![#16D8C8](https://img.shields.io/badge/-%2316D8C8?style=flat&logo=none) ![#6CC165](https://img.shields.io/badge/-%236CC165?style=flat&logo=none) ![#A11665](https://img.shields.io/badge/-%23A11665?style=flat&logo=none) ![#D34A61](https://img.shields.io/badge/-%23D34A61?style=flat&logo=none) ![#09A36B](https://img.shields.io/badge/-%2309A36B?style=flat&logo=none) ![#33A74A](https://img.shields.io/badge/-%2333A74A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-11 10:53:44
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(212, 99%, 49%) |  rgb(1, 116, 248)  | #0174F8 | 33 |
| 2 |hsl(178, 100%, 39%) |  rgb(0, 198, 192)  | #00C6C0 | 44 |
| 3 | hsl(175, 81%, 47%) | rgb(22, 216, 200)  | #16D8C8 | 44 |
| 4 | hsl(116, 43%, 58%) | rgb(108, 193, 101) | #6CC165 |114 |
| 5 | hsl(326, 76%, 36%) | rgb(161, 22, 101)  | #A11665 |126 |
| 6 | hsl(350, 61%, 56%) |  rgb(211, 74, 97)  | #D34A61 |168 |
| 7 | hsl(158, 89%, 34%) |  rgb(9, 163, 107)  | #09A36B | 36 |
| 8 | hsl(132, 53%, 43%) |  rgb(51, 167, 74)  | #33A74A | 71 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(212, 99%, 49%),rgb(1, 116, 248),33
hsl(178, 100%, 39%),rgb(0, 198, 192),44
hsl(175, 81%, 47%),rgb(22, 216, 200),44
hsl(116, 43%, 58%),rgb(108, 193, 101),114
hsl(326, 76%, 36%),rgb(161, 22, 101),126
hsl(350, 61%, 56%),rgb(211, 74, 97),168
hsl(158, 89%, 34%),rgb(9, 163, 107),36
hsl(132, 53%, 43%),rgb(51, 167, 74),71

Generated: 2026-05-11 10:53:44
```
