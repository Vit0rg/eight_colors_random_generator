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

![#2E30CB](https://img.shields.io/badge/-%232E30CB?style=flat&logo=none) ![#D665B2](https://img.shields.io/badge/-%23D665B2?style=flat&logo=none) ![#5162FF](https://img.shields.io/badge/-%235162FF?style=flat&logo=none) ![#D9E528](https://img.shields.io/badge/-%23D9E528?style=flat&logo=none) ![#44D86C](https://img.shields.io/badge/-%2344D86C?style=flat&logo=none) ![#D6C041](https://img.shields.io/badge/-%23D6C041?style=flat&logo=none) ![#A388DC](https://img.shields.io/badge/-%23A388DC?style=flat&logo=none) ![#2A31A6](https://img.shields.io/badge/-%232A31A6?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-24 16:52:50
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(239, 63%, 49%) |  rgb(46, 48, 203)  | #2E30CB | 62 |
| 2 | hsl(319, 58%, 62%) | rgb(214, 101, 178) | #D665B2 |175 |
| 3 |hsl(234, 100%, 66%) |  rgb(81, 98, 255)  | #5162FF |105 |
| 4 | hsl(64, 79%, 53%)  | rgb(217, 229, 40)  | #D9E528 |185 |
| 5 | hsl(136, 66%, 56%) | rgb(68, 216, 108)  | #44D86C | 78 |
| 6 | hsl(51, 65%, 55%)  | rgb(214, 192, 65)  | #D6C041 |185 |
| 7 | hsl(259, 55%, 70%) | rgb(163, 136, 220) | #A388DC |146 |
| 8 | hsl(237, 59%, 41%) |  rgb(42, 49, 166)  | #2A31A6 | 61 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(239, 63%, 49%),rgb(46, 48, 203),62
hsl(319, 58%, 62%),rgb(214, 101, 178),175
hsl(234, 100%, 66%),rgb(81, 98, 255),105
hsl(64, 79%, 53%),rgb(217, 229, 40),185
hsl(136, 66%, 56%),rgb(68, 216, 108),78
hsl(51, 65%, 55%),rgb(214, 192, 65),185
hsl(259, 55%, 70%),rgb(163, 136, 220),146
hsl(237, 59%, 41%),rgb(42, 49, 166),61

Generated: 2026-05-24 16:52:50
```
