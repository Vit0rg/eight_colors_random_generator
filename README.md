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

![#039AEC](https://img.shields.io/badge/-%23039AEC?style=flat&logo=none) ![#DC2CB6](https://img.shields.io/badge/-%23DC2CB6?style=flat&logo=none) ![#1CC49F](https://img.shields.io/badge/-%231CC49F?style=flat&logo=none) ![#B2E835](https://img.shields.io/badge/-%23B2E835?style=flat&logo=none) ![#D17B75](https://img.shields.io/badge/-%23D17B75?style=flat&logo=none) ![#5219AD](https://img.shields.io/badge/-%235219AD?style=flat&logo=none) ![#22B385](https://img.shields.io/badge/-%2322B385?style=flat&logo=none) ![#1777AA](https://img.shields.io/badge/-%231777AA?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-18 02:43:23
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(201, 97%, 47%) |  rgb(3, 154, 236)  | #039AEC | 39 |
| 2 | hsl(313, 72%, 52%) | rgb(220, 44, 182)  | #DC2CB6 |170 |
| 3 | hsl(167, 75%, 44%) | rgb(28, 196, 159)  | #1CC49F | 79 |
| 4 | hsl(78, 80%, 56%)  | rgb(178, 232, 53)  | #B2E835 |155 |
| 5 |  hsl(4, 50%, 64%)  | rgb(209, 123, 117) | #D17B75 |174 |
| 6 | hsl(263, 74%, 39%) |  rgb(82, 25, 173)  | #5219AD | 91 |
| 7 | hsl(161, 68%, 42%) | rgb(34, 179, 133)  | #22B385 | 73 |
| 8 | hsl(201, 76%, 38%) | rgb(23, 119, 170)  | #1777AA | 31 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(201, 97%, 47%),rgb(3, 154, 236),39
hsl(313, 72%, 52%),rgb(220, 44, 182),170
hsl(167, 75%, 44%),rgb(28, 196, 159),79
hsl(78, 80%, 56%),rgb(178, 232, 53),155
hsl(4, 50%, 64%),rgb(209, 123, 117),174
hsl(263, 74%, 39%),rgb(82, 25, 173),91
hsl(161, 68%, 42%),rgb(34, 179, 133),73
hsl(201, 76%, 38%),rgb(23, 119, 170),31

Generated: 2026-06-18 02:43:23
```
