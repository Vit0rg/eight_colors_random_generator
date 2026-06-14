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

![#873FA6](https://img.shields.io/badge/-%23873FA6?style=flat&logo=none) ![#68D86E](https://img.shields.io/badge/-%2368D86E?style=flat&logo=none) ![#0F03B8](https://img.shields.io/badge/-%230F03B8?style=flat&logo=none) ![#38E8F4](https://img.shields.io/badge/-%2338E8F4?style=flat&logo=none) ![#D88CBA](https://img.shields.io/badge/-%23D88CBA?style=flat&logo=none) ![#47CCEA](https://img.shields.io/badge/-%2347CCEA?style=flat&logo=none) ![#1E9459](https://img.shields.io/badge/-%231E9459?style=flat&logo=none) ![#C37902](https://img.shields.io/badge/-%23C37902?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-14 02:44:01
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(282, 45%, 45%) | rgb(135, 63, 166)  | #873FA6 |133 |
| 2 | hsl(123, 59%, 63%) | rgb(104, 216, 110) | #68D86E |114 |
| 3 | hsl(244, 96%, 37%) |  rgb(15, 3, 184)   | #0F03B8 | 20 |
| 4 | hsl(184, 90%, 59%) | rgb(56, 232, 244)  | #38E8F4 | 87 |
| 5 | hsl(324, 50%, 70%) | rgb(216, 140, 186) | #D88CBA |182 |
| 6 | hsl(191, 80%, 60%) | rgb(71, 204, 234)  | #47CCEA | 81 |
| 7 | hsl(150, 66%, 35%) |  rgb(30, 148, 89)  | #1E9459 | 72 |
| 8 | hsl(37, 97%, 39%)  |  rgb(195, 121, 2)  | #C37902 |172 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(282, 45%, 45%),rgb(135, 63, 166),133
hsl(123, 59%, 63%),rgb(104, 216, 110),114
hsl(244, 96%, 37%),rgb(15, 3, 184),20
hsl(184, 90%, 59%),rgb(56, 232, 244),87
hsl(324, 50%, 70%),rgb(216, 140, 186),182
hsl(191, 80%, 60%),rgb(71, 204, 234),81
hsl(150, 66%, 35%),rgb(30, 148, 89),72
hsl(37, 97%, 39%),rgb(195, 121, 2),172

Generated: 2026-06-14 02:44:01
```
