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

![#ED6344](https://img.shields.io/badge/-%23ED6344?style=flat&logo=none) ![#344ADF](https://img.shields.io/badge/-%23344ADF?style=flat&logo=none) ![#C12600](https://img.shields.io/badge/-%23C12600?style=flat&logo=none) ![#AC5B0B](https://img.shields.io/badge/-%23AC5B0B?style=flat&logo=none) ![#548938](https://img.shields.io/badge/-%23548938?style=flat&logo=none) ![#6FDA0B](https://img.shields.io/badge/-%236FDA0B?style=flat&logo=none) ![#166EA1](https://img.shields.io/badge/-%23166EA1?style=flat&logo=none) ![#D04380](https://img.shields.io/badge/-%23D04380?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-26 09:50:33
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(11, 83%, 60%)  |  rgb(237, 99, 68)  | #ED6344 |209 |
| 2 | hsl(232, 73%, 54%) |  rgb(52, 74, 223)  | #344ADF | 62 |
| 3 | hsl(12, 100%, 38%) |  rgb(193, 38, 0)   | #C12600 |166 |
| 4 | hsl(30, 88%, 36%)  |  rgb(172, 91, 11)  | #AC5B0B |136 |
| 5 | hsl(99, 42%, 38%)  |  rgb(84, 137, 56)  | #548938 |107 |
| 6 | hsl(91, 90%, 45%)  | rgb(111, 218, 11)  | #6FDA0B |112 |
| 7 | hsl(202, 76%, 36%) | rgb(22, 110, 161)  | #166EA1 | 31 |
| 8 | hsl(334, 60%, 54%) | rgb(208, 67, 128)  | #D04380 |169 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(11, 83%, 60%),rgb(237, 99, 68),209
hsl(232, 73%, 54%),rgb(52, 74, 223),62
hsl(12, 100%, 38%),rgb(193, 38, 0),166
hsl(30, 88%, 36%),rgb(172, 91, 11),136
hsl(99, 42%, 38%),rgb(84, 137, 56),107
hsl(91, 90%, 45%),rgb(111, 218, 11),112
hsl(202, 76%, 36%),rgb(22, 110, 161),31
hsl(334, 60%, 54%),rgb(208, 67, 128),169

Generated: 2026-07-26 09:50:33
```
