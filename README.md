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

![#9F3CCC](https://img.shields.io/badge/-%239F3CCC?style=flat&logo=none) ![#DE5AFB](https://img.shields.io/badge/-%23DE5AFB?style=flat&logo=none) ![#D25F6B](https://img.shields.io/badge/-%23D25F6B?style=flat&logo=none) ![#D477AB](https://img.shields.io/badge/-%23D477AB?style=flat&logo=none) ![#69FBCD](https://img.shields.io/badge/-%2369FBCD?style=flat&logo=none) ![#ED5460](https://img.shields.io/badge/-%23ED5460?style=flat&logo=none) ![#2F978E](https://img.shields.io/badge/-%232F978E?style=flat&logo=none) ![#BB2A9B](https://img.shields.io/badge/-%23BB2A9B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-13 01:52:49
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(281, 59%, 52%) | rgb(159, 60, 204)  | #9F3CCC |134 |
| 2 | hsl(289, 96%, 67%) | rgb(222, 90, 251)  | #DE5AFB |177 |
| 3 | hsl(354, 56%, 60%) | rgb(210, 95, 107)  | #D25F6B |174 |
| 4 | hsl(326, 52%, 65%) | rgb(212, 119, 171) | #D477AB |175 |
| 5 | hsl(161, 96%, 70%) | rgb(105, 251, 205) | #69FBCD |122 |
| 6 | hsl(355, 81%, 63%) |  rgb(237, 84, 96)  | #ED5460 |210 |
| 7 | hsl(175, 52%, 39%) | rgb(47, 151, 142)  | #2F978E | 73 |
| 8 | hsl(313, 63%, 45%) | rgb(187, 42, 155)  | #BB2A9B |169 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(281, 59%, 52%),rgb(159, 60, 204),134
hsl(289, 96%, 67%),rgb(222, 90, 251),177
hsl(354, 56%, 60%),rgb(210, 95, 107),174
hsl(326, 52%, 65%),rgb(212, 119, 171),175
hsl(161, 96%, 70%),rgb(105, 251, 205),122
hsl(355, 81%, 63%),rgb(237, 84, 96),210
hsl(175, 52%, 39%),rgb(47, 151, 142),73
hsl(313, 63%, 45%),rgb(187, 42, 155),169

Generated: 2026-07-13 01:52:49
```
