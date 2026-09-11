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

![#6FE677](https://img.shields.io/badge/-%236FE677?style=flat&logo=none) ![#7C671C](https://img.shields.io/badge/-%237C671C?style=flat&logo=none) ![#8E90D6](https://img.shields.io/badge/-%238E90D6?style=flat&logo=none) ![#0C9165](https://img.shields.io/badge/-%230C9165?style=flat&logo=none) ![#A5D57F](https://img.shields.io/badge/-%23A5D57F?style=flat&logo=none) ![#7AEABF](https://img.shields.io/badge/-%237AEABF?style=flat&logo=none) ![#AEA53B](https://img.shields.io/badge/-%23AEA53B?style=flat&logo=none) ![#BB2590](https://img.shields.io/badge/-%23BB2590?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-11 18:52:30
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(124, 71%, 67%) | rgb(111, 230, 119) | #6FE677 |114 |
| 2 | hsl(47, 63%, 30%)  | rgb(124, 103, 28)  | #7C671C |101 |
| 3 | hsl(238, 47%, 70%) | rgb(142, 144, 214) | #8E90D6 |146 |
| 4 | hsl(160, 84%, 31%) | rgb(12, 145, 101)  | #0C9165 | 36 |
| 5 | hsl(94, 51%, 67%)  | rgb(165, 213, 127) | #A5D57F |150 |
| 6 | hsl(157, 73%, 70%) | rgb(122, 234, 191) | #7AEABF |122 |
| 7 | hsl(55, 49%, 46%)  | rgb(174, 165, 59)  | #AEA53B |143 |
| 8 | hsl(317, 67%, 44%) | rgb(187, 37, 144)  | #BB2590 |169 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(124, 71%, 67%),rgb(111, 230, 119),114
hsl(47, 63%, 30%),rgb(124, 103, 28),101
hsl(238, 47%, 70%),rgb(142, 144, 214),146
hsl(160, 84%, 31%),rgb(12, 145, 101),36
hsl(94, 51%, 67%),rgb(165, 213, 127),150
hsl(157, 73%, 70%),rgb(122, 234, 191),122
hsl(55, 49%, 46%),rgb(174, 165, 59),143
hsl(317, 67%, 44%),rgb(187, 37, 144),169

Generated: 2026-09-11 18:52:30
```
