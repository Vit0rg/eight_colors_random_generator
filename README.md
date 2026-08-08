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

![#6AB431](https://img.shields.io/badge/-%236AB431?style=flat&logo=none) ![#2C841F](https://img.shields.io/badge/-%232C841F?style=flat&logo=none) ![#AC2CAE](https://img.shields.io/badge/-%23AC2CAE?style=flat&logo=none) ![#8E83E1](https://img.shields.io/badge/-%238E83E1?style=flat&logo=none) ![#E41FA9](https://img.shields.io/badge/-%23E41FA9?style=flat&logo=none) ![#B2B85A](https://img.shields.io/badge/-%23B2B85A?style=flat&logo=none) ![#5F89D2](https://img.shields.io/badge/-%235F89D2?style=flat&logo=none) ![#6CCFC8](https://img.shields.io/badge/-%236CCFC8?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-08 08:28:28
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(94, 57%, 45%)  | rgb(106, 180, 49)  | #6AB431 |113 |
| 2 | hsl(112, 62%, 32%) |  rgb(44, 132, 31)  | #2C841F | 71 |
| 3 | hsl(299, 59%, 43%) | rgb(172, 44, 174)  | #AC2CAE |133 |
| 4 | hsl(247, 62%, 70%) | rgb(142, 131, 225) | #8E83E1 |146 |
| 5 | hsl(318, 79%, 51%) | rgb(228, 31, 169)  | #E41FA9 |169 |
| 6 | hsl(64, 40%, 54%)  | rgb(178, 184, 90)  | #B2B85A |150 |
| 7 | hsl(218, 56%, 60%) | rgb(95, 137, 210)  | #5F89D2 |110 |
| 8 | hsl(176, 51%, 62%) | rgb(108, 207, 200) | #6CCFC8 |116 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(94, 57%, 45%),rgb(106, 180, 49),113
hsl(112, 62%, 32%),rgb(44, 132, 31),71
hsl(299, 59%, 43%),rgb(172, 44, 174),133
hsl(247, 62%, 70%),rgb(142, 131, 225),146
hsl(318, 79%, 51%),rgb(228, 31, 169),169
hsl(64, 40%, 54%),rgb(178, 184, 90),150
hsl(218, 56%, 60%),rgb(95, 137, 210),110
hsl(176, 51%, 62%),rgb(108, 207, 200),116

Generated: 2026-08-08 08:28:28
```
