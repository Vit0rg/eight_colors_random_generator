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

![#D43606](https://img.shields.io/badge/-%23D43606?style=flat&logo=none) ![#79EB8A](https://img.shields.io/badge/-%2379EB8A?style=flat&logo=none) ![#D06BDF](https://img.shields.io/badge/-%23D06BDF?style=flat&logo=none) ![#9BFB5F](https://img.shields.io/badge/-%239BFB5F?style=flat&logo=none) ![#C8895F](https://img.shields.io/badge/-%23C8895F?style=flat&logo=none) ![#51E5A2](https://img.shields.io/badge/-%2351E5A2?style=flat&logo=none) ![#32756F](https://img.shields.io/badge/-%2332756F?style=flat&logo=none) ![#7066FE](https://img.shields.io/badge/-%237066FE?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-22 16:12:36
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(14, 94%, 43%)  |  rgb(212, 54, 6)   | #D43606 |166 |
| 2 | hsl(129, 75%, 70%) | rgb(121, 235, 138) | #79EB8A |121 |
| 3 | hsl(292, 65%, 65%) | rgb(208, 107, 223) | #D06BDF |176 |
| 4 | hsl(97, 96%, 68%)  | rgb(155, 251, 95)  | #9BFB5F |156 |
| 5 | hsl(24, 49%, 58%)  | rgb(200, 137, 95)  | #C8895F |180 |
| 6 | hsl(153, 74%, 61%) | rgb(81, 229, 162)  | #51E5A2 |115 |
| 7 | hsl(174, 40%, 33%) | rgb(50, 117, 111)  | #32756F | 66 |
| 8 | hsl(244, 99%, 70%) | rgb(112, 102, 254) | #7066FE |105 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(14, 94%, 43%),rgb(212, 54, 6),166
hsl(129, 75%, 70%),rgb(121, 235, 138),121
hsl(292, 65%, 65%),rgb(208, 107, 223),176
hsl(97, 96%, 68%),rgb(155, 251, 95),156
hsl(24, 49%, 58%),rgb(200, 137, 95),180
hsl(153, 74%, 61%),rgb(81, 229, 162),115
hsl(174, 40%, 33%),rgb(50, 117, 111),66
hsl(244, 99%, 70%),rgb(112, 102, 254),105

Generated: 2026-08-22 16:12:36
```
