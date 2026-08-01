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

![#38378A](https://img.shields.io/badge/-%2338378A?style=flat&logo=none) ![#D4CB90](https://img.shields.io/badge/-%23D4CB90?style=flat&logo=none) ![#6EC6D7](https://img.shields.io/badge/-%236EC6D7?style=flat&logo=none) ![#366785](https://img.shields.io/badge/-%23366785?style=flat&logo=none) ![#35AA37](https://img.shields.io/badge/-%2335AA37?style=flat&logo=none) ![#CD9703](https://img.shields.io/badge/-%23CD9703?style=flat&logo=none) ![#9DF46B](https://img.shields.io/badge/-%239DF46B?style=flat&logo=none) ![#1C6FAA](https://img.shields.io/badge/-%231C6FAA?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-01 09:49:20
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(241, 43%, 38%) |  rgb(56, 55, 138)  | #38378A | 61 |
| 2 | hsl(52, 44%, 70%)  | rgb(212, 203, 144) | #D4CB90 |187 |
| 3 | hsl(190, 57%, 64%) | rgb(110, 198, 215) | #6EC6D7 |116 |
| 4 | hsl(203, 42%, 37%) | rgb(54, 103, 133)  | #366785 | 67 |
| 5 | hsl(121, 52%, 44%) |  rgb(53, 170, 55)  | #35AA37 | 71 |
| 6 | hsl(44, 97%, 41%)  |  rgb(205, 151, 3)  | #CD9703 |178 |
| 7 | hsl(98, 87%, 69%)  | rgb(157, 244, 107) | #9DF46B |156 |
| 8 | hsl(205, 71%, 39%) | rgb(28, 111, 170)  | #1C6FAA | 67 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(241, 43%, 38%),rgb(56, 55, 138),61
hsl(52, 44%, 70%),rgb(212, 203, 144),187
hsl(190, 57%, 64%),rgb(110, 198, 215),116
hsl(203, 42%, 37%),rgb(54, 103, 133),67
hsl(121, 52%, 44%),rgb(53, 170, 55),71
hsl(44, 97%, 41%),rgb(205, 151, 3),178
hsl(98, 87%, 69%),rgb(157, 244, 107),156
hsl(205, 71%, 39%),rgb(28, 111, 170),67

Generated: 2026-08-01 09:49:20
```
