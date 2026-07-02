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

![#5520BF](https://img.shields.io/badge/-%235520BF?style=flat&logo=none) ![#627E2E](https://img.shields.io/badge/-%23627E2E?style=flat&logo=none) ![#442C7B](https://img.shields.io/badge/-%23442C7B?style=flat&logo=none) ![#13E12F](https://img.shields.io/badge/-%2313E12F?style=flat&logo=none) ![#40B72D](https://img.shields.io/badge/-%2340B72D?style=flat&logo=none) ![#BF9E06](https://img.shields.io/badge/-%23BF9E06?style=flat&logo=none) ![#2B4FB9](https://img.shields.io/badge/-%232B4FB9?style=flat&logo=none) ![#829CDD](https://img.shields.io/badge/-%23829CDD?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-02 17:27:19
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(260, 71%, 44%) |  rgb(85, 32, 191)  | #5520BF | 98 |
| 2 | hsl(81, 46%, 34%)  |  rgb(98, 126, 46)  | #627E2E |101 |
| 3 | hsl(258, 47%, 33%) |  rgb(68, 44, 123)  | #442C7B | 60 |
| 4 | hsl(128, 84%, 48%) |  rgb(19, 225, 47)  | #13E12F | 41 |
| 5 | hsl(112, 60%, 45%) |  rgb(64, 183, 45)  | #40B72D | 77 |
| 6 | hsl(49, 93%, 39%)  |  rgb(191, 158, 6)  | #BF9E06 |178 |
| 7 | hsl(225, 62%, 45%) |  rgb(43, 79, 185)  | #2B4FB9 | 68 |
| 8 | hsl(223, 58%, 69%) | rgb(130, 156, 221) | #829CDD |146 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(260, 71%, 44%),rgb(85, 32, 191),98
hsl(81, 46%, 34%),rgb(98, 126, 46),101
hsl(258, 47%, 33%),rgb(68, 44, 123),60
hsl(128, 84%, 48%),rgb(19, 225, 47),41
hsl(112, 60%, 45%),rgb(64, 183, 45),77
hsl(49, 93%, 39%),rgb(191, 158, 6),178
hsl(225, 62%, 45%),rgb(43, 79, 185),68
hsl(223, 58%, 69%),rgb(130, 156, 221),146

Generated: 2026-07-02 17:27:19
```
