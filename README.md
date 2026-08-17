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

![#1C39E2](https://img.shields.io/badge/-%231C39E2?style=flat&logo=none) ![#145489](https://img.shields.io/badge/-%23145489?style=flat&logo=none) ![#C8E849](https://img.shields.io/badge/-%23C8E849?style=flat&logo=none) ![#B730F1](https://img.shields.io/badge/-%23B730F1?style=flat&logo=none) ![#13E1B8](https://img.shields.io/badge/-%2313E1B8?style=flat&logo=none) ![#82A23D](https://img.shields.io/badge/-%2382A23D?style=flat&logo=none) ![#AFF164](https://img.shields.io/badge/-%23AFF164?style=flat&logo=none) ![#C8615F](https://img.shields.io/badge/-%23C8615F?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-17 08:31:46
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(231, 78%, 50%) |  rgb(28, 57, 226)  | #1C39E2 | 62 |
| 2 | hsl(207, 74%, 31%) |  rgb(20, 84, 137)  | #145489 | 31 |
| 3 | hsl(72, 78%, 60%)  | rgb(200, 232, 73)  | #C8E849 |191 |
| 4 | hsl(282, 88%, 57%) | rgb(183, 48, 241)  | #B730F1 |171 |
| 5 | hsl(168, 84%, 48%) | rgb(19, 225, 184)  | #13E1B8 | 44 |
| 6 | hsl(79, 45%, 44%)  | rgb(130, 162, 61)  | #82A23D |143 |
| 7 | hsl(88, 84%, 67%)  | rgb(175, 241, 100) | #AFF164 |156 |
| 8 |  hsl(1, 49%, 58%)  |  rgb(200, 97, 95)  | #C8615F |174 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(231, 78%, 50%),rgb(28, 57, 226),62
hsl(207, 74%, 31%),rgb(20, 84, 137),31
hsl(72, 78%, 60%),rgb(200, 232, 73),191
hsl(282, 88%, 57%),rgb(183, 48, 241),171
hsl(168, 84%, 48%),rgb(19, 225, 184),44
hsl(79, 45%, 44%),rgb(130, 162, 61),143
hsl(88, 84%, 67%),rgb(175, 241, 100),156
hsl(1, 49%, 58%),rgb(200, 97, 95),174

Generated: 2026-08-17 08:31:46
```
