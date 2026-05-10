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

![#E849C6](https://img.shields.io/badge/-%23E849C6?style=flat&logo=none) ![#7E5EBA](https://img.shields.io/badge/-%237E5EBA?style=flat&logo=none) ![#266181](https://img.shields.io/badge/-%23266181?style=flat&logo=none) ![#DA7A62](https://img.shields.io/badge/-%23DA7A62?style=flat&logo=none) ![#E344DD](https://img.shields.io/badge/-%23E344DD?style=flat&logo=none) ![#97D184](https://img.shields.io/badge/-%2397D184?style=flat&logo=none) ![#16A9E8](https://img.shields.io/badge/-%2316A9E8?style=flat&logo=none) ![#992513](https://img.shields.io/badge/-%23992513?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-10 09:22:36
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(313, 78%, 60%) | rgb(232, 73, 198)  | #E849C6 |206 |
| 2 | hsl(261, 40%, 55%) | rgb(126, 94, 186)  | #7E5EBA |104 |
| 3 | hsl(201, 54%, 33%) |  rgb(38, 97, 129)  | #266181 | 67 |
| 4 | hsl(12, 62%, 62%)  | rgb(218, 122, 98)  | #DA7A62 |174 |
| 5 | hsl(302, 74%, 58%) | rgb(227, 68, 221)  | #E344DD |170 |
| 6 | hsl(105, 46%, 67%) | rgb(151, 209, 132) | #97D184 |151 |
| 7 | hsl(198, 82%, 50%) | rgb(22, 169, 232)  | #16A9E8 | 39 |
| 8 |  hsl(8, 77%, 34%)  |  rgb(153, 37, 19)  | #992513 |130 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(313, 78%, 60%),rgb(232, 73, 198),206
hsl(261, 40%, 55%),rgb(126, 94, 186),104
hsl(201, 54%, 33%),rgb(38, 97, 129),67
hsl(12, 62%, 62%),rgb(218, 122, 98),174
hsl(302, 74%, 58%),rgb(227, 68, 221),170
hsl(105, 46%, 67%),rgb(151, 209, 132),151
hsl(198, 82%, 50%),rgb(22, 169, 232),39
hsl(8, 77%, 34%),rgb(153, 37, 19),130

Generated: 2026-05-10 09:22:36
```
