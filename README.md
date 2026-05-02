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

![#FF9260](https://img.shields.io/badge/-%23FF9260?style=flat&logo=none) ![#FD010D](https://img.shields.io/badge/-%23FD010D?style=flat&logo=none) ![#D68492](https://img.shields.io/badge/-%23D68492?style=flat&logo=none) ![#6C2D70](https://img.shields.io/badge/-%236C2D70?style=flat&logo=none) ![#8D990F](https://img.shields.io/badge/-%238D990F?style=flat&logo=none) ![#3EE9E6](https://img.shields.io/badge/-%233EE9E6?style=flat&logo=none) ![#5367D9](https://img.shields.io/badge/-%235367D9?style=flat&logo=none) ![#660CA6](https://img.shields.io/badge/-%23660CA6?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-02 08:57:22
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(19, 100%, 69%) | rgb(255, 146, 96)  | #FF9260 |216 |
| 2 | hsl(357, 99%, 50%) |  rgb(253, 1, 13)   | #FD010D |196 |
| 3 | hsl(350, 50%, 68%) | rgb(214, 132, 146) | #D68492 |181 |
| 4 | hsl(297, 42%, 31%) | rgb(108, 45, 112)  | #6C2D70 | 96 |
| 5 | hsl(65, 82%, 33%)  | rgb(141, 153, 15)  | #8D990F |142 |
| 6 | hsl(179, 80%, 58%) | rgb(62, 233, 230)  | #3EE9E6 | 86 |
| 7 | hsl(231, 64%, 59%) | rgb(83, 103, 217)  | #5367D9 |104 |
| 8 | hsl(275, 86%, 35%) | rgb(102, 12, 166)  | #660CA6 | 91 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(19, 100%, 69%),rgb(255, 146, 96),216
hsl(357, 99%, 50%),rgb(253, 1, 13),196
hsl(350, 50%, 68%),rgb(214, 132, 146),181
hsl(297, 42%, 31%),rgb(108, 45, 112),96
hsl(65, 82%, 33%),rgb(141, 153, 15),142
hsl(179, 80%, 58%),rgb(62, 233, 230),86
hsl(231, 64%, 59%),rgb(83, 103, 217),104
hsl(275, 86%, 35%),rgb(102, 12, 166),91

Generated: 2026-05-02 08:57:22
```
