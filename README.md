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

![#BE023E](https://img.shields.io/badge/-%23BE023E?style=flat&logo=none) ![#0F9D9D](https://img.shields.io/badge/-%230F9D9D?style=flat&logo=none) ![#238070](https://img.shields.io/badge/-%23238070?style=flat&logo=none) ![#DB89C8](https://img.shields.io/badge/-%23DB89C8?style=flat&logo=none) ![#5A29CB](https://img.shields.io/badge/-%235A29CB?style=flat&logo=none) ![#D7DA7A](https://img.shields.io/badge/-%23D7DA7A?style=flat&logo=none) ![#1883B9](https://img.shields.io/badge/-%231883B9?style=flat&logo=none) ![#D45ED8](https://img.shields.io/badge/-%23D45ED8?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-27 02:01:37
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(341, 97%, 38%) |  rgb(190, 2, 62)   | #BE023E |161 |
| 2 | hsl(180, 82%, 34%) | rgb(15, 157, 157)  | #0F9D9D | 37 |
| 3 | hsl(170, 57%, 32%) | rgb(35, 128, 112)  | #238070 | 72 |
| 4 | hsl(314, 53%, 70%) | rgb(219, 137, 200) | #DB89C8 |182 |
| 5 | hsl(258, 66%, 48%) |  rgb(90, 41, 203)  | #5A29CB | 98 |
| 6 | hsl(62, 57%, 67%)  | rgb(215, 218, 122) | #D7DA7A |186 |
| 7 | hsl(200, 77%, 41%) | rgb(24, 131, 185)  | #1883B9 | 38 |
| 8 | hsl(298, 61%, 61%) | rgb(212, 94, 216)  | #D45ED8 |176 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(341, 97%, 38%),rgb(190, 2, 62),161
hsl(180, 82%, 34%),rgb(15, 157, 157),37
hsl(170, 57%, 32%),rgb(35, 128, 112),72
hsl(314, 53%, 70%),rgb(219, 137, 200),182
hsl(258, 66%, 48%),rgb(90, 41, 203),98
hsl(62, 57%, 67%),rgb(215, 218, 122),186
hsl(200, 77%, 41%),rgb(24, 131, 185),38
hsl(298, 61%, 61%),rgb(212, 94, 216),176

Generated: 2026-07-27 02:01:37
```
