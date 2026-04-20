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

![#D3362B](https://img.shields.io/badge/-%23D3362B?style=flat&logo=none) ![#BA2637](https://img.shields.io/badge/-%23BA2637?style=flat&logo=none) ![#923B95](https://img.shields.io/badge/-%23923B95?style=flat&logo=none) ![#03249A](https://img.shields.io/badge/-%2303249A?style=flat&logo=none) ![#3FD22C](https://img.shields.io/badge/-%233FD22C?style=flat&logo=none) ![#9A5421](https://img.shields.io/badge/-%239A5421?style=flat&logo=none) ![#29A710](https://img.shields.io/badge/-%2329A710?style=flat&logo=none) ![#1A9C29](https://img.shields.io/badge/-%231A9C29?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-20 09:49:41
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 |  hsl(4, 66%, 50%)  |  rgb(211, 54, 43)  | #D3362B |167 |
| 2 | hsl(353, 66%, 44%) |  rgb(186, 38, 55)  | #BA2637 |167 |
| 3 | hsl(298, 43%, 41%) | rgb(146, 59, 149)  | #923B95 |133 |
| 4 | hsl(227, 95%, 31%) |  rgb(3, 36, 154)   | #03249A | 25 |
| 5 | hsl(113, 65%, 50%) |  rgb(63, 210, 44)  | #3FD22C | 77 |
| 6 | hsl(25, 64%, 37%)  |  rgb(154, 84, 33)  | #9A5421 |137 |
| 7 | hsl(110, 82%, 36%) |  rgb(41, 167, 16)  | #29A710 | 70 |
| 8 | hsl(127, 71%, 36%) |  rgb(26, 156, 41)  | #1A9C29 | 71 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(4, 66%, 50%),rgb(211, 54, 43),167
hsl(353, 66%, 44%),rgb(186, 38, 55),167
hsl(298, 43%, 41%),rgb(146, 59, 149),133
hsl(227, 95%, 31%),rgb(3, 36, 154),25
hsl(113, 65%, 50%),rgb(63, 210, 44),77
hsl(25, 64%, 37%),rgb(154, 84, 33),137
hsl(110, 82%, 36%),rgb(41, 167, 16),70
hsl(127, 71%, 36%),rgb(26, 156, 41),71

Generated: 2026-04-20 09:49:41
```
