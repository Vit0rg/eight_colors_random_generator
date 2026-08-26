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

![#5DD9C2](https://img.shields.io/badge/-%235DD9C2?style=flat&logo=none) ![#CCE17E](https://img.shields.io/badge/-%23CCE17E?style=flat&logo=none) ![#209260](https://img.shields.io/badge/-%23209260?style=flat&logo=none) ![#1A7EC5](https://img.shields.io/badge/-%231A7EC5?style=flat&logo=none) ![#F173BA](https://img.shields.io/badge/-%23F173BA?style=flat&logo=none) ![#C0812E](https://img.shields.io/badge/-%23C0812E?style=flat&logo=none) ![#BB36C2](https://img.shields.io/badge/-%23BB36C2?style=flat&logo=none) ![#3DEA4E](https://img.shields.io/badge/-%233DEA4E?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-26 16:41:03
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(169, 62%, 61%) | rgb(93, 217, 194)  | #5DD9C2 |116 |
| 2 | hsl(73, 63%, 69%)  | rgb(204, 225, 126) | #CCE17E |186 |
| 3 | hsl(154, 64%, 35%) |  rgb(32, 146, 96)  | #209260 | 72 |
| 4 | hsl(205, 76%, 44%) | rgb(26, 126, 197)  | #1A7EC5 | 68 |
| 5 | hsl(326, 82%, 70%) | rgb(241, 115, 186) | #F173BA |212 |
| 6 | hsl(34, 61%, 47%)  | rgb(192, 129, 46)  | #C0812E |179 |
| 7 | hsl(297, 56%, 49%) | rgb(187, 54, 194)  | #BB36C2 |170 |
| 8 | hsl(126, 81%, 58%) |  rgb(61, 234, 78)  | #3DEA4E | 84 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(169, 62%, 61%),rgb(93, 217, 194),116
hsl(73, 63%, 69%),rgb(204, 225, 126),186
hsl(154, 64%, 35%),rgb(32, 146, 96),72
hsl(205, 76%, 44%),rgb(26, 126, 197),68
hsl(326, 82%, 70%),rgb(241, 115, 186),212
hsl(34, 61%, 47%),rgb(192, 129, 46),179
hsl(297, 56%, 49%),rgb(187, 54, 194),170
hsl(126, 81%, 58%),rgb(61, 234, 78),84

Generated: 2026-08-26 16:41:03
```
