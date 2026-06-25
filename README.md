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

![#BB62CA](https://img.shields.io/badge/-%23BB62CA?style=flat&logo=none) ![#23DAE1](https://img.shields.io/badge/-%2323DAE1?style=flat&logo=none) ![#F57950](https://img.shields.io/badge/-%23F57950?style=flat&logo=none) ![#AEA913](https://img.shields.io/badge/-%23AEA913?style=flat&logo=none) ![#63B908](https://img.shields.io/badge/-%2363B908?style=flat&logo=none) ![#816B21](https://img.shields.io/badge/-%23816B21?style=flat&logo=none) ![#3FE00A](https://img.shields.io/badge/-%233FE00A?style=flat&logo=none) ![#F56FC2](https://img.shields.io/badge/-%23F56FC2?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-25 18:02:59
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(291, 50%, 59%) | rgb(187, 98, 202)  | #BB62CA |176 |
| 2 | hsl(182, 76%, 51%) | rgb(35, 218, 225)  | #23DAE1 | 80 |
| 3 | hsl(15, 90%, 64%)  | rgb(245, 121, 80)  | #F57950 |210 |
| 4 | hsl(58, 80%, 38%)  | rgb(174, 169, 19)  | #AEA913 |142 |
| 5 | hsl(89, 91%, 38%)  |  rgb(99, 185, 8)   | #63B908 |112 |
| 6 | hsl(46, 59%, 32%)  | rgb(129, 107, 33)  | #816B21 |137 |
| 7 | hsl(105, 91%, 46%) |  rgb(63, 224, 10)  | #3FE00A | 76 |
| 8 | hsl(323, 88%, 70%) | rgb(245, 111, 194) | #F56FC2 |212 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(291, 50%, 59%),rgb(187, 98, 202),176
hsl(182, 76%, 51%),rgb(35, 218, 225),80
hsl(15, 90%, 64%),rgb(245, 121, 80),210
hsl(58, 80%, 38%),rgb(174, 169, 19),142
hsl(89, 91%, 38%),rgb(99, 185, 8),112
hsl(46, 59%, 32%),rgb(129, 107, 33),137
hsl(105, 91%, 46%),rgb(63, 224, 10),76
hsl(323, 88%, 70%),rgb(245, 111, 194),212

Generated: 2026-06-25 18:02:59
```
