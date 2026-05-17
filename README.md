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

![#FDCB4E](https://img.shields.io/badge/-%23FDCB4E?style=flat&logo=none) ![#36E7B8](https://img.shields.io/badge/-%2336E7B8?style=flat&logo=none) ![#7EE13B](https://img.shields.io/badge/-%237EE13B?style=flat&logo=none) ![#45F2BE](https://img.shields.io/badge/-%2345F2BE?style=flat&logo=none) ![#CBE556](https://img.shields.io/badge/-%23CBE556?style=flat&logo=none) ![#A70F9B](https://img.shields.io/badge/-%23A70F9B?style=flat&logo=none) ![#7A7DE5](https://img.shields.io/badge/-%237A7DE5?style=flat&logo=none) ![#1A6E7E](https://img.shields.io/badge/-%231A6E7E?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-17 09:27:46
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(43, 98%, 65%)  | rgb(253, 203, 78)  | #FDCB4E |222 |
| 2 | hsl(164, 79%, 56%) | rgb(54, 231, 184)  | #36E7B8 | 86 |
| 3 | hsl(96, 74%, 56%)  | rgb(126, 225, 59)  | #7EE13B |113 |
| 4 | hsl(162, 87%, 61%) | rgb(69, 242, 190)  | #45F2BE | 86 |
| 5 | hsl(71, 74%, 62%)  | rgb(203, 229, 86)  | #CBE556 |186 |
| 6 | hsl(305, 83%, 36%) | rgb(167, 15, 155)  | #A70F9B |127 |
| 7 | hsl(238, 68%, 69%) | rgb(122, 125, 229) | #7A7DE5 |104 |
| 8 | hsl(190, 66%, 30%) | rgb(26, 110, 126)  | #1A6E7E | 66 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(43, 98%, 65%),rgb(253, 203, 78),222
hsl(164, 79%, 56%),rgb(54, 231, 184),86
hsl(96, 74%, 56%),rgb(126, 225, 59),113
hsl(162, 87%, 61%),rgb(69, 242, 190),86
hsl(71, 74%, 62%),rgb(203, 229, 86),186
hsl(305, 83%, 36%),rgb(167, 15, 155),127
hsl(238, 68%, 69%),rgb(122, 125, 229),104
hsl(190, 66%, 30%),rgb(26, 110, 126),66

Generated: 2026-05-17 09:27:46
```
