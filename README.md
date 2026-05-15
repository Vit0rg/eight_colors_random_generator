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

![#D769BD](https://img.shields.io/badge/-%23D769BD?style=flat&logo=none) ![#4CFF82](https://img.shields.io/badge/-%234CFF82?style=flat&logo=none) ![#77712B](https://img.shields.io/badge/-%2377712B?style=flat&logo=none) ![#DF6866](https://img.shields.io/badge/-%23DF6866?style=flat&logo=none) ![#7F38C6](https://img.shields.io/badge/-%237F38C6?style=flat&logo=none) ![#B36CC5](https://img.shields.io/badge/-%23B36CC5?style=flat&logo=none) ![#6F14D0](https://img.shields.io/badge/-%236F14D0?style=flat&logo=none) ![#5F42B7](https://img.shields.io/badge/-%235F42B7?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-15 10:13:18
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(314, 58%, 63%) | rgb(215, 105, 189) | #D769BD |176 |
| 2 |hsl(138, 100%, 65%) | rgb(76, 255, 130)  | #4CFF82 | 85 |
| 3 | hsl(55, 47%, 32%)  | rgb(119, 113, 43)  | #77712B |101 |
| 4 |  hsl(1, 66%, 64%)  | rgb(223, 104, 102) | #DF6866 |174 |
| 5 | hsl(270, 56%, 50%) | rgb(127, 56, 198)  | #7F38C6 | 98 |
| 6 | hsl(288, 44%, 60%) | rgb(179, 108, 197) | #B36CC5 |140 |
| 7 | hsl(269, 82%, 45%) | rgb(111, 20, 208)  | #6F14D0 | 92 |
| 8 | hsl(255, 47%, 49%) |  rgb(95, 66, 183)  | #5F42B7 | 98 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(314, 58%, 63%),rgb(215, 105, 189),176
hsl(138, 100%, 65%),rgb(76, 255, 130),85
hsl(55, 47%, 32%),rgb(119, 113, 43),101
hsl(1, 66%, 64%),rgb(223, 104, 102),174
hsl(270, 56%, 50%),rgb(127, 56, 198),98
hsl(288, 44%, 60%),rgb(179, 108, 197),140
hsl(269, 82%, 45%),rgb(111, 20, 208),92
hsl(255, 47%, 49%),rgb(95, 66, 183),98

Generated: 2026-05-15 10:13:18
```
