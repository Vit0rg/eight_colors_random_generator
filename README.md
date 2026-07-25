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

![#63A418](https://img.shields.io/badge/-%2363A418?style=flat&logo=none) ![#9342EA](https://img.shields.io/badge/-%239342EA?style=flat&logo=none) ![#2763D1](https://img.shields.io/badge/-%232763D1?style=flat&logo=none) ![#BE4E02](https://img.shields.io/badge/-%23BE4E02?style=flat&logo=none) ![#749630](https://img.shields.io/badge/-%23749630?style=flat&logo=none) ![#655EF1](https://img.shields.io/badge/-%23655EF1?style=flat&logo=none) ![#3211C5](https://img.shields.io/badge/-%233211C5?style=flat&logo=none) ![#81EF42](https://img.shields.io/badge/-%2381EF42?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-25 09:28:24
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(88, 74%, 37%)  |  rgb(99, 164, 24)  | #63A418 |106 |
| 2 | hsl(269, 80%, 59%) | rgb(147, 66, 234)  | #9342EA |135 |
| 3 | hsl(219, 68%, 49%) |  rgb(39, 99, 209)  | #2763D1 | 68 |
| 4 | hsl(24, 97%, 38%)  |  rgb(190, 78, 2)   | #BE4E02 |172 |
| 5 | hsl(80, 51%, 39%)  | rgb(116, 150, 48)  | #749630 |107 |
| 6 | hsl(243, 85%, 66%) | rgb(101, 94, 241)  | #655EF1 |105 |
| 7 | hsl(251, 84%, 42%) |  rgb(50, 17, 197)  | #3211C5 | 56 |
| 8 | hsl(98, 85%, 60%)  | rgb(129, 239, 66)  | #81EF42 |155 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(88, 74%, 37%),rgb(99, 164, 24),106
hsl(269, 80%, 59%),rgb(147, 66, 234),135
hsl(219, 68%, 49%),rgb(39, 99, 209),68
hsl(24, 97%, 38%),rgb(190, 78, 2),172
hsl(80, 51%, 39%),rgb(116, 150, 48),107
hsl(243, 85%, 66%),rgb(101, 94, 241),105
hsl(251, 84%, 42%),rgb(50, 17, 197),56
hsl(98, 85%, 60%),rgb(129, 239, 66),155

Generated: 2026-07-25 09:28:24
```
