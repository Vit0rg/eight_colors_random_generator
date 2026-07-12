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

![#DC9D79](https://img.shields.io/badge/-%23DC9D79?style=flat&logo=none) ![#635FEC](https://img.shields.io/badge/-%23635FEC?style=flat&logo=none) ![#AD2E6B](https://img.shields.io/badge/-%23AD2E6B?style=flat&logo=none) ![#ACCA53](https://img.shields.io/badge/-%23ACCA53?style=flat&logo=none) ![#BECC83](https://img.shields.io/badge/-%23BECC83?style=flat&logo=none) ![#2166F2](https://img.shields.io/badge/-%232166F2?style=flat&logo=none) ![#EA0ED8](https://img.shields.io/badge/-%23EA0ED8?style=flat&logo=none) ![#AB5C1B](https://img.shields.io/badge/-%23AB5C1B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-07-12 09:43:03
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(22, 59%, 67%)  | rgb(220, 157, 121) | #DC9D79 |180 |
| 2 | hsl(242, 79%, 65%) |  rgb(99, 95, 236)  | #635FEC |105 |
| 3 | hsl(331, 58%, 43%) | rgb(173, 46, 107)  | #AD2E6B |132 |
| 4 | hsl(75, 53%, 56%)  | rgb(172, 202, 83)  | #ACCA53 |150 |
| 5 | hsl(72, 42%, 66%)  | rgb(190, 204, 131) | #BECC83 |187 |
| 6 | hsl(220, 89%, 54%) | rgb(33, 102, 242)  | #2166F2 | 69 |
| 7 | hsl(305, 88%, 49%) | rgb(234, 14, 216)  | #EA0ED8 |200 |
| 8 | hsl(27, 72%, 39%)  |  rgb(171, 92, 27)  | #AB5C1B |137 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(22, 59%, 67%),rgb(220, 157, 121),180
hsl(242, 79%, 65%),rgb(99, 95, 236),105
hsl(331, 58%, 43%),rgb(173, 46, 107),132
hsl(75, 53%, 56%),rgb(172, 202, 83),150
hsl(72, 42%, 66%),rgb(190, 204, 131),187
hsl(220, 89%, 54%),rgb(33, 102, 242),69
hsl(305, 88%, 49%),rgb(234, 14, 216),200
hsl(27, 72%, 39%),rgb(171, 92, 27),137

Generated: 2026-07-12 09:43:03
```
