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

![#C926BE](https://img.shields.io/badge/-%23C926BE?style=flat&logo=none) ![#D1C68D](https://img.shields.io/badge/-%23D1C68D?style=flat&logo=none) ![#923B10](https://img.shields.io/badge/-%23923B10?style=flat&logo=none) ![#E85EC5](https://img.shields.io/badge/-%23E85EC5?style=flat&logo=none) ![#0632B6](https://img.shields.io/badge/-%230632B6?style=flat&logo=none) ![#D76472](https://img.shields.io/badge/-%23D76472?style=flat&logo=none) ![#F10833](https://img.shields.io/badge/-%23F10833?style=flat&logo=none) ![#EAE72E](https://img.shields.io/badge/-%23EAE72E?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-21 17:50:27
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(304, 68%, 47%) | rgb(201, 38, 190)  | #C926BE |170 |
| 2 | hsl(50, 43%, 69%)  | rgb(209, 198, 141) | #D1C68D |187 |
| 3 | hsl(20, 80%, 32%)  |  rgb(146, 59, 16)  | #923B10 |130 |
| 4 | hsl(315, 75%, 64%) | rgb(232, 94, 197)  | #E85EC5 |212 |
| 5 | hsl(225, 93%, 37%) |  rgb(6, 50, 182)   | #0632B6 | 26 |
| 6 | hsl(353, 59%, 62%) | rgb(215, 100, 114) | #D76472 |174 |
| 7 | hsl(349, 93%, 49%) |  rgb(241, 8, 51)   | #F10833 |197 |
| 8 | hsl(59, 82%, 55%)  | rgb(234, 231, 46)  | #EAE72E |227 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(304, 68%, 47%),rgb(201, 38, 190),170
hsl(50, 43%, 69%),rgb(209, 198, 141),187
hsl(20, 80%, 32%),rgb(146, 59, 16),130
hsl(315, 75%, 64%),rgb(232, 94, 197),212
hsl(225, 93%, 37%),rgb(6, 50, 182),26
hsl(353, 59%, 62%),rgb(215, 100, 114),174
hsl(349, 93%, 49%),rgb(241, 8, 51),197
hsl(59, 82%, 55%),rgb(234, 231, 46),227

Generated: 2026-05-21 17:50:27
```
