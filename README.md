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

![#BBAC06](https://img.shields.io/badge/-%23BBAC06?style=flat&logo=none) ![#3F9795](https://img.shields.io/badge/-%233F9795?style=flat&logo=none) ![#6103B3](https://img.shields.io/badge/-%236103B3?style=flat&logo=none) ![#1698DE](https://img.shields.io/badge/-%231698DE?style=flat&logo=none) ![#194E94](https://img.shields.io/badge/-%23194E94?style=flat&logo=none) ![#ABE212](https://img.shields.io/badge/-%23ABE212?style=flat&logo=none) ![#4A5DEC](https://img.shields.io/badge/-%234A5DEC?style=flat&logo=none) ![#BC5C6F](https://img.shields.io/badge/-%23BC5C6F?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-05 17:20:27
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(55, 93%, 38%)  |  rgb(187, 172, 6)  | #BBAC06 |178 |
| 2 | hsl(179, 41%, 42%) | rgb(63, 151, 149)  | #3F9795 | 73 |
| 3 | hsl(272, 96%, 36%) |  rgb(97, 3, 179)   | #6103B3 | 91 |
| 4 | hsl(201, 82%, 48%) | rgb(22, 152, 222)  | #1698DE | 38 |
| 5 | hsl(214, 71%, 34%) |  rgb(25, 78, 148)  | #194E94 | 31 |
| 6 | hsl(76, 85%, 48%)  | rgb(171, 226, 18)  | #ABE212 |148 |
| 7 | hsl(233, 81%, 61%) |  rgb(74, 93, 236)  | #4A5DEC | 69 |
| 8 | hsl(348, 42%, 55%) | rgb(188, 92, 111)  | #BC5C6F |174 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(55, 93%, 38%),rgb(187, 172, 6),178
hsl(179, 41%, 42%),rgb(63, 151, 149),73
hsl(272, 96%, 36%),rgb(97, 3, 179),91
hsl(201, 82%, 48%),rgb(22, 152, 222),38
hsl(214, 71%, 34%),rgb(25, 78, 148),31
hsl(76, 85%, 48%),rgb(171, 226, 18),148
hsl(233, 81%, 61%),rgb(74, 93, 236),69
hsl(348, 42%, 55%),rgb(188, 92, 111),174

Generated: 2026-08-05 17:20:27
```
