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

![#07DEED](https://img.shields.io/badge/-%2307DEED?style=flat&logo=none) ![#46B87F](https://img.shields.io/badge/-%2346B87F?style=flat&logo=none) ![#3BC396](https://img.shields.io/badge/-%233BC396?style=flat&logo=none) ![#A43652](https://img.shields.io/badge/-%23A43652?style=flat&logo=none) ![#2CD27F](https://img.shields.io/badge/-%232CD27F?style=flat&logo=none) ![#BB160A](https://img.shields.io/badge/-%23BB160A?style=flat&logo=none) ![#4096C9](https://img.shields.io/badge/-%234096C9?style=flat&logo=none) ![#FF19CD](https://img.shields.io/badge/-%23FF19CD?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-15 19:22:15
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(184, 94%, 48%) |  rgb(7, 222, 237)  | #07DEED | 45 |
| 2 | hsl(150, 45%, 50%) | rgb(70, 184, 127)  | #46B87F | 78 |
| 3 | hsl(160, 53%, 50%) | rgb(59, 195, 150)  | #3BC396 | 79 |
| 4 | hsl(345, 50%, 43%) |  rgb(164, 54, 82)  | #A43652 |132 |
| 5 | hsl(150, 65%, 50%) | rgb(44, 210, 127)  | #2CD27F | 78 |
| 6 |  hsl(4, 89%, 39%)  |  rgb(187, 22, 10)  | #BB160A |160 |
| 7 | hsl(202, 56%, 52%) | rgb(64, 150, 201)  | #4096C9 | 74 |
| 8 |hsl(313, 100%, 55%) | rgb(255, 25, 205)  | #FF19CD |200 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(184, 94%, 48%),rgb(7, 222, 237),45
hsl(150, 45%, 50%),rgb(70, 184, 127),78
hsl(160, 53%, 50%),rgb(59, 195, 150),79
hsl(345, 50%, 43%),rgb(164, 54, 82),132
hsl(150, 65%, 50%),rgb(44, 210, 127),78
hsl(4, 89%, 39%),rgb(187, 22, 10),160
hsl(202, 56%, 52%),rgb(64, 150, 201),74
hsl(313, 100%, 55%),rgb(255, 25, 205),200

Generated: 2026-09-15 19:22:15
```
