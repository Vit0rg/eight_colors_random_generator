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

![#02B4A0](https://img.shields.io/badge/-%2302B4A0?style=flat&logo=none) ![#10F363](https://img.shields.io/badge/-%2310F363?style=flat&logo=none) ![#41F329](https://img.shields.io/badge/-%2341F329?style=flat&logo=none) ![#D378EC](https://img.shields.io/badge/-%23D378EC?style=flat&logo=none) ![#89E269](https://img.shields.io/badge/-%2389E269?style=flat&logo=none) ![#0369C2](https://img.shields.io/badge/-%230369C2?style=flat&logo=none) ![#F14C40](https://img.shields.io/badge/-%23F14C40?style=flat&logo=none) ![#AC3E41](https://img.shields.io/badge/-%23AC3E41?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-21 01:47:16
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(173, 97%, 36%) |  rgb(2, 180, 160)  | #02B4A0 | 43 |
| 2 | hsl(142, 91%, 51%) |  rgb(16, 243, 99)  | #10F363 | 48 |
| 3 | hsl(113, 90%, 56%) |  rgb(65, 243, 41)  | #41F329 | 83 |
| 4 | hsl(287, 76%, 70%) | rgb(211, 120, 236) | #D378EC |177 |
| 5 | hsl(104, 68%, 65%) | rgb(137, 226, 105) | #89E269 |150 |
| 6 | hsl(208, 96%, 39%) |  rgb(3, 105, 194)  | #0369C2 | 32 |
| 7 |  hsl(4, 87%, 60%)  |  rgb(241, 76, 64)  | #F14C40 |203 |
| 8 | hsl(358, 47%, 46%) |  rgb(172, 62, 65)  | #AC3E41 |131 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(173, 97%, 36%),rgb(2, 180, 160),43
hsl(142, 91%, 51%),rgb(16, 243, 99),48
hsl(113, 90%, 56%),rgb(65, 243, 41),83
hsl(287, 76%, 70%),rgb(211, 120, 236),177
hsl(104, 68%, 65%),rgb(137, 226, 105),150
hsl(208, 96%, 39%),rgb(3, 105, 194),32
hsl(4, 87%, 60%),rgb(241, 76, 64),203
hsl(358, 47%, 46%),rgb(172, 62, 65),131

Generated: 2026-04-21 01:47:16
```
