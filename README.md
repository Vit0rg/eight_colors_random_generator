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

![#54B5D8](https://img.shields.io/badge/-%2354B5D8?style=flat&logo=none) ![#64DFFB](https://img.shields.io/badge/-%2364DFFB?style=flat&logo=none) ![#39E9BD](https://img.shields.io/badge/-%2339E9BD?style=flat&logo=none) ![#DC9F55](https://img.shields.io/badge/-%23DC9F55?style=flat&logo=none) ![#E17ED4](https://img.shields.io/badge/-%23E17ED4?style=flat&logo=none) ![#772B60](https://img.shields.io/badge/-%23772B60?style=flat&logo=none) ![#E273E2](https://img.shields.io/badge/-%23E273E2?style=flat&logo=none) ![#EA9D0E](https://img.shields.io/badge/-%23EA9D0E?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-13 18:25:23
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(196, 63%, 59%) | rgb(84, 181, 216)  | #54B5D8 |116 |
| 2 | hsl(191, 96%, 69%) | rgb(100, 223, 251) | #64DFFB |117 |
| 3 | hsl(165, 80%, 57%) | rgb(57, 233, 189)  | #39E9BD | 86 |
| 4 | hsl(33, 66%, 60%)  | rgb(220, 159, 85)  | #DC9F55 |180 |
| 5 | hsl(308, 63%, 69%) | rgb(225, 126, 212) | #E17ED4 |176 |
| 6 | hsl(318, 47%, 32%) |  rgb(119, 43, 96)  | #772B60 | 96 |
| 7 | hsl(300, 66%, 67%) | rgb(226, 115, 226) | #E273E2 |176 |
| 8 | hsl(39, 88%, 49%)  | rgb(234, 157, 14)  | #EA9D0E |214 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(196, 63%, 59%),rgb(84, 181, 216),116
hsl(191, 96%, 69%),rgb(100, 223, 251),117
hsl(165, 80%, 57%),rgb(57, 233, 189),86
hsl(33, 66%, 60%),rgb(220, 159, 85),180
hsl(308, 63%, 69%),rgb(225, 126, 212),176
hsl(318, 47%, 32%),rgb(119, 43, 96),96
hsl(300, 66%, 67%),rgb(226, 115, 226),176
hsl(39, 88%, 49%),rgb(234, 157, 14),214

Generated: 2026-09-13 18:25:23
```
