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

![#206FC9](https://img.shields.io/badge/-%23206FC9?style=flat&logo=none) ![#F443DF](https://img.shields.io/badge/-%23F443DF?style=flat&logo=none) ![#B909DC](https://img.shields.io/badge/-%23B909DC?style=flat&logo=none) ![#00C15A](https://img.shields.io/badge/-%2300C15A?style=flat&logo=none) ![#0615BB](https://img.shields.io/badge/-%230615BB?style=flat&logo=none) ![#4225BF](https://img.shields.io/badge/-%234225BF?style=flat&logo=none) ![#1938D0](https://img.shields.io/badge/-%231938D0?style=flat&logo=none) ![#32318B](https://img.shields.io/badge/-%2332318B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-08 12:24:13
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(212, 72%, 46%) | rgb(32, 111, 201)  | #206FC9 | 68 |
| 2 | hsl(307, 89%, 61%) | rgb(244, 67, 223)  | #F443DF |206 |
| 3 | hsl(290, 92%, 45%) |  rgb(185, 9, 220)  | #B909DC |164 |
| 4 |hsl(148, 100%, 38%) |  rgb(0, 193, 90)   | #00C15A | 42 |
| 5 | hsl(235, 93%, 38%) |  rgb(6, 21, 187)   | #0615BB | 20 |
| 6 | hsl(251, 67%, 45%) |  rgb(66, 37, 191)  | #4225BF | 62 |
| 7 | hsl(230, 78%, 46%) |  rgb(25, 56, 208)  | #1938D0 | 26 |
| 8 | hsl(241, 48%, 37%) |  rgb(50, 49, 139)  | #32318B | 61 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(212, 72%, 46%),rgb(32, 111, 201),68
hsl(307, 89%, 61%),rgb(244, 67, 223),206
hsl(290, 92%, 45%),rgb(185, 9, 220),164
hsl(148, 100%, 38%),rgb(0, 193, 90),42
hsl(235, 93%, 38%),rgb(6, 21, 187),20
hsl(251, 67%, 45%),rgb(66, 37, 191),62
hsl(230, 78%, 46%),rgb(25, 56, 208),26
hsl(241, 48%, 37%),rgb(50, 49, 139),61

Generated: 2026-09-08 12:24:13
```
