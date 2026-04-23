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

![#7A1FD0](https://img.shields.io/badge/-%237A1FD0?style=flat&logo=none) ![#985DFD](https://img.shields.io/badge/-%23985DFD?style=flat&logo=none) ![#4679A8](https://img.shields.io/badge/-%234679A8?style=flat&logo=none) ![#BCA157](https://img.shields.io/badge/-%23BCA157?style=flat&logo=none) ![#D60E72](https://img.shields.io/badge/-%23D60E72?style=flat&logo=none) ![#03F670](https://img.shields.io/badge/-%2303F670?style=flat&logo=none) ![#02F2B2](https://img.shields.io/badge/-%2302F2B2?style=flat&logo=none) ![#0284AF](https://img.shields.io/badge/-%230284AF?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-23 09:18:53
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(271, 74%, 47%) | rgb(122, 31, 208)  | #7A1FD0 | 98 |
| 2 | hsl(262, 98%, 68%) | rgb(152, 93, 253)  | #985DFD |141 |
| 3 | hsl(209, 41%, 47%) | rgb(70, 121, 168)  | #4679A8 | 67 |
| 4 | hsl(44, 43%, 54%)  | rgb(188, 161, 87)  | #BCA157 |180 |
| 5 | hsl(330, 87%, 45%) | rgb(214, 14, 114)  | #D60E72 |162 |
| 6 | hsl(147, 97%, 49%) |  rgb(3, 246, 112)  | #03F670 | 48 |
| 7 | hsl(164, 98%, 48%) |  rgb(2, 242, 178)  | #02F2B2 | 49 |
| 8 | hsl(195, 97%, 35%) |  rgb(2, 132, 175)  | #0284AF | 37 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(271, 74%, 47%),rgb(122, 31, 208),98
hsl(262, 98%, 68%),rgb(152, 93, 253),141
hsl(209, 41%, 47%),rgb(70, 121, 168),67
hsl(44, 43%, 54%),rgb(188, 161, 87),180
hsl(330, 87%, 45%),rgb(214, 14, 114),162
hsl(147, 97%, 49%),rgb(3, 246, 112),48
hsl(164, 98%, 48%),rgb(2, 242, 178),49
hsl(195, 97%, 35%),rgb(2, 132, 175),37

Generated: 2026-04-23 09:18:53
```
