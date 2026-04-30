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

![#9D3D82](https://img.shields.io/badge/-%239D3D82?style=flat&logo=none) ![#70D073](https://img.shields.io/badge/-%2370D073?style=flat&logo=none) ![#26AF28](https://img.shields.io/badge/-%2326AF28?style=flat&logo=none) ![#9262C0](https://img.shields.io/badge/-%239262C0?style=flat&logo=none) ![#1642F2](https://img.shields.io/badge/-%231642F2?style=flat&logo=none) ![#2B24F3](https://img.shields.io/badge/-%232B24F3?style=flat&logo=none) ![#F306C4](https://img.shields.io/badge/-%23F306C4?style=flat&logo=none) ![#A900AC](https://img.shields.io/badge/-%23A900AC?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-30 02:04:39
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(317, 44%, 43%) | rgb(157, 61, 130)  | #9D3D82 |133 |
| 2 | hsl(122, 51%, 63%) | rgb(112, 208, 115) | #70D073 |114 |
| 3 | hsl(121, 64%, 42%) |  rgb(38, 175, 40)  | #26AF28 | 71 |
| 4 | hsl(271, 43%, 57%) | rgb(146, 98, 192)  | #9262C0 |140 |
| 5 | hsl(228, 90%, 52%) |  rgb(22, 66, 242)  | #1642F2 | 27 |
| 6 | hsl(242, 90%, 55%) |  rgb(43, 36, 243)  | #2B24F3 | 63 |
| 7 | hsl(312, 95%, 49%) |  rgb(243, 6, 196)  | #F306C4 |200 |
| 8 | hsl(299, 99%, 34%) |  rgb(169, 0, 172)  | #A900AC |127 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(317, 44%, 43%),rgb(157, 61, 130),133
hsl(122, 51%, 63%),rgb(112, 208, 115),114
hsl(121, 64%, 42%),rgb(38, 175, 40),71
hsl(271, 43%, 57%),rgb(146, 98, 192),140
hsl(228, 90%, 52%),rgb(22, 66, 242),27
hsl(242, 90%, 55%),rgb(43, 36, 243),63
hsl(312, 95%, 49%),rgb(243, 6, 196),200
hsl(299, 99%, 34%),rgb(169, 0, 172),127

Generated: 2026-04-30 02:04:39
```
