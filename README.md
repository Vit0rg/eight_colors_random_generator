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

![#2FBF7A](https://img.shields.io/badge/-%232FBF7A?style=flat&logo=none) ![#93B757](https://img.shields.io/badge/-%2393B757?style=flat&logo=none) ![#21A59A](https://img.shields.io/badge/-%2321A59A?style=flat&logo=none) ![#8C3A67](https://img.shields.io/badge/-%238C3A67?style=flat&logo=none) ![#D72767](https://img.shields.io/badge/-%23D72767?style=flat&logo=none) ![#E48A75](https://img.shields.io/badge/-%23E48A75?style=flat&logo=none) ![#377DF5](https://img.shields.io/badge/-%23377DF5?style=flat&logo=none) ![#D00523](https://img.shields.io/badge/-%23D00523?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-20 02:32:32
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(151, 60%, 47%) | rgb(47, 191, 122)  | #2FBF7A | 78 |
| 2 | hsl(82, 40%, 53%)  | rgb(147, 183, 87)  | #93B757 |150 |
| 3 | hsl(175, 66%, 39%) | rgb(33, 165, 154)  | #21A59A | 73 |
| 4 | hsl(327, 41%, 39%) | rgb(140, 58, 103)  | #8C3A67 |132 |
| 5 | hsl(338, 69%, 50%) | rgb(215, 39, 103)  | #D72767 |168 |
| 6 | hsl(11, 68%, 68%)  | rgb(228, 138, 117) | #E48A75 |180 |
| 7 | hsl(218, 91%, 59%) | rgb(55, 125, 245)  | #377DF5 | 69 |
| 8 | hsl(351, 95%, 42%) |  rgb(208, 5, 35)   | #D00523 |161 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(151, 60%, 47%),rgb(47, 191, 122),78
hsl(82, 40%, 53%),rgb(147, 183, 87),150
hsl(175, 66%, 39%),rgb(33, 165, 154),73
hsl(327, 41%, 39%),rgb(140, 58, 103),132
hsl(338, 69%, 50%),rgb(215, 39, 103),168
hsl(11, 68%, 68%),rgb(228, 138, 117),180
hsl(218, 91%, 59%),rgb(55, 125, 245),69
hsl(351, 95%, 42%),rgb(208, 5, 35),161

Generated: 2026-06-20 02:32:32
```
