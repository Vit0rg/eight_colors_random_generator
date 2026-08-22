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

![#548EED](https://img.shields.io/badge/-%23548EED?style=flat&logo=none) ![#766BD5](https://img.shields.io/badge/-%23766BD5?style=flat&logo=none) ![#88F02D](https://img.shields.io/badge/-%2388F02D?style=flat&logo=none) ![#0D1B95](https://img.shields.io/badge/-%230D1B95?style=flat&logo=none) ![#B500BB](https://img.shields.io/badge/-%23B500BB?style=flat&logo=none) ![#D5645C](https://img.shields.io/badge/-%23D5645C?style=flat&logo=none) ![#9FA125](https://img.shields.io/badge/-%239FA125?style=flat&logo=none) ![#AB254D](https://img.shields.io/badge/-%23AB254D?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-22 00:41:01
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(217, 81%, 63%) | rgb(84, 142, 237)  | #548EED |111 |
| 2 | hsl(246, 56%, 63%) | rgb(118, 107, 213) | #766BD5 |104 |
| 3 | hsl(92, 87%, 56%)  | rgb(136, 240, 45)  | #88F02D |155 |
| 4 | hsl(234, 83%, 32%) |  rgb(13, 27, 149)  | #0D1B95 | 25 |
| 5 | hsl(298, 99%, 37%) |  rgb(181, 0, 187)  | #B500BB |164 |
| 6 |  hsl(4, 59%, 60%)  | rgb(213, 100, 92)  | #D5645C |174 |
| 7 | hsl(61, 62%, 39%)  | rgb(159, 161, 37)  | #9FA125 |143 |
| 8 | hsl(342, 64%, 41%) |  rgb(171, 37, 77)  | #AB254D |132 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(217, 81%, 63%),rgb(84, 142, 237),111
hsl(246, 56%, 63%),rgb(118, 107, 213),104
hsl(92, 87%, 56%),rgb(136, 240, 45),155
hsl(234, 83%, 32%),rgb(13, 27, 149),25
hsl(298, 99%, 37%),rgb(181, 0, 187),164
hsl(4, 59%, 60%),rgb(213, 100, 92),174
hsl(61, 62%, 39%),rgb(159, 161, 37),143
hsl(342, 64%, 41%),rgb(171, 37, 77),132

Generated: 2026-08-22 00:41:01
```
