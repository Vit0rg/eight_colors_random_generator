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

![#D3B28C](https://img.shields.io/badge/-%23D3B28C?style=flat&logo=none) ![#FDBC53](https://img.shields.io/badge/-%23FDBC53?style=flat&logo=none) ![#8BD024](https://img.shields.io/badge/-%238BD024?style=flat&logo=none) ![#C68133](https://img.shields.io/badge/-%23C68133?style=flat&logo=none) ![#6345E6](https://img.shields.io/badge/-%236345E6?style=flat&logo=none) ![#3DDC32](https://img.shields.io/badge/-%233DDC32?style=flat&logo=none) ![#2C8ACC](https://img.shields.io/badge/-%232C8ACC?style=flat&logo=none) ![#B54976](https://img.shields.io/badge/-%23B54976?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-30 17:09:35
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(32, 45%, 69%)  | rgb(211, 178, 140) | #D3B28C |181 |
| 2 | hsl(37, 98%, 66%)  | rgb(253, 188, 83)  | #FDBC53 |222 |
| 3 | hsl(84, 70%, 48%)  | rgb(139, 208, 36)  | #8BD024 |149 |
| 4 | hsl(32, 59%, 49%)  | rgb(198, 129, 51)  | #C68133 |179 |
| 5 | hsl(251, 77%, 59%) |  rgb(99, 69, 230)  | #6345E6 | 98 |
| 6 | hsl(116, 71%, 53%) |  rgb(61, 220, 50)  | #3DDC32 | 77 |
| 7 | hsl(205, 64%, 49%) | rgb(44, 138, 204)  | #2C8ACC | 74 |
| 8 | hsl(335, 42%, 50%) | rgb(181, 73, 118)  | #B54976 |168 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(32, 45%, 69%),rgb(211, 178, 140),181
hsl(37, 98%, 66%),rgb(253, 188, 83),222
hsl(84, 70%, 48%),rgb(139, 208, 36),149
hsl(32, 59%, 49%),rgb(198, 129, 51),179
hsl(251, 77%, 59%),rgb(99, 69, 230),98
hsl(116, 71%, 53%),rgb(61, 220, 50),77
hsl(205, 64%, 49%),rgb(44, 138, 204),74
hsl(335, 42%, 50%),rgb(181, 73, 118),168

Generated: 2026-04-30 17:09:35
```
