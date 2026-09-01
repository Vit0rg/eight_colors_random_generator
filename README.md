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

![#E94390](https://img.shields.io/badge/-%23E94390?style=flat&logo=none) ![#7E8EC7](https://img.shields.io/badge/-%237E8EC7?style=flat&logo=none) ![#2A87B5](https://img.shields.io/badge/-%232A87B5?style=flat&logo=none) ![#8D5116](https://img.shields.io/badge/-%238D5116?style=flat&logo=none) ![#C79413](https://img.shields.io/badge/-%23C79413?style=flat&logo=none) ![#E74F57](https://img.shields.io/badge/-%23E74F57?style=flat&logo=none) ![#49B558](https://img.shields.io/badge/-%2349B558?style=flat&logo=none) ![#9AD25A](https://img.shields.io/badge/-%239AD25A?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-01 12:53:10
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(332, 79%, 59%) | rgb(233, 67, 144)  | #E94390 |205 |
| 2 | hsl(227, 40%, 64%) | rgb(126, 142, 199) | #7E8EC7 |110 |
| 3 | hsl(200, 62%, 44%) | rgb(42, 135, 181)  | #2A87B5 | 74 |
| 4 | hsl(30, 73%, 32%)  |  rgb(141, 81, 22)  | #8D5116 |136 |
| 5 | hsl(43, 82%, 43%)  | rgb(199, 148, 19)  | #C79413 |178 |
| 6 | hsl(357, 76%, 61%) |  rgb(231, 79, 87)  | #E74F57 |210 |
| 7 | hsl(128, 42%, 50%) |  rgb(73, 181, 88)  | #49B558 | 78 |
| 8 | hsl(88, 57%, 59%)  | rgb(154, 210, 90)  | #9AD25A |150 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(332, 79%, 59%),rgb(233, 67, 144),205
hsl(227, 40%, 64%),rgb(126, 142, 199),110
hsl(200, 62%, 44%),rgb(42, 135, 181),74
hsl(30, 73%, 32%),rgb(141, 81, 22),136
hsl(43, 82%, 43%),rgb(199, 148, 19),178
hsl(357, 76%, 61%),rgb(231, 79, 87),210
hsl(128, 42%, 50%),rgb(73, 181, 88),78
hsl(88, 57%, 59%),rgb(154, 210, 90),150

Generated: 2026-09-01 12:53:10
```
