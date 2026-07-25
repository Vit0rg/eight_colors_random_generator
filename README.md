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

![#6BC64C](https://img.shields.io/badge/-%236BC64C?style=flat&logo=none) ![#CDC664](https://img.shields.io/badge/-%23CDC664?style=flat&logo=none) ![#B8DC41](https://img.shields.io/badge/-%23B8DC41?style=flat&logo=none) ![#3B8B44](https://img.shields.io/badge/-%233B8B44?style=flat&logo=none) ![#10C619](https://img.shields.io/badge/-%2310C619?style=flat&logo=none) ![#8453D4](https://img.shields.io/badge/-%238453D4?style=flat&logo=none) ![#B63EAA](https://img.shields.io/badge/-%23B63EAA?style=flat&logo=none) ![#E07C6A](https://img.shields.io/badge/-%23E07C6A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-25 01:50:14
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(105, 52%, 54%) | rgb(107, 198, 76)  | #6BC64C |113 |
| 2 | hsl(56, 51%, 60%)  | rgb(205, 198, 100) | #CDC664 |186 |
| 3 | hsl(74, 69%, 56%)  | rgb(184, 220, 65)  | #B8DC41 |185 |
| 4 | hsl(127, 40%, 39%) |  rgb(59, 139, 68)  | #3B8B44 | 71 |
| 5 | hsl(123, 85%, 42%) |  rgb(16, 198, 25)  | #10C619 | 40 |
| 6 | hsl(263, 60%, 58%) | rgb(132, 83, 212)  | #8453D4 |140 |
| 7 | hsl(306, 49%, 48%) | rgb(182, 62, 170)  | #B63EAA |169 |
| 8 |  hsl(9, 66%, 65%)  | rgb(224, 124, 106) | #E07C6A |174 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(105, 52%, 54%),rgb(107, 198, 76),113
hsl(56, 51%, 60%),rgb(205, 198, 100),186
hsl(74, 69%, 56%),rgb(184, 220, 65),185
hsl(127, 40%, 39%),rgb(59, 139, 68),71
hsl(123, 85%, 42%),rgb(16, 198, 25),40
hsl(263, 60%, 58%),rgb(132, 83, 212),140
hsl(306, 49%, 48%),rgb(182, 62, 170),169
hsl(9, 66%, 65%),rgb(224, 124, 106),174

Generated: 2026-07-25 01:50:14
```
