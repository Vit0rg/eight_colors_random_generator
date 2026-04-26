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

![#C836C8](https://img.shields.io/badge/-%23C836C8?style=flat&logo=none) ![#AC77E8](https://img.shields.io/badge/-%23AC77E8?style=flat&logo=none) ![#4EB534](https://img.shields.io/badge/-%234EB534?style=flat&logo=none) ![#C35A7D](https://img.shields.io/badge/-%23C35A7D?style=flat&logo=none) ![#46188A](https://img.shields.io/badge/-%2346188A?style=flat&logo=none) ![#CE2B6C](https://img.shields.io/badge/-%23CE2B6C?style=flat&logo=none) ![#DA8C5C](https://img.shields.io/badge/-%23DA8C5C?style=flat&logo=none) ![#CB67CF](https://img.shields.io/badge/-%23CB67CF?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-26 08:50:17
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(300, 57%, 50%) | rgb(200, 54, 200)  | #C836C8 |170 |
| 2 | hsl(268, 71%, 69%) | rgb(172, 119, 232) | #AC77E8 |141 |
| 3 | hsl(108, 55%, 46%) |  rgb(78, 181, 52)  | #4EB534 |113 |
| 4 | hsl(340, 47%, 56%) | rgb(195, 90, 125)  | #C35A7D |174 |
| 5 | hsl(264, 70%, 32%) |  rgb(70, 24, 138)  | #46188A | 55 |
| 6 | hsl(336, 65%, 49%) | rgb(206, 43, 108)  | #CE2B6C |168 |
| 7 | hsl(23, 63%, 61%)  | rgb(218, 140, 92)  | #DA8C5C |180 |
| 8 | hsl(298, 52%, 61%) | rgb(203, 103, 207) | #CB67CF |176 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(300, 57%, 50%),rgb(200, 54, 200),170
hsl(268, 71%, 69%),rgb(172, 119, 232),141
hsl(108, 55%, 46%),rgb(78, 181, 52),113
hsl(340, 47%, 56%),rgb(195, 90, 125),174
hsl(264, 70%, 32%),rgb(70, 24, 138),55
hsl(336, 65%, 49%),rgb(206, 43, 108),168
hsl(23, 63%, 61%),rgb(218, 140, 92),180
hsl(298, 52%, 61%),rgb(203, 103, 207),176

Generated: 2026-04-26 08:50:17
```
