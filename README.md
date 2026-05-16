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

![#BE2738](https://img.shields.io/badge/-%23BE2738?style=flat&logo=none) ![#7ABAE5](https://img.shields.io/badge/-%237ABAE5?style=flat&logo=none) ![#B62CDC](https://img.shields.io/badge/-%23B62CDC?style=flat&logo=none) ![#F36FF5](https://img.shields.io/badge/-%23F36FF5?style=flat&logo=none) ![#20881F](https://img.shields.io/badge/-%2320881F?style=flat&logo=none) ![#44ABAB](https://img.shields.io/badge/-%2344ABAB?style=flat&logo=none) ![#8FCF2F](https://img.shields.io/badge/-%238FCF2F?style=flat&logo=none) ![#D83594](https://img.shields.io/badge/-%23D83594?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-16 02:05:08
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(353, 66%, 45%) |  rgb(190, 39, 56)  | #BE2738 |167 |
| 2 | hsl(204, 68%, 69%) | rgb(122, 186, 229) | #7ABAE5 |116 |
| 3 | hsl(287, 72%, 52%) | rgb(182, 44, 220)  | #B62CDC |170 |
| 4 | hsl(299, 88%, 70%) | rgb(243, 111, 245) | #F36FF5 |213 |
| 5 | hsl(120, 62%, 33%) |  rgb(32, 136, 31)  | #20881F | 71 |
| 6 | hsl(180, 43%, 47%) | rgb(68, 171, 171)  | #44ABAB | 73 |
| 7 | hsl(84, 63%, 50%)  | rgb(143, 207, 47)  | #8FCF2F |149 |
| 8 | hsl(325, 68%, 53%) | rgb(216, 53, 148)  | #D83594 |169 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(353, 66%, 45%),rgb(190, 39, 56),167
hsl(204, 68%, 69%),rgb(122, 186, 229),116
hsl(287, 72%, 52%),rgb(182, 44, 220),170
hsl(299, 88%, 70%),rgb(243, 111, 245),213
hsl(120, 62%, 33%),rgb(32, 136, 31),71
hsl(180, 43%, 47%),rgb(68, 171, 171),73
hsl(84, 63%, 50%),rgb(143, 207, 47),149
hsl(325, 68%, 53%),rgb(216, 53, 148),169

Generated: 2026-05-16 02:05:08
```
