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

![#D8EA38](https://img.shields.io/badge/-%23D8EA38?style=flat&logo=none) ![#140DA5](https://img.shields.io/badge/-%23140DA5?style=flat&logo=none) ![#CB4899](https://img.shields.io/badge/-%23CB4899?style=flat&logo=none) ![#980A14](https://img.shields.io/badge/-%23980A14?style=flat&logo=none) ![#7F26FB](https://img.shields.io/badge/-%237F26FB?style=flat&logo=none) ![#7D14FF](https://img.shields.io/badge/-%237D14FF?style=flat&logo=none) ![#0FF5AC](https://img.shields.io/badge/-%230FF5AC?style=flat&logo=none) ![#32DC48](https://img.shields.io/badge/-%2332DC48?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-08 17:19:46
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(66, 81%, 57%)  | rgb(216, 234, 56)  | #D8EA38 |191 |
| 2 | hsl(243, 85%, 35%) |  rgb(20, 13, 165)  | #140DA5 | 19 |
| 3 | hsl(323, 56%, 54%) | rgb(203, 72, 153)  | #CB4899 |169 |
| 4 | hsl(356, 87%, 32%) |  rgb(152, 10, 20)  | #980A14 |124 |
| 5 | hsl(265, 97%, 57%) | rgb(127, 38, 251)  | #7F26FB | 99 |
| 6 |hsl(267, 100%, 54%) | rgb(125, 20, 255)  | #7D14FF | 93 |
| 7 | hsl(161, 92%, 51%) | rgb(15, 245, 172)  | #0FF5AC | 49 |
| 8 | hsl(128, 71%, 53%) |  rgb(50, 220, 72)  | #32DC48 | 77 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(66, 81%, 57%),rgb(216, 234, 56),191
hsl(243, 85%, 35%),rgb(20, 13, 165),19
hsl(323, 56%, 54%),rgb(203, 72, 153),169
hsl(356, 87%, 32%),rgb(152, 10, 20),124
hsl(265, 97%, 57%),rgb(127, 38, 251),99
hsl(267, 100%, 54%),rgb(125, 20, 255),93
hsl(161, 92%, 51%),rgb(15, 245, 172),49
hsl(128, 71%, 53%),rgb(50, 220, 72),77

Generated: 2026-07-08 17:19:46
```
