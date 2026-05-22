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

![#2F65E4](https://img.shields.io/badge/-%232F65E4?style=flat&logo=none) ![#5D3CA8](https://img.shields.io/badge/-%235D3CA8?style=flat&logo=none) ![#0626D9](https://img.shields.io/badge/-%230626D9?style=flat&logo=none) ![#07ED1E](https://img.shields.io/badge/-%2307ED1E?style=flat&logo=none) ![#1CECBF](https://img.shields.io/badge/-%231CECBF?style=flat&logo=none) ![#DCA93B](https://img.shields.io/badge/-%23DCA93B?style=flat&logo=none) ![#750A98](https://img.shields.io/badge/-%23750A98?style=flat&logo=none) ![#14C148](https://img.shields.io/badge/-%2314C148?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-22 10:42:14
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(222, 77%, 54%) | rgb(47, 101, 228)  | #2F65E4 | 68 |
| 2 | hsl(258, 47%, 45%) |  rgb(93, 60, 168)  | #5D3CA8 | 97 |
| 3 | hsl(231, 94%, 44%) |  rgb(6, 38, 217)   | #0626D9 | 26 |
| 4 | hsl(126, 94%, 48%) |  rgb(7, 237, 30)   | #07ED1E | 47 |
| 5 | hsl(167, 85%, 52%) | rgb(28, 236, 191)  | #1CECBF | 86 |
| 6 | hsl(41, 70%, 55%)  | rgb(220, 169, 59)  | #DCA93B |179 |
| 7 | hsl(285, 87%, 32%) | rgb(117, 10, 152)  | #750A98 | 91 |
| 8 | hsl(138, 81%, 42%) |  rgb(20, 193, 72)  | #14C148 | 41 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(222, 77%, 54%),rgb(47, 101, 228),68
hsl(258, 47%, 45%),rgb(93, 60, 168),97
hsl(231, 94%, 44%),rgb(6, 38, 217),26
hsl(126, 94%, 48%),rgb(7, 237, 30),47
hsl(167, 85%, 52%),rgb(28, 236, 191),86
hsl(41, 70%, 55%),rgb(220, 169, 59),179
hsl(285, 87%, 32%),rgb(117, 10, 152),91
hsl(138, 81%, 42%),rgb(20, 193, 72),41

Generated: 2026-05-22 10:42:14
```
