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

![#27457B](https://img.shields.io/badge/-%2327457B?style=flat&logo=none) ![#D78D91](https://img.shields.io/badge/-%23D78D91?style=flat&logo=none) ![#1A568D](https://img.shields.io/badge/-%231A568D?style=flat&logo=none) ![#7A7E2E](https://img.shields.io/badge/-%237A7E2E?style=flat&logo=none) ![#059383](https://img.shields.io/badge/-%23059383?style=flat&logo=none) ![#2C765D](https://img.shields.io/badge/-%232C765D?style=flat&logo=none) ![#4FC460](https://img.shields.io/badge/-%234FC460?style=flat&logo=none) ![#14DBA9](https://img.shields.io/badge/-%2314DBA9?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-06 17:53:04
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(219, 51%, 32%) |  rgb(39, 69, 123)  | #27457B | 60 |
| 2 | hsl(357, 48%, 70%) | rgb(215, 141, 145) | #D78D91 |181 |
| 3 | hsl(209, 68%, 33%) |  rgb(26, 86, 141)  | #1A568D | 67 |
| 4 | hsl(63, 46%, 34%)  | rgb(122, 126, 46)  | #7A7E2E |101 |
| 5 | hsl(173, 93%, 30%) |  rgb(5, 147, 131)  | #059383 | 37 |
| 6 | hsl(160, 45%, 32%) |  rgb(44, 118, 93)  | #2C765D | 66 |
| 7 | hsl(129, 50%, 54%) |  rgb(79, 196, 96)  | #4FC460 |114 |
| 8 | hsl(165, 83%, 47%) | rgb(20, 219, 169)  | #14DBA9 | 43 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(219, 51%, 32%),rgb(39, 69, 123),60
hsl(357, 48%, 70%),rgb(215, 141, 145),181
hsl(209, 68%, 33%),rgb(26, 86, 141),67
hsl(63, 46%, 34%),rgb(122, 126, 46),101
hsl(173, 93%, 30%),rgb(5, 147, 131),37
hsl(160, 45%, 32%),rgb(44, 118, 93),66
hsl(129, 50%, 54%),rgb(79, 196, 96),114
hsl(165, 83%, 47%),rgb(20, 219, 169),43

Generated: 2026-09-06 17:53:04
```
