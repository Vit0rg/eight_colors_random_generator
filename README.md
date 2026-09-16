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

![#563ED0](https://img.shields.io/badge/-%23563ED0?style=flat&logo=none) ![#51BD71](https://img.shields.io/badge/-%2351BD71?style=flat&logo=none) ![#55C3A9](https://img.shields.io/badge/-%2355C3A9?style=flat&logo=none) ![#238513](https://img.shields.io/badge/-%23238513?style=flat&logo=none) ![#5EC380](https://img.shields.io/badge/-%235EC380?style=flat&logo=none) ![#391E94](https://img.shields.io/badge/-%23391E94?style=flat&logo=none) ![#A472D8](https://img.shields.io/badge/-%23A472D8?style=flat&logo=none) ![#5B21CE](https://img.shields.io/badge/-%235B21CE?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-16 12:56:38
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(250, 61%, 53%) |  rgb(86, 62, 208)  | #563ED0 | 98 |
| 2 | hsl(138, 45%, 53%) | rgb(81, 189, 113)  | #51BD71 |114 |
| 3 | hsl(166, 48%, 55%) | rgb(85, 195, 169)  | #55C3A9 |115 |
| 4 | hsl(112, 74%, 30%) |  rgb(35, 133, 19)  | #238513 | 70 |
| 5 | hsl(140, 46%, 57%) | rgb(94, 195, 128)  | #5EC380 |115 |
| 6 | hsl(254, 66%, 35%) |  rgb(57, 30, 148)  | #391E94 | 61 |
| 7 | hsl(269, 57%, 65%) | rgb(164, 114, 216) | #A472D8 |140 |
| 8 | hsl(260, 72%, 47%) |  rgb(91, 33, 206)  | #5B21CE | 98 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(250, 61%, 53%),rgb(86, 62, 208),98
hsl(138, 45%, 53%),rgb(81, 189, 113),114
hsl(166, 48%, 55%),rgb(85, 195, 169),115
hsl(112, 74%, 30%),rgb(35, 133, 19),70
hsl(140, 46%, 57%),rgb(94, 195, 128),115
hsl(254, 66%, 35%),rgb(57, 30, 148),61
hsl(269, 57%, 65%),rgb(164, 114, 216),140
hsl(260, 72%, 47%),rgb(91, 33, 206),98

Generated: 2026-09-16 12:56:38
```
