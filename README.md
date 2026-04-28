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

![#210098](https://img.shields.io/badge/-%23210098?style=flat&logo=none) ![#9C8BCF](https://img.shields.io/badge/-%239C8BCF?style=flat&logo=none) ![#5FCD96](https://img.shields.io/badge/-%235FCD96?style=flat&logo=none) ![#B2234E](https://img.shields.io/badge/-%23B2234E?style=flat&logo=none) ![#2C3881](https://img.shields.io/badge/-%232C3881?style=flat&logo=none) ![#5BB7DB](https://img.shields.io/badge/-%235BB7DB?style=flat&logo=none) ![#E55B90](https://img.shields.io/badge/-%23E55B90?style=flat&logo=none) ![#57872F](https://img.shields.io/badge/-%2357872F?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-04-28 10:06:40
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(253, 99%, 30%) |  rgb(33, 0, 152)   | #210098 | 55 |
| 2 | hsl(255, 42%, 68%) | rgb(156, 139, 207) | #9C8BCF |146 |
| 3 | hsl(150, 53%, 59%) | rgb(95, 205, 150)  | #5FCD96 |115 |
| 4 | hsl(342, 67%, 42%) |  rgb(178, 35, 78)  | #B2234E |132 |
| 5 | hsl(231, 49%, 34%) |  rgb(44, 56, 129)  | #2C3881 | 61 |
| 6 | hsl(197, 64%, 61%) | rgb(91, 183, 219)  | #5BB7DB |116 |
| 7 | hsl(337, 73%, 63%) | rgb(229, 91, 144)  | #E55B90 |175 |
| 8 | hsl(93, 48%, 36%)  |  rgb(87, 135, 47)  | #57872F |107 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(253, 99%, 30%),rgb(33, 0, 152),55
hsl(255, 42%, 68%),rgb(156, 139, 207),146
hsl(150, 53%, 59%),rgb(95, 205, 150),115
hsl(342, 67%, 42%),rgb(178, 35, 78),132
hsl(231, 49%, 34%),rgb(44, 56, 129),61
hsl(197, 64%, 61%),rgb(91, 183, 219),116
hsl(337, 73%, 63%),rgb(229, 91, 144),175
hsl(93, 48%, 36%),rgb(87, 135, 47),107

Generated: 2026-04-28 10:06:40
```
