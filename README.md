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

![#4E4BEB](https://img.shields.io/badge/-%234E4BEB?style=flat&logo=none) ![#D61E30](https://img.shields.io/badge/-%23D61E30?style=flat&logo=none) ![#8A1290](https://img.shields.io/badge/-%238A1290?style=flat&logo=none) ![#D9D04E](https://img.shields.io/badge/-%23D9D04E?style=flat&logo=none) ![#5EA616](https://img.shields.io/badge/-%235EA616?style=flat&logo=none) ![#C670B5](https://img.shields.io/badge/-%23C670B5?style=flat&logo=none) ![#AC4881](https://img.shields.io/badge/-%23AC4881?style=flat&logo=none) ![#0D34E2](https://img.shields.io/badge/-%230D34E2?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-12 10:24:20
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(241, 80%, 61%) |  rgb(78, 75, 235)  | #4E4BEB | 99 |
| 2 | hsl(354, 75%, 48%) |  rgb(214, 30, 48)  | #D61E30 |167 |
| 3 | hsl(297, 77%, 32%) | rgb(138, 18, 144)  | #8A1290 |127 |
| 4 | hsl(56, 65%, 58%)  | rgb(217, 208, 78)  | #D9D04E |186 |
| 5 | hsl(90, 76%, 37%)  |  rgb(94, 166, 22)  | #5EA616 |106 |
| 6 | hsl(312, 43%, 61%) | rgb(198, 112, 181) | #C670B5 |176 |
| 7 | hsl(326, 41%, 48%) | rgb(172, 72, 129)  | #AC4881 |133 |
| 8 | hsl(229, 89%, 47%) |  rgb(13, 52, 226)  | #0D34E2 | 26 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(241, 80%, 61%),rgb(78, 75, 235),99
hsl(354, 75%, 48%),rgb(214, 30, 48),167
hsl(297, 77%, 32%),rgb(138, 18, 144),127
hsl(56, 65%, 58%),rgb(217, 208, 78),186
hsl(90, 76%, 37%),rgb(94, 166, 22),106
hsl(312, 43%, 61%),rgb(198, 112, 181),176
hsl(326, 41%, 48%),rgb(172, 72, 129),133
hsl(229, 89%, 47%),rgb(13, 52, 226),26

Generated: 2026-05-12 10:24:20
```
