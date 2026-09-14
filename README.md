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

![#766AC2](https://img.shields.io/badge/-%23766AC2?style=flat&logo=none) ![#61BF4E](https://img.shields.io/badge/-%2361BF4E?style=flat&logo=none) ![#3627D7](https://img.shields.io/badge/-%233627D7?style=flat&logo=none) ![#C4639A](https://img.shields.io/badge/-%23C4639A?style=flat&logo=none) ![#1310C0](https://img.shields.io/badge/-%231310C0?style=flat&logo=none) ![#4466E3](https://img.shields.io/badge/-%234466E3?style=flat&logo=none) ![#8A429E](https://img.shields.io/badge/-%238A429E?style=flat&logo=none) ![#13A86D](https://img.shields.io/badge/-%2313A86D?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-09-14 20:03:08
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(248, 42%, 59%) | rgb(118, 106, 194) | #766AC2 |104 |
| 2 | hsl(110, 47%, 53%) |  rgb(97, 191, 78)  | #61BF4E |114 |
| 3 | hsl(245, 69%, 50%) |  rgb(54, 39, 215)  | #3627D7 | 62 |
| 4 | hsl(326, 45%, 58%) | rgb(196, 99, 154)  | #C4639A |175 |
| 5 | hsl(241, 84%, 41%) |  rgb(19, 16, 192)  | #1310C0 | 20 |
| 6 | hsl(227, 74%, 58%) | rgb(68, 102, 227)  | #4466E3 | 68 |
| 7 | hsl(287, 41%, 44%) | rgb(138, 66, 158)  | #8A429E |133 |
| 8 | hsl(156, 79%, 37%) | rgb(19, 168, 109)  | #13A86D | 36 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(248, 42%, 59%),rgb(118, 106, 194),104
hsl(110, 47%, 53%),rgb(97, 191, 78),114
hsl(245, 69%, 50%),rgb(54, 39, 215),62
hsl(326, 45%, 58%),rgb(196, 99, 154),175
hsl(241, 84%, 41%),rgb(19, 16, 192),20
hsl(227, 74%, 58%),rgb(68, 102, 227),68
hsl(287, 41%, 44%),rgb(138, 66, 158),133
hsl(156, 79%, 37%),rgb(19, 168, 109),36

Generated: 2026-09-14 20:03:08
```
