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

![#52B70A](https://img.shields.io/badge/-%2352B70A?style=flat&logo=none) ![#82EB56](https://img.shields.io/badge/-%2382EB56?style=flat&logo=none) ![#387AF4](https://img.shields.io/badge/-%23387AF4?style=flat&logo=none) ![#94281E](https://img.shields.io/badge/-%2394281E?style=flat&logo=none) ![#E91AE9](https://img.shields.io/badge/-%23E91AE9?style=flat&logo=none) ![#9368CE](https://img.shields.io/badge/-%239368CE?style=flat&logo=none) ![#319A5F](https://img.shields.io/badge/-%23319A5F?style=flat&logo=none) ![#428DFF](https://img.shields.io/badge/-%23428DFF?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-17 09:08:40
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(95, 89%, 38%)  |  rgb(82, 183, 10)  | #52B70A |112 |
| 2 | hsl(102, 79%, 63%) | rgb(130, 235, 86)  | #82EB56 |156 |
| 3 | hsl(219, 90%, 59%) | rgb(56, 122, 244)  | #387AF4 | 69 |
| 4 |  hsl(5, 66%, 35%)  |  rgb(148, 40, 30)  | #94281E |131 |
| 5 | hsl(300, 83%, 51%) | rgb(233, 26, 233)  | #E91AE9 |207 |
| 6 | hsl(265, 51%, 61%) | rgb(147, 104, 206) | #9368CE |140 |
| 7 | hsl(146, 51%, 40%) |  rgb(49, 154, 95)  | #319A5F | 72 |
| 8 |hsl(216, 100%, 63%) | rgb(66, 141, 255)  | #428DFF | 75 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(95, 89%, 38%),rgb(82, 183, 10),112
hsl(102, 79%, 63%),rgb(130, 235, 86),156
hsl(219, 90%, 59%),rgb(56, 122, 244),69
hsl(5, 66%, 35%),rgb(148, 40, 30),131
hsl(300, 83%, 51%),rgb(233, 26, 233),207
hsl(265, 51%, 61%),rgb(147, 104, 206),140
hsl(146, 51%, 40%),rgb(49, 154, 95),72
hsl(216, 100%, 63%),rgb(66, 141, 255),75

Generated: 2026-04-17 09:08:40
```
