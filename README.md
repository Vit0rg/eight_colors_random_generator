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

![#4F2C77](https://img.shields.io/badge/-%234F2C77?style=flat&logo=none) ![#48BCD9](https://img.shields.io/badge/-%2348BCD9?style=flat&logo=none) ![#9C3465](https://img.shields.io/badge/-%239C3465?style=flat&logo=none) ![#B466CC](https://img.shields.io/badge/-%23B466CC?style=flat&logo=none) ![#BB4E48](https://img.shields.io/badge/-%23BB4E48?style=flat&logo=none) ![#F59D32](https://img.shields.io/badge/-%23F59D32?style=flat&logo=none) ![#D55AD7](https://img.shields.io/badge/-%23D55AD7?style=flat&logo=none) ![#6A7523](https://img.shields.io/badge/-%236A7523?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-02 10:28:37
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(268, 46%, 32%) |  rgb(79, 44, 119)  | #4F2C77 | 96 |
| 2 | hsl(192, 66%, 57%) | rgb(72, 188, 217)  | #48BCD9 | 80 |
| 3 | hsl(332, 50%, 41%) | rgb(156, 52, 101)  | #9C3465 |132 |
| 4 | hsl(286, 50%, 60%) | rgb(180, 102, 204) | #B466CC |176 |
| 5 |  hsl(3, 46%, 51%)  |  rgb(187, 78, 72)  | #BB4E48 |173 |
| 6 | hsl(33, 91%, 58%)  | rgb(245, 157, 50)  | #F59D32 |215 |
| 7 | hsl(299, 61%, 60%) | rgb(213, 90, 215)  | #D55AD7 |176 |
| 8 | hsl(68, 54%, 30%)  | rgb(106, 117, 35)  | #6A7523 |101 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(268, 46%, 32%),rgb(79, 44, 119),96
hsl(192, 66%, 57%),rgb(72, 188, 217),80
hsl(332, 50%, 41%),rgb(156, 52, 101),132
hsl(286, 50%, 60%),rgb(180, 102, 204),176
hsl(3, 46%, 51%),rgb(187, 78, 72),173
hsl(33, 91%, 58%),rgb(245, 157, 50),215
hsl(299, 61%, 60%),rgb(213, 90, 215),176
hsl(68, 54%, 30%),rgb(106, 117, 35),101

Generated: 2026-07-02 10:28:37
```
