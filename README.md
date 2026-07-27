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

![#B35F32](https://img.shields.io/badge/-%23B35F32?style=flat&logo=none) ![#16DE4F](https://img.shields.io/badge/-%2316DE4F?style=flat&logo=none) ![#089F7F](https://img.shields.io/badge/-%23089F7F?style=flat&logo=none) ![#DC4B4D](https://img.shields.io/badge/-%23DC4B4D?style=flat&logo=none) ![#7396D7](https://img.shields.io/badge/-%237396D7?style=flat&logo=none) ![#165E87](https://img.shields.io/badge/-%23165E87?style=flat&logo=none) ![#E54CDB](https://img.shields.io/badge/-%23E54CDB?style=flat&logo=none) ![#CB8461](https://img.shields.io/badge/-%23CB8461?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-27 11:10:15
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(21, 56%, 45%)  |  rgb(179, 95, 50)  | #B35F32 |137 |
| 2 | hsl(137, 82%, 48%) |  rgb(22, 222, 79)  | #16DE4F | 42 |
| 3 | hsl(167, 90%, 33%) |  rgb(8, 159, 127)  | #089F7F | 36 |
| 4 | hsl(359, 68%, 58%) |  rgb(220, 75, 77)  | #DC4B4D |168 |
| 5 | hsl(219, 56%, 65%) | rgb(115, 150, 215) | #7396D7 |110 |
| 6 | hsl(202, 71%, 31%) |  rgb(22, 94, 135)  | #165E87 | 31 |
| 7 | hsl(304, 75%, 60%) | rgb(229, 76, 219)  | #E54CDB |170 |
| 8 | hsl(20, 51%, 59%)  | rgb(203, 132, 97)  | #CB8461 |180 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(21, 56%, 45%),rgb(179, 95, 50),137
hsl(137, 82%, 48%),rgb(22, 222, 79),42
hsl(167, 90%, 33%),rgb(8, 159, 127),36
hsl(359, 68%, 58%),rgb(220, 75, 77),168
hsl(219, 56%, 65%),rgb(115, 150, 215),110
hsl(202, 71%, 31%),rgb(22, 94, 135),31
hsl(304, 75%, 60%),rgb(229, 76, 219),170
hsl(20, 51%, 59%),rgb(203, 132, 97),180

Generated: 2026-07-27 11:10:15
```
