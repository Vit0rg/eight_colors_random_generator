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

![#F3260B](https://img.shields.io/badge/-%23F3260B?style=flat&logo=none) ![#863157](https://img.shields.io/badge/-%23863157?style=flat&logo=none) ![#4D61D5](https://img.shields.io/badge/-%234D61D5?style=flat&logo=none) ![#55E688](https://img.shields.io/badge/-%2355E688?style=flat&logo=none) ![#317B61](https://img.shields.io/badge/-%23317B61?style=flat&logo=none) ![#8A2831](https://img.shields.io/badge/-%238A2831?style=flat&logo=none) ![#681290](https://img.shields.io/badge/-%23681290?style=flat&logo=none) ![#7FBEDB](https://img.shields.io/badge/-%237FBEDB?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-01 02:45:15
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 |  hsl(7, 91%, 50%)  |  rgb(243, 38, 11)  | #F3260B |202 |
| 2 | hsl(333, 46%, 36%) |  rgb(134, 49, 87)  | #863157 |132 |
| 3 | hsl(231, 62%, 57%) |  rgb(77, 97, 213)  | #4D61D5 |104 |
| 4 | hsl(141, 75%, 62%) | rgb(85, 230, 136)  | #55E688 |115 |
| 5 | hsl(159, 43%, 34%) |  rgb(49, 123, 97)  | #317B61 | 66 |
| 6 | hsl(354, 55%, 35%) |  rgb(138, 40, 49)  | #8A2831 |131 |
| 7 | hsl(281, 77%, 32%) | rgb(104, 18, 144)  | #681290 | 91 |
| 8 | hsl(199, 56%, 68%) | rgb(127, 190, 219) | #7FBEDB |116 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(7, 91%, 50%),rgb(243, 38, 11),202
hsl(333, 46%, 36%),rgb(134, 49, 87),132
hsl(231, 62%, 57%),rgb(77, 97, 213),104
hsl(141, 75%, 62%),rgb(85, 230, 136),115
hsl(159, 43%, 34%),rgb(49, 123, 97),66
hsl(354, 55%, 35%),rgb(138, 40, 49),131
hsl(281, 77%, 32%),rgb(104, 18, 144),91
hsl(199, 56%, 68%),rgb(127, 190, 219),116

Generated: 2026-06-01 02:45:15
```
