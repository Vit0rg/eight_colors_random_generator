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

![#43D9D2](https://img.shields.io/badge/-%2343D9D2?style=flat&logo=none) ![#7BD9BD](https://img.shields.io/badge/-%237BD9BD?style=flat&logo=none) ![#149ED0](https://img.shields.io/badge/-%23149ED0?style=flat&logo=none) ![#00BB38](https://img.shields.io/badge/-%2300BB38?style=flat&logo=none) ![#A77410](https://img.shields.io/badge/-%23A77410?style=flat&logo=none) ![#CD7408](https://img.shields.io/badge/-%23CD7408?style=flat&logo=none) ![#7B881A](https://img.shields.io/badge/-%237B881A?style=flat&logo=none) ![#DD8287](https://img.shields.io/badge/-%23DD8287?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-07 10:21:58
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(177, 67%, 56%) | rgb(67, 217, 210)  | #43D9D2 | 80 |
| 2 | hsl(162, 56%, 67%) | rgb(123, 217, 189) | #7BD9BD |116 |
| 3 | hsl(196, 82%, 45%) | rgb(20, 158, 208)  | #149ED0 | 38 |
| 4 | hsl(138, 99%, 37%) |  rgb(0, 187, 56)   | #00BB38 | 41 |
| 5 | hsl(40, 82%, 36%)  | rgb(167, 116, 16)  | #A77410 |136 |
| 6 | hsl(33, 92%, 42%)  |  rgb(205, 116, 8)  | #CD7408 |172 |
| 7 | hsl(67, 67%, 32%)  | rgb(123, 136, 26)  | #7B881A |107 |
| 8 | hsl(357, 57%, 69%) | rgb(221, 130, 135) | #DD8287 |181 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(177, 67%, 56%),rgb(67, 217, 210),80
hsl(162, 56%, 67%),rgb(123, 217, 189),116
hsl(196, 82%, 45%),rgb(20, 158, 208),38
hsl(138, 99%, 37%),rgb(0, 187, 56),41
hsl(40, 82%, 36%),rgb(167, 116, 16),136
hsl(33, 92%, 42%),rgb(205, 116, 8),172
hsl(67, 67%, 32%),rgb(123, 136, 26),107
hsl(357, 57%, 69%),rgb(221, 130, 135),181

Generated: 2026-06-07 10:21:58
```
