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

![#F7C953](https://img.shields.io/badge/-%23F7C953?style=flat&logo=none) ![#838621](https://img.shields.io/badge/-%23838621?style=flat&logo=none) ![#F6EB4A](https://img.shields.io/badge/-%23F6EB4A?style=flat&logo=none) ![#BF67DE](https://img.shields.io/badge/-%23BF67DE?style=flat&logo=none) ![#DD9C82](https://img.shields.io/badge/-%23DD9C82?style=flat&logo=none) ![#9C8DD1](https://img.shields.io/badge/-%239C8DD1?style=flat&logo=none) ![#54C99A](https://img.shields.io/badge/-%2354C99A?style=flat&logo=none) ![#C120EE](https://img.shields.io/badge/-%23C120EE?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-14 10:44:16
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(43, 92%, 65%)  | rgb(247, 201, 83)  | #F7C953 |222 |
| 2 | hsl(62, 60%, 33%)  | rgb(131, 134, 33)  | #838621 |143 |
| 3 | hsl(56, 91%, 63%)  | rgb(246, 235, 74)  | #F6EB4A |227 |
| 4 | hsl(284, 65%, 64%) | rgb(191, 103, 222) | #BF67DE |176 |
| 5 | hsl(17, 57%, 69%)  | rgb(221, 156, 130) | #DD9C82 |181 |
| 6 | hsl(253, 43%, 69%) | rgb(156, 141, 209) | #9C8DD1 |146 |
| 7 | hsl(156, 52%, 56%) | rgb(84, 201, 154)  | #54C99A |115 |
| 8 | hsl(287, 86%, 53%) | rgb(193, 32, 238)  | #C120EE |171 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(43, 92%, 65%),rgb(247, 201, 83),222
hsl(62, 60%, 33%),rgb(131, 134, 33),143
hsl(56, 91%, 63%),rgb(246, 235, 74),227
hsl(284, 65%, 64%),rgb(191, 103, 222),176
hsl(17, 57%, 69%),rgb(221, 156, 130),181
hsl(253, 43%, 69%),rgb(156, 141, 209),146
hsl(156, 52%, 56%),rgb(84, 201, 154),115
hsl(287, 86%, 53%),rgb(193, 32, 238),171

Generated: 2026-06-14 10:44:16
```
