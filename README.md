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

![#D08576](https://img.shields.io/badge/-%23D08576?style=flat&logo=none) ![#CA7195](https://img.shields.io/badge/-%23CA7195?style=flat&logo=none) ![#E7272A](https://img.shields.io/badge/-%23E7272A?style=flat&logo=none) ![#6FA8E1](https://img.shields.io/badge/-%236FA8E1?style=flat&logo=none) ![#329D2E](https://img.shields.io/badge/-%23329D2E?style=flat&logo=none) ![#34FD48](https://img.shields.io/badge/-%2334FD48?style=flat&logo=none) ![#1B38A1](https://img.shields.io/badge/-%231B38A1?style=flat&logo=none) ![#B14724](https://img.shields.io/badge/-%23B14724?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-22 01:47:12
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(10, 49%, 64%)  | rgb(208, 133, 118) | #D08576 |180 |
| 2 | hsl(336, 46%, 62%) | rgb(202, 113, 149) | #CA7195 |175 |
| 3 | hsl(359, 80%, 53%) |  rgb(231, 39, 42)  | #E7272A |203 |
| 4 | hsl(210, 66%, 66%) | rgb(111, 168, 225) | #6FA8E1 |110 |
| 5 | hsl(118, 54%, 40%) |  rgb(50, 157, 46)  | #329D2E | 71 |
| 6 | hsl(126, 99%, 60%) |  rgb(52, 253, 72)  | #34FD48 | 83 |
| 7 | hsl(227, 71%, 37%) |  rgb(27, 56, 161)  | #1B38A1 | 61 |
| 8 | hsl(15, 66%, 42%)  |  rgb(177, 71, 36)  | #B14724 |131 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(10, 49%, 64%),rgb(208, 133, 118),180
hsl(336, 46%, 62%),rgb(202, 113, 149),175
hsl(359, 80%, 53%),rgb(231, 39, 42),203
hsl(210, 66%, 66%),rgb(111, 168, 225),110
hsl(118, 54%, 40%),rgb(50, 157, 46),71
hsl(126, 99%, 60%),rgb(52, 253, 72),83
hsl(227, 71%, 37%),rgb(27, 56, 161),61
hsl(15, 66%, 42%),rgb(177, 71, 36),131

Generated: 2026-07-22 01:47:12
```
