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

![#5896F2](https://img.shields.io/badge/-%235896F2?style=flat&logo=none) ![#6F9710](https://img.shields.io/badge/-%236F9710?style=flat&logo=none) ![#56AD14](https://img.shields.io/badge/-%2356AD14?style=flat&logo=none) ![#44B8D8](https://img.shields.io/badge/-%2344B8D8?style=flat&logo=none) ![#13478F](https://img.shields.io/badge/-%2313478F?style=flat&logo=none) ![#A966D0](https://img.shields.io/badge/-%23A966D0?style=flat&logo=none) ![#66C0BD](https://img.shields.io/badge/-%2366C0BD?style=flat&logo=none) ![#CA677E](https://img.shields.io/badge/-%23CA677E?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-05-22 02:31:54
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(216, 86%, 65%) | rgb(88, 150, 242)  | #5896F2 |111 |
| 2 | hsl(78, 80%, 33%)  | rgb(111, 151, 16)  | #6F9710 |106 |
| 3 | hsl(94, 79%, 38%)  |  rgb(86, 173, 20)  | #56AD14 |106 |
| 4 | hsl(193, 66%, 56%) | rgb(68, 184, 216)  | #44B8D8 | 80 |
| 5 | hsl(215, 76%, 32%) |  rgb(19, 71, 143)  | #13478F | 25 |
| 6 | hsl(278, 53%, 61%) | rgb(169, 102, 208) | #A966D0 |140 |
| 7 | hsl(178, 42%, 58%) | rgb(102, 192, 189) | #66C0BD |116 |
| 8 | hsl(346, 49%, 60%) | rgb(202, 103, 126) | #CA677E |174 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(216, 86%, 65%),rgb(88, 150, 242),111
hsl(78, 80%, 33%),rgb(111, 151, 16),106
hsl(94, 79%, 38%),rgb(86, 173, 20),106
hsl(193, 66%, 56%),rgb(68, 184, 216),80
hsl(215, 76%, 32%),rgb(19, 71, 143),25
hsl(278, 53%, 61%),rgb(169, 102, 208),140
hsl(178, 42%, 58%),rgb(102, 192, 189),116
hsl(346, 49%, 60%),rgb(202, 103, 126),174

Generated: 2026-05-22 02:31:54
```
