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

![#D6EC45](https://img.shields.io/badge/-%23D6EC45?style=flat&logo=none) ![#5078E6](https://img.shields.io/badge/-%235078E6?style=flat&logo=none) ![#EC6EB9](https://img.shields.io/badge/-%23EC6EB9?style=flat&logo=none) ![#F11251](https://img.shields.io/badge/-%23F11251?style=flat&logo=none) ![#A44646](https://img.shields.io/badge/-%23A44646?style=flat&logo=none) ![#DB7AD8](https://img.shields.io/badge/-%23DB7AD8?style=flat&logo=none) ![#C928FF](https://img.shields.io/badge/-%23C928FF?style=flat&logo=none) ![#18E0D3](https://img.shields.io/badge/-%2318E0D3?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-26 10:43:37
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(68, 82%, 60%)  | rgb(214, 236, 69)  | #D6EC45 |191 |
| 2 | hsl(224, 75%, 61%) | rgb(80, 120, 230)  | #5078E6 |104 |
| 3 | hsl(324, 77%, 68%) | rgb(236, 110, 185) | #EC6EB9 |212 |
| 4 | hsl(343, 89%, 51%) |  rgb(241, 18, 81)  | #F11251 |198 |
| 5 |  hsl(0, 40%, 46%)  |  rgb(164, 70, 70)  | #A44646 |131 |
| 6 | hsl(302, 58%, 67%) | rgb(219, 122, 216) | #DB7AD8 |176 |
| 7 |hsl(285, 100%, 58%) | rgb(201, 40, 255)  | #C928FF |171 |
| 8 | hsl(176, 80%, 49%) | rgb(24, 224, 211)  | #18E0D3 | 44 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(68, 82%, 60%),rgb(214, 236, 69),191
hsl(224, 75%, 61%),rgb(80, 120, 230),104
hsl(324, 77%, 68%),rgb(236, 110, 185),212
hsl(343, 89%, 51%),rgb(241, 18, 81),198
hsl(0, 40%, 46%),rgb(164, 70, 70),131
hsl(302, 58%, 67%),rgb(219, 122, 216),176
hsl(285, 100%, 58%),rgb(201, 40, 255),171
hsl(176, 80%, 49%),rgb(24, 224, 211),44

Generated: 2026-06-26 10:43:37
```
