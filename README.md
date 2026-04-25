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

![#944D0E](https://img.shields.io/badge/-%23944D0E?style=flat&logo=none) ![#6F2D84](https://img.shields.io/badge/-%236F2D84?style=flat&logo=none) ![#9D2948](https://img.shields.io/badge/-%239D2948?style=flat&logo=none) ![#66C68B](https://img.shields.io/badge/-%2366C68B?style=flat&logo=none) ![#69CB1A](https://img.shields.io/badge/-%2369CB1A?style=flat&logo=none) ![#B14F2F](https://img.shields.io/badge/-%23B14F2F?style=flat&logo=none) ![#B24D28](https://img.shields.io/badge/-%23B24D28?style=flat&logo=none) ![#EDE96C](https://img.shields.io/badge/-%23EDE96C?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-25 01:28:45
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(28, 82%, 32%)  |  rgb(148, 77, 14)  | #944D0E |136 |
| 2 | hsl(285, 49%, 35%) | rgb(111, 45, 132)  | #6F2D84 | 97 |
| 3 | hsl(344, 58%, 39%) |  rgb(157, 41, 72)  | #9D2948 |131 |
| 4 | hsl(143, 46%, 59%) | rgb(102, 198, 139) | #66C68B |115 |
| 5 | hsl(93, 77%, 45%)  | rgb(105, 203, 26)  | #69CB1A |113 |
| 6 | hsl(15, 58%, 44%)  |  rgb(177, 79, 47)  | #B14F2F |137 |
| 7 | hsl(16, 63%, 43%)  |  rgb(178, 77, 40)  | #B24D28 |137 |
| 8 | hsl(58, 79%, 68%)  | rgb(237, 233, 108) | #EDE96C |228 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(28, 82%, 32%),rgb(148, 77, 14),136
hsl(285, 49%, 35%),rgb(111, 45, 132),97
hsl(344, 58%, 39%),rgb(157, 41, 72),131
hsl(143, 46%, 59%),rgb(102, 198, 139),115
hsl(93, 77%, 45%),rgb(105, 203, 26),113
hsl(15, 58%, 44%),rgb(177, 79, 47),137
hsl(16, 63%, 43%),rgb(178, 77, 40),137
hsl(58, 79%, 68%),rgb(237, 233, 108),228

Generated: 2026-04-25 01:28:45
```
