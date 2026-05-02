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

![#48E94B](https://img.shields.io/badge/-%2348E94B?style=flat&logo=none) ![#3811E8](https://img.shields.io/badge/-%233811E8?style=flat&logo=none) ![#3C7BFB](https://img.shields.io/badge/-%233C7BFB?style=flat&logo=none) ![#DA8C10](https://img.shields.io/badge/-%23DA8C10?style=flat&logo=none) ![#10EEDF](https://img.shields.io/badge/-%2310EEDF?style=flat&logo=none) ![#2C2C85](https://img.shields.io/badge/-%232C2C85?style=flat&logo=none) ![#D19900](https://img.shields.io/badge/-%23D19900?style=flat&logo=none) ![#649130](https://img.shields.io/badge/-%23649130?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-02 01:55:27
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(121, 79%, 60%) |  rgb(72, 233, 75)  | #48E94B | 83 |
| 2 | hsl(251, 86%, 49%) |  rgb(56, 17, 232)  | #3811E8 | 57 |
| 3 | hsl(220, 96%, 61%) | rgb(60, 123, 251)  | #3C7BFB | 69 |
| 4 | hsl(37, 86%, 46%)  | rgb(218, 140, 16)  | #DA8C10 |178 |
| 5 | hsl(176, 87%, 50%) | rgb(16, 238, 223)  | #10EEDF | 50 |
| 6 | hsl(240, 50%, 35%) |  rgb(44, 44, 133)  | #2C2C85 | 61 |
| 7 | hsl(44, 100%, 41%) |  rgb(209, 153, 0)  | #D19900 |178 |
| 8 | hsl(88, 50%, 38%)  | rgb(100, 145, 48)  | #649130 |107 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(121, 79%, 60%),rgb(72, 233, 75),83
hsl(251, 86%, 49%),rgb(56, 17, 232),57
hsl(220, 96%, 61%),rgb(60, 123, 251),69
hsl(37, 86%, 46%),rgb(218, 140, 16),178
hsl(176, 87%, 50%),rgb(16, 238, 223),50
hsl(240, 50%, 35%),rgb(44, 44, 133),61
hsl(44, 100%, 41%),rgb(209, 153, 0),178
hsl(88, 50%, 38%),rgb(100, 145, 48),107

Generated: 2026-05-02 01:55:27
```
