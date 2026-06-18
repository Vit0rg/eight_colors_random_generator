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

![#7090EF](https://img.shields.io/badge/-%237090EF?style=flat&logo=none) ![#049BE0](https://img.shields.io/badge/-%23049BE0?style=flat&logo=none) ![#355F96](https://img.shields.io/badge/-%23355F96?style=flat&logo=none) ![#138519](https://img.shields.io/badge/-%23138519?style=flat&logo=none) ![#A3EA47](https://img.shields.io/badge/-%23A3EA47?style=flat&logo=none) ![#6CEED0](https://img.shields.io/badge/-%236CEED0?style=flat&logo=none) ![#C17D70](https://img.shields.io/badge/-%23C17D70?style=flat&logo=none) ![#98B742](https://img.shields.io/badge/-%2398B742?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-18 11:44:39
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(225, 80%, 69%) | rgb(112, 144, 239) | #7090EF |111 |
| 2 | hsl(199, 96%, 45%) |  rgb(4, 155, 224)  | #049BE0 | 38 |
| 3 | hsl(214, 48%, 40%) |  rgb(53, 95, 150)  | #355F96 | 67 |
| 4 | hsl(123, 74%, 30%) |  rgb(19, 133, 25)  | #138519 | 34 |
| 5 | hsl(86, 80%, 60%)  | rgb(163, 234, 71)  | #A3EA47 |155 |
| 6 | hsl(166, 80%, 68%) | rgb(108, 238, 208) | #6CEED0 |122 |
| 7 | hsl(10, 40%, 60%)  | rgb(193, 125, 112) | #C17D70 |174 |
| 8 | hsl(76, 47%, 49%)  | rgb(152, 183, 66)  | #98B742 |149 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(225, 80%, 69%),rgb(112, 144, 239),111
hsl(199, 96%, 45%),rgb(4, 155, 224),38
hsl(214, 48%, 40%),rgb(53, 95, 150),67
hsl(123, 74%, 30%),rgb(19, 133, 25),34
hsl(86, 80%, 60%),rgb(163, 234, 71),155
hsl(166, 80%, 68%),rgb(108, 238, 208),122
hsl(10, 40%, 60%),rgb(193, 125, 112),174
hsl(76, 47%, 49%),rgb(152, 183, 66),149

Generated: 2026-06-18 11:44:39
```
