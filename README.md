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

![#340FB6](https://img.shields.io/badge/-%23340FB6?style=flat&logo=none) ![#994159](https://img.shields.io/badge/-%23994159?style=flat&logo=none) ![#08C343](https://img.shields.io/badge/-%2308C343?style=flat&logo=none) ![#6FD539](https://img.shields.io/badge/-%236FD539?style=flat&logo=none) ![#6845AA](https://img.shields.io/badge/-%236845AA?style=flat&logo=none) ![#8D2061](https://img.shields.io/badge/-%238D2061?style=flat&logo=none) ![#D24093](https://img.shields.io/badge/-%23D24093?style=flat&logo=none) ![#BD6565](https://img.shields.io/badge/-%23BD6565?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-29 18:26:32
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(253, 84%, 39%) |  rgb(52, 15, 182)  | #340FB6 | 56 |
| 2 | hsl(344, 40%, 43%) |  rgb(153, 65, 89)  | #994159 |132 |
| 3 | hsl(139, 92%, 40%) |  rgb(8, 195, 67)   | #08C343 | 41 |
| 4 | hsl(99, 65%, 53%)  | rgb(111, 213, 57)  | #6FD539 |113 |
| 5 | hsl(261, 42%, 47%) | rgb(104, 69, 170)  | #6845AA | 97 |
| 6 | hsl(324, 63%, 34%) |  rgb(141, 32, 97)  | #8D2061 |132 |
| 7 | hsl(326, 62%, 54%) | rgb(210, 64, 147)  | #D24093 |169 |
| 8 |  hsl(0, 40%, 57%)  | rgb(189, 101, 101) | #BD6565 |174 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(253, 84%, 39%),rgb(52, 15, 182),56
hsl(344, 40%, 43%),rgb(153, 65, 89),132
hsl(139, 92%, 40%),rgb(8, 195, 67),41
hsl(99, 65%, 53%),rgb(111, 213, 57),113
hsl(261, 42%, 47%),rgb(104, 69, 170),97
hsl(324, 63%, 34%),rgb(141, 32, 97),132
hsl(326, 62%, 54%),rgb(210, 64, 147),169
hsl(0, 40%, 57%),rgb(189, 101, 101),174

Generated: 2026-05-29 18:26:32
```
