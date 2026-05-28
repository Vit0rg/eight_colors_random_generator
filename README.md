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

![#929F41](https://img.shields.io/badge/-%23929F41?style=flat&logo=none) ![#389CDA](https://img.shields.io/badge/-%23389CDA?style=flat&logo=none) ![#2DBCA0](https://img.shields.io/badge/-%232DBCA0?style=flat&logo=none) ![#48DE48](https://img.shields.io/badge/-%2348DE48?style=flat&logo=none) ![#B921C4](https://img.shields.io/badge/-%23B921C4?style=flat&logo=none) ![#CE47FF](https://img.shields.io/badge/-%23CE47FF?style=flat&logo=none) ![#CF0298](https://img.shields.io/badge/-%23CF0298?style=flat&logo=none) ![#169120](https://img.shields.io/badge/-%23169120?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-28 18:30:19
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(68, 42%, 44%)  | rgb(146, 159, 65)  | #929F41 |143 |
| 2 | hsl(203, 69%, 54%) | rgb(56, 156, 218)  | #389CDA | 74 |
| 3 | hsl(168, 61%, 46%) | rgb(45, 188, 160)  | #2DBCA0 | 79 |
| 4 | hsl(120, 70%, 58%) |  rgb(72, 222, 72)  | #48DE48 | 77 |
| 5 | hsl(296, 71%, 45%) | rgb(185, 33, 196)  | #B921C4 |170 |
| 6 |hsl(284, 100%, 64%) | rgb(206, 71, 255)  | #CE47FF |171 |
| 7 | hsl(316, 98%, 41%) |  rgb(207, 2, 152)  | #CF0298 |163 |
| 8 | hsl(125, 73%, 33%) |  rgb(22, 145, 32)  | #169120 | 35 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(68, 42%, 44%),rgb(146, 159, 65),143
hsl(203, 69%, 54%),rgb(56, 156, 218),74
hsl(168, 61%, 46%),rgb(45, 188, 160),79
hsl(120, 70%, 58%),rgb(72, 222, 72),77
hsl(296, 71%, 45%),rgb(185, 33, 196),170
hsl(284, 100%, 64%),rgb(206, 71, 255),171
hsl(316, 98%, 41%),rgb(207, 2, 152),163
hsl(125, 73%, 33%),rgb(22, 145, 32),35

Generated: 2026-05-28 18:30:19
```
