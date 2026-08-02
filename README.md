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

![#D4C68B](https://img.shields.io/badge/-%23D4C68B?style=flat&logo=none) ![#9BA540](https://img.shields.io/badge/-%239BA540?style=flat&logo=none) ![#503EDA](https://img.shields.io/badge/-%23503EDA?style=flat&logo=none) ![#A949F2](https://img.shields.io/badge/-%23A949F2?style=flat&logo=none) ![#C96EF6](https://img.shields.io/badge/-%23C96EF6?style=flat&logo=none) ![#C935A1](https://img.shields.io/badge/-%23C935A1?style=flat&logo=none) ![#A875EA](https://img.shields.io/badge/-%23A875EA?style=flat&logo=none) ![#577C30](https://img.shields.io/badge/-%23577C30?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-02 09:48:31
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(49, 46%, 69%)  | rgb(212, 198, 139) | #D4C68B |187 |
| 2 | hsl(66, 44%, 45%)  | rgb(155, 165, 64)  | #9BA540 |143 |
| 3 | hsl(247, 68%, 55%) |  rgb(80, 62, 218)  | #503EDA | 98 |
| 4 | hsl(274, 87%, 62%) | rgb(169, 73, 242)  | #A949F2 |135 |
| 5 | hsl(280, 89%, 70%) | rgb(201, 110, 246) | #C96EF6 |177 |
| 6 | hsl(316, 58%, 50%) | rgb(201, 53, 161)  | #C935A1 |169 |
| 7 | hsl(266, 74%, 69%) | rgb(168, 117, 234) | #A875EA |141 |
| 8 | hsl(89, 44%, 34%)  |  rgb(87, 124, 48)  | #577C30 |101 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(49, 46%, 69%),rgb(212, 198, 139),187
hsl(66, 44%, 45%),rgb(155, 165, 64),143
hsl(247, 68%, 55%),rgb(80, 62, 218),98
hsl(274, 87%, 62%),rgb(169, 73, 242),135
hsl(280, 89%, 70%),rgb(201, 110, 246),177
hsl(316, 58%, 50%),rgb(201, 53, 161),169
hsl(266, 74%, 69%),rgb(168, 117, 234),141
hsl(89, 44%, 34%),rgb(87, 124, 48),101

Generated: 2026-08-02 09:48:31
```
