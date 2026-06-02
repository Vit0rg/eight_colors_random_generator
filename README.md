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

![#590DA5](https://img.shields.io/badge/-%23590DA5?style=flat&logo=none) ![#062DF3](https://img.shields.io/badge/-%23062DF3?style=flat&logo=none) ![#4F742E](https://img.shields.io/badge/-%234F742E?style=flat&logo=none) ![#7D3A2F](https://img.shields.io/badge/-%237D3A2F?style=flat&logo=none) ![#0D7DBE](https://img.shields.io/badge/-%230D7DBE?style=flat&logo=none) ![#AD008D](https://img.shields.io/badge/-%23AD008D?style=flat&logo=none) ![#E471AC](https://img.shields.io/badge/-%23E471AC?style=flat&logo=none) ![#BBC879](https://img.shields.io/badge/-%23BBC879?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-06-02 02:43:26
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(270, 85%, 35%) |  rgb(89, 13, 165)  | #590DA5 | 91 |
| 2 | hsl(230, 95%, 49%) |  rgb(6, 45, 243)   | #062DF3 | 27 |
| 3 | hsl(92, 43%, 32%)  |  rgb(79, 116, 46)  | #4F742E |101 |
| 4 |  hsl(8, 45%, 34%)  |  rgb(125, 58, 47)  | #7D3A2F | 95 |
| 5 | hsl(202, 87%, 40%) | rgb(13, 125, 190)  | #0D7DBE | 32 |
| 6 |hsl(311, 100%, 34%) |  rgb(173, 0, 141)  | #AD008D |127 |
| 7 | hsl(329, 68%, 67%) | rgb(228, 113, 172) | #E471AC |175 |
| 8 | hsl(70, 42%, 63%)  | rgb(187, 200, 121) | #BBC879 |186 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(270, 85%, 35%),rgb(89, 13, 165),91
hsl(230, 95%, 49%),rgb(6, 45, 243),27
hsl(92, 43%, 32%),rgb(79, 116, 46),101
hsl(8, 45%, 34%),rgb(125, 58, 47),95
hsl(202, 87%, 40%),rgb(13, 125, 190),32
hsl(311, 100%, 34%),rgb(173, 0, 141),127
hsl(329, 68%, 67%),rgb(228, 113, 172),175
hsl(70, 42%, 63%),rgb(187, 200, 121),186

Generated: 2026-06-02 02:43:26
```
