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

![#73C375](https://img.shields.io/badge/-%2373C375?style=flat&logo=none) ![#BC70C1](https://img.shields.io/badge/-%23BC70C1?style=flat&logo=none) ![#751B96](https://img.shields.io/badge/-%23751B96?style=flat&logo=none) ![#7E94E6](https://img.shields.io/badge/-%237E94E6?style=flat&logo=none) ![#3B94A0](https://img.shields.io/badge/-%233B94A0?style=flat&logo=none) ![#4559AA](https://img.shields.io/badge/-%234559AA?style=flat&logo=none) ![#6653BA](https://img.shields.io/badge/-%236653BA?style=flat&logo=none) ![#39CC14](https://img.shields.io/badge/-%2339CC14?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-10 18:49:17
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(121, 40%, 61%) | rgb(115, 195, 117) | #73C375 |114 |
| 2 | hsl(296, 40%, 60%) | rgb(188, 112, 193) | #BC70C1 |176 |
| 3 | hsl(284, 69%, 35%) | rgb(117, 27, 150)  | #751B96 | 97 |
| 4 | hsl(227, 68%, 70%) | rgb(126, 148, 230) | #7E94E6 |110 |
| 5 | hsl(187, 46%, 43%) | rgb(59, 148, 160)  | #3B94A0 | 73 |
| 6 | hsl(228, 42%, 47%) |  rgb(69, 89, 170)  | #4559AA | 67 |
| 7 | hsl(251, 43%, 53%) | rgb(102, 83, 186)  | #6653BA |104 |
| 8 | hsl(108, 82%, 44%) |  rgb(57, 204, 20)  | #39CC14 | 76 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(121, 40%, 61%),rgb(115, 195, 117),114
hsl(296, 40%, 60%),rgb(188, 112, 193),176
hsl(284, 69%, 35%),rgb(117, 27, 150),97
hsl(227, 68%, 70%),rgb(126, 148, 230),110
hsl(187, 46%, 43%),rgb(59, 148, 160),73
hsl(228, 42%, 47%),rgb(69, 89, 170),67
hsl(251, 43%, 53%),rgb(102, 83, 186),104
hsl(108, 82%, 44%),rgb(57, 204, 20),76

Generated: 2026-09-10 18:49:17
```
