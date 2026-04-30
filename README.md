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

![#77AD19](https://img.shields.io/badge/-%2377AD19?style=flat&logo=none) ![#D37063](https://img.shields.io/badge/-%23D37063?style=flat&logo=none) ![#17BE3E](https://img.shields.io/badge/-%2317BE3E?style=flat&logo=none) ![#C6336B](https://img.shields.io/badge/-%23C6336B?style=flat&logo=none) ![#1C9532](https://img.shields.io/badge/-%231C9532?style=flat&logo=none) ![#753586](https://img.shields.io/badge/-%23753586?style=flat&logo=none) ![#F87567](https://img.shields.io/badge/-%23F87567?style=flat&logo=none) ![#BB3AC9](https://img.shields.io/badge/-%23BB3AC9?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-30 09:58:41
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(82, 74%, 39%)  | rgb(119, 173, 25)  | #77AD19 |106 |
| 2 |  hsl(7, 56%, 61%)  | rgb(211, 112, 99)  | #D37063 |174 |
| 3 | hsl(134, 78%, 42%) |  rgb(23, 190, 62)  | #17BE3E | 41 |
| 4 | hsl(337, 59%, 49%) | rgb(198, 51, 107)  | #C6336B |168 |
| 5 | hsl(131, 68%, 35%) |  rgb(28, 149, 50)  | #1C9532 | 71 |
| 6 | hsl(287, 43%, 37%) | rgb(117, 53, 134)  | #753586 | 97 |
| 7 |  hsl(6, 92%, 69%)  | rgb(248, 117, 103) | #F87567 |210 |
| 8 | hsl(294, 57%, 51%) | rgb(187, 58, 201)  | #BB3AC9 |170 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(82, 74%, 39%),rgb(119, 173, 25),106
hsl(7, 56%, 61%),rgb(211, 112, 99),174
hsl(134, 78%, 42%),rgb(23, 190, 62),41
hsl(337, 59%, 49%),rgb(198, 51, 107),168
hsl(131, 68%, 35%),rgb(28, 149, 50),71
hsl(287, 43%, 37%),rgb(117, 53, 134),97
hsl(6, 92%, 69%),rgb(248, 117, 103),210
hsl(294, 57%, 51%),rgb(187, 58, 201),170

Generated: 2026-04-30 09:58:41
```
