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

![#3E8216](https://img.shields.io/badge/-%233E8216?style=flat&logo=none) ![#E1FF3D](https://img.shields.io/badge/-%23E1FF3D?style=flat&logo=none) ![#B9028F](https://img.shields.io/badge/-%23B9028F?style=flat&logo=none) ![#32E03B](https://img.shields.io/badge/-%2332E03B?style=flat&logo=none) ![#ECA363](https://img.shields.io/badge/-%23ECA363?style=flat&logo=none) ![#C97B54](https://img.shields.io/badge/-%23C97B54?style=flat&logo=none) ![#DC3281](https://img.shields.io/badge/-%23DC3281?style=flat&logo=none) ![#933DD5](https://img.shields.io/badge/-%23933DD5?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-17 16:46:10
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(98, 70%, 30%)  |  rgb(62, 130, 22)  | #3E8216 | 70 |
| 2 | hsl(69, 100%, 62%) | rgb(225, 255, 61)  | #E1FF3D |191 |
| 3 | hsl(314, 97%, 37%) |  rgb(185, 2, 143)  | #B9028F |163 |
| 4 | hsl(123, 74%, 54%) |  rgb(50, 224, 59)  | #32E03B | 77 |
| 5 | hsl(28, 79%, 66%)  | rgb(236, 163, 99)  | #ECA363 |216 |
| 6 | hsl(20, 52%, 56%)  | rgb(201, 123, 84)  | #C97B54 |174 |
| 7 | hsl(332, 71%, 53%) | rgb(220, 50, 129)  | #DC3281 |169 |
| 8 | hsl(274, 65%, 54%) | rgb(147, 61, 213)  | #933DD5 |134 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(98, 70%, 30%),rgb(62, 130, 22),70
hsl(69, 100%, 62%),rgb(225, 255, 61),191
hsl(314, 97%, 37%),rgb(185, 2, 143),163
hsl(123, 74%, 54%),rgb(50, 224, 59),77
hsl(28, 79%, 66%),rgb(236, 163, 99),216
hsl(20, 52%, 56%),rgb(201, 123, 84),174
hsl(332, 71%, 53%),rgb(220, 50, 129),169
hsl(274, 65%, 54%),rgb(147, 61, 213),134

Generated: 2026-05-17 16:46:10
```
