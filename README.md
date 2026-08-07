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

![#4A9B3F](https://img.shields.io/badge/-%234A9B3F?style=flat&logo=none) ![#D4022F](https://img.shields.io/badge/-%23D4022F?style=flat&logo=none) ![#B78038](https://img.shields.io/badge/-%23B78038?style=flat&logo=none) ![#2DFA48](https://img.shields.io/badge/-%232DFA48?style=flat&logo=none) ![#7A1E8F](https://img.shields.io/badge/-%237A1E8F?style=flat&logo=none) ![#D8E217](https://img.shields.io/badge/-%23D8E217?style=flat&logo=none) ![#8F5009](https://img.shields.io/badge/-%238F5009?style=flat&logo=none) ![#AC7B1A](https://img.shields.io/badge/-%23AC7B1A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-07 08:46:15
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(113, 42%, 43%) |  rgb(74, 155, 63)  | #4A9B3F | 71 |
| 2 | hsl(347, 98%, 42%) |  rgb(212, 2, 47)   | #D4022F |161 |
| 3 | hsl(34, 53%, 47%)  | rgb(183, 128, 56)  | #B78038 |179 |
| 4 | hsl(128, 96%, 58%) |  rgb(45, 250, 72)  | #2DFA48 | 83 |
| 5 | hsl(289, 65%, 34%) | rgb(122, 30, 143)  | #7A1E8F | 97 |
| 6 | hsl(63, 81%, 49%)  | rgb(216, 226, 23)  | #D8E217 |184 |
| 7 | hsl(32, 88%, 30%)  |  rgb(143, 80, 9)   | #8F5009 |136 |
| 8 | hsl(40, 73%, 39%)  | rgb(172, 123, 26)  | #AC7B1A |137 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(113, 42%, 43%),rgb(74, 155, 63),71
hsl(347, 98%, 42%),rgb(212, 2, 47),161
hsl(34, 53%, 47%),rgb(183, 128, 56),179
hsl(128, 96%, 58%),rgb(45, 250, 72),83
hsl(289, 65%, 34%),rgb(122, 30, 143),97
hsl(63, 81%, 49%),rgb(216, 226, 23),184
hsl(32, 88%, 30%),rgb(143, 80, 9),136
hsl(40, 73%, 39%),rgb(172, 123, 26),137

Generated: 2026-08-07 08:46:15
```
