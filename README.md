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

![#B8BE4B](https://img.shields.io/badge/-%23B8BE4B?style=flat&logo=none) ![#15FD81](https://img.shields.io/badge/-%2315FD81?style=flat&logo=none) ![#D819FF](https://img.shields.io/badge/-%23D819FF?style=flat&logo=none) ![#AF2B76](https://img.shields.io/badge/-%23AF2B76?style=flat&logo=none) ![#802D61](https://img.shields.io/badge/-%23802D61?style=flat&logo=none) ![#369A9A](https://img.shields.io/badge/-%23369A9A?style=flat&logo=none) ![#9EEE62](https://img.shields.io/badge/-%239EEE62?style=flat&logo=none) ![#BFD93F](https://img.shields.io/badge/-%23BFD93F?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-13 09:28:18
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(63, 47%, 52%)  | rgb(184, 190, 75)  | #B8BE4B |185 |
| 2 | hsl(148, 99%, 54%) | rgb(21, 253, 129)  | #15FD81 | 49 |
| 3 |hsl(290, 100%, 55%) | rgb(216, 25, 255)  | #D819FF |165 |
| 4 | hsl(326, 60%, 43%) | rgb(175, 43, 118)  | #AF2B76 |132 |
| 5 | hsl(322, 48%, 34%) |  rgb(128, 45, 97)  | #802D61 |132 |
| 6 | hsl(180, 48%, 41%) | rgb(54, 154, 154)  | #369A9A | 73 |
| 7 | hsl(94, 81%, 66%)  | rgb(158, 238, 98)  | #9EEE62 |156 |
| 8 | hsl(70, 67%, 55%)  | rgb(191, 217, 63)  | #BFD93F |185 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(63, 47%, 52%),rgb(184, 190, 75),185
hsl(148, 99%, 54%),rgb(21, 253, 129),49
hsl(290, 100%, 55%),rgb(216, 25, 255),165
hsl(326, 60%, 43%),rgb(175, 43, 118),132
hsl(322, 48%, 34%),rgb(128, 45, 97),132
hsl(180, 48%, 41%),rgb(54, 154, 154),73
hsl(94, 81%, 66%),rgb(158, 238, 98),156
hsl(70, 67%, 55%),rgb(191, 217, 63),185

Generated: 2026-04-13 09:28:18
```
