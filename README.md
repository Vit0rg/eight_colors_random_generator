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

![#128B63](https://img.shields.io/badge/-%23128B63?style=flat&logo=none) ![#C96B35](https://img.shields.io/badge/-%23C96B35?style=flat&logo=none) ![#3D9D97](https://img.shields.io/badge/-%233D9D97?style=flat&logo=none) ![#D0667A](https://img.shields.io/badge/-%23D0667A?style=flat&logo=none) ![#4F269B](https://img.shields.io/badge/-%234F269B?style=flat&logo=none) ![#3A6087](https://img.shields.io/badge/-%233A6087?style=flat&logo=none) ![#982B1F](https://img.shields.io/badge/-%23982B1F?style=flat&logo=none) ![#6177DB](https://img.shields.io/badge/-%236177DB?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-02 02:02:53
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(160, 77%, 31%) |  rgb(18, 139, 99)  | #128B63 | 36 |
| 2 | hsl(22, 58%, 50%)  | rgb(201, 107, 53)  | #C96B35 |173 |
| 3 | hsl(176, 44%, 43%) | rgb(61, 157, 151)  | #3D9D97 | 73 |
| 4 | hsl(349, 53%, 61%) | rgb(208, 102, 122) | #D0667A |174 |
| 5 | hsl(261, 60%, 38%) |  rgb(79, 38, 155)  | #4F269B | 97 |
| 6 | hsl(210, 40%, 38%) |  rgb(58, 96, 135)  | #3A6087 | 67 |
| 7 |  hsl(6, 66%, 36%)  |  rgb(152, 43, 31)  | #982B1F |131 |
| 8 | hsl(229, 63%, 62%) | rgb(97, 119, 219)  | #6177DB |104 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(160, 77%, 31%),rgb(18, 139, 99),36
hsl(22, 58%, 50%),rgb(201, 107, 53),173
hsl(176, 44%, 43%),rgb(61, 157, 151),73
hsl(349, 53%, 61%),rgb(208, 102, 122),174
hsl(261, 60%, 38%),rgb(79, 38, 155),97
hsl(210, 40%, 38%),rgb(58, 96, 135),67
hsl(6, 66%, 36%),rgb(152, 43, 31),131
hsl(229, 63%, 62%),rgb(97, 119, 219),104

Generated: 2026-09-02 02:02:53
```
