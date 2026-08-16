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

![#AA33CC](https://img.shields.io/badge/-%23AA33CC?style=flat&logo=none) ![#702D64](https://img.shields.io/badge/-%23702D64?style=flat&logo=none) ![#712C5F](https://img.shields.io/badge/-%23712C5F?style=flat&logo=none) ![#9D69E6](https://img.shields.io/badge/-%239D69E6?style=flat&logo=none) ![#2FB61A](https://img.shields.io/badge/-%232FB61A?style=flat&logo=none) ![#278069](https://img.shields.io/badge/-%23278069?style=flat&logo=none) ![#C104B8](https://img.shields.io/badge/-%23C104B8?style=flat&logo=none) ![#FF0A53](https://img.shields.io/badge/-%23FF0A53?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-16 00:42:56
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(287, 60%, 50%) | rgb(170, 51, 204)  | #AA33CC |134 |
| 2 | hsl(311, 42%, 31%) | rgb(112, 45, 100)  | #702D64 | 96 |
| 3 | hsl(316, 44%, 31%) |  rgb(113, 44, 95)  | #712C5F | 96 |
| 4 | hsl(265, 72%, 66%) | rgb(157, 105, 230) | #9D69E6 |140 |
| 5 | hsl(112, 75%, 41%) |  rgb(47, 182, 26)  | #2FB61A | 77 |
| 6 | hsl(164, 53%, 33%) | rgb(39, 128, 105)  | #278069 | 72 |
| 7 | hsl(303, 95%, 39%) |  rgb(193, 4, 184)  | #C104B8 |164 |
| 8 |hsl(342, 100%, 52%) |  rgb(255, 10, 83)  | #FF0A53 |198 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(287, 60%, 50%),rgb(170, 51, 204),134
hsl(311, 42%, 31%),rgb(112, 45, 100),96
hsl(316, 44%, 31%),rgb(113, 44, 95),96
hsl(265, 72%, 66%),rgb(157, 105, 230),140
hsl(112, 75%, 41%),rgb(47, 182, 26),77
hsl(164, 53%, 33%),rgb(39, 128, 105),72
hsl(303, 95%, 39%),rgb(193, 4, 184),164
hsl(342, 100%, 52%),rgb(255, 10, 83),198

Generated: 2026-08-16 00:42:56
```
