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

![#D2E830](https://img.shields.io/badge/-%23D2E830?style=flat&logo=none) ![#2A63E8](https://img.shields.io/badge/-%232A63E8?style=flat&logo=none) ![#C571BA](https://img.shields.io/badge/-%23C571BA?style=flat&logo=none) ![#363A85](https://img.shields.io/badge/-%23363A85?style=flat&logo=none) ![#4BBEB2](https://img.shields.io/badge/-%234BBEB2?style=flat&logo=none) ![#3E9883](https://img.shields.io/badge/-%233E9883?style=flat&logo=none) ![#26875D](https://img.shields.io/badge/-%2326875D?style=flat&logo=none) ![#92DB75](https://img.shields.io/badge/-%2392DB75?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-05 11:29:09
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(67, 80%, 55%)  | rgb(210, 232, 48)  | #D2E830 |191 |
| 2 | hsl(222, 81%, 54%) |  rgb(42, 99, 232)  | #2A63E8 | 69 |
| 3 | hsl(308, 42%, 61%) | rgb(197, 113, 186) | #C571BA |176 |
| 4 | hsl(237, 42%, 37%) |  rgb(54, 58, 133)  | #363A85 | 61 |
| 5 | hsl(174, 47%, 52%) | rgb(75, 190, 178)  | #4BBEB2 | 79 |
| 6 | hsl(166, 42%, 42%) | rgb(62, 152, 131)  | #3E9883 | 73 |
| 7 | hsl(154, 56%, 34%) |  rgb(38, 135, 93)  | #26875D | 72 |
| 8 | hsl(103, 59%, 66%) | rgb(146, 219, 117) | #92DB75 |150 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(67, 80%, 55%),rgb(210, 232, 48),191
hsl(222, 81%, 54%),rgb(42, 99, 232),69
hsl(308, 42%, 61%),rgb(197, 113, 186),176
hsl(237, 42%, 37%),rgb(54, 58, 133),61
hsl(174, 47%, 52%),rgb(75, 190, 178),79
hsl(166, 42%, 42%),rgb(62, 152, 131),73
hsl(154, 56%, 34%),rgb(38, 135, 93),72
hsl(103, 59%, 66%),rgb(146, 219, 117),150

Generated: 2026-09-05 11:29:09
```
