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

![#D863B1](https://img.shields.io/badge/-%23D863B1?style=flat&logo=none) ![#1DCD9B](https://img.shields.io/badge/-%231DCD9B?style=flat&logo=none) ![#E07EA9](https://img.shields.io/badge/-%23E07EA9?style=flat&logo=none) ![#388833](https://img.shields.io/badge/-%23388833?style=flat&logo=none) ![#CBBA57](https://img.shields.io/badge/-%23CBBA57?style=flat&logo=none) ![#0A5D9D](https://img.shields.io/badge/-%230A5D9D?style=flat&logo=none) ![#2B439B](https://img.shields.io/badge/-%232B439B?style=flat&logo=none) ![#D78740](https://img.shields.io/badge/-%23D78740?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-26 01:52:12
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(320, 60%, 62%) | rgb(216, 99, 177)  | #D863B1 |175 |
| 2 | hsl(163, 75%, 46%) | rgb(29, 205, 155)  | #1DCD9B | 79 |
| 3 | hsl(334, 62%, 69%) | rgb(224, 126, 169) | #E07EA9 |175 |
| 4 | hsl(117, 45%, 37%) |  rgb(56, 136, 51)  | #388833 | 71 |
| 5 | hsl(51, 53%, 57%)  | rgb(203, 186, 87)  | #CBBA57 |186 |
| 6 | hsl(206, 87%, 33%) |  rgb(10, 93, 157)  | #0A5D9D | 31 |
| 7 | hsl(227, 56%, 39%) |  rgb(43, 67, 155)  | #2B439B | 61 |
| 8 | hsl(28, 66%, 55%)  | rgb(215, 135, 64)  | #D78740 |179 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(320, 60%, 62%),rgb(216, 99, 177),175
hsl(163, 75%, 46%),rgb(29, 205, 155),79
hsl(334, 62%, 69%),rgb(224, 126, 169),175
hsl(117, 45%, 37%),rgb(56, 136, 51),71
hsl(51, 53%, 57%),rgb(203, 186, 87),186
hsl(206, 87%, 33%),rgb(10, 93, 157),31
hsl(227, 56%, 39%),rgb(43, 67, 155),61
hsl(28, 66%, 55%),rgb(215, 135, 64),179

Generated: 2026-04-26 01:52:12
```
