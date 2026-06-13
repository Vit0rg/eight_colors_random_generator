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

![#CD0EB9](https://img.shields.io/badge/-%23CD0EB9?style=flat&logo=none) ![#C8F22F](https://img.shields.io/badge/-%23C8F22F?style=flat&logo=none) ![#6AF513](https://img.shields.io/badge/-%236AF513?style=flat&logo=none) ![#D50B36](https://img.shields.io/badge/-%23D50B36?style=flat&logo=none) ![#7865DC](https://img.shields.io/badge/-%237865DC?style=flat&logo=none) ![#CE07AA](https://img.shields.io/badge/-%23CE07AA?style=flat&logo=none) ![#29A77F](https://img.shields.io/badge/-%2329A77F?style=flat&logo=none) ![#EDED35](https://img.shields.io/badge/-%23EDED35?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-13 02:32:42
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(306, 87%, 43%) | rgb(205, 14, 185)  | #CD0EB9 |164 |
| 2 | hsl(73, 89%, 57%)  | rgb(200, 242, 47)  | #C8F22F |191 |
| 3 | hsl(97, 92%, 52%)  | rgb(106, 245, 19)  | #6AF513 |118 |
| 4 | hsl(347, 90%, 44%) |  rgb(213, 11, 54)  | #D50B36 |161 |
| 5 | hsl(250, 63%, 63%) | rgb(120, 101, 220) | #7865DC |104 |
| 6 | hsl(311, 93%, 42%) |  rgb(206, 7, 170)  | #CE07AA |163 |
| 7 | hsl(161, 60%, 41%) | rgb(41, 167, 127)  | #29A77F | 72 |
| 8 | hsl(60, 84%, 57%)  | rgb(237, 237, 53)  | #EDED35 |227 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(306, 87%, 43%),rgb(205, 14, 185),164
hsl(73, 89%, 57%),rgb(200, 242, 47),191
hsl(97, 92%, 52%),rgb(106, 245, 19),118
hsl(347, 90%, 44%),rgb(213, 11, 54),161
hsl(250, 63%, 63%),rgb(120, 101, 220),104
hsl(311, 93%, 42%),rgb(206, 7, 170),163
hsl(161, 60%, 41%),rgb(41, 167, 127),72
hsl(60, 84%, 57%),rgb(237, 237, 53),227

Generated: 2026-06-13 02:32:42
```
