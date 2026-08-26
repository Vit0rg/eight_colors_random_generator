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

![#232484](https://img.shields.io/badge/-%23232484?style=flat&logo=none) ![#8B4A1C](https://img.shields.io/badge/-%238B4A1C?style=flat&logo=none) ![#AC335C](https://img.shields.io/badge/-%23AC335C?style=flat&logo=none) ![#377B2C](https://img.shields.io/badge/-%23377B2C?style=flat&logo=none) ![#3FD4E8](https://img.shields.io/badge/-%233FD4E8?style=flat&logo=none) ![#5B65D0](https://img.shields.io/badge/-%235B65D0?style=flat&logo=none) ![#902BBF](https://img.shields.io/badge/-%23902BBF?style=flat&logo=none) ![#53128B](https://img.shields.io/badge/-%2353128B?style=flat&logo=none)

```
=====================================================================
  Eight Colors - 2026-08-26 08:31:31
=====================================================================

|Num|        HSL         |        RGB         |   Hex   |ANSI|
+-----+----------------------+----------------------+-----------+------+
| 1 | hsl(239, 58%, 33%) |  rgb(35, 36, 132)  | #232484 | 61 |
| 2 | hsl(25, 66%, 33%)  |  rgb(139, 74, 28)  | #8B4A1C |131 |
| 3 | hsl(340, 54%, 44%) |  rgb(172, 51, 92)  | #AC335C |132 |
| 4 | hsl(112, 47%, 33%) |  rgb(55, 123, 44)  | #377B2C | 65 |
| 5 | hsl(187, 79%, 58%) | rgb(63, 212, 232)  | #3FD4E8 | 81 |
| 6 | hsl(235, 56%, 59%) | rgb(91, 101, 208)  | #5B65D0 |104 |
| 7 | hsl(281, 63%, 46%) | rgb(144, 43, 191)  | #902BBF |134 |
| 8 | hsl(272, 77%, 31%) |  rgb(83, 18, 139)  | #53128B | 91 |
+-----+----------------------+----------------------+-----------+------+

CSV Format (HSL, RGB, ANSI):
HSL,RGB,ANSI
hsl(239, 58%, 33%),rgb(35, 36, 132),61
hsl(25, 66%, 33%),rgb(139, 74, 28),131
hsl(340, 54%, 44%),rgb(172, 51, 92),132
hsl(112, 47%, 33%),rgb(55, 123, 44),65
hsl(187, 79%, 58%),rgb(63, 212, 232),81
hsl(235, 56%, 59%),rgb(91, 101, 208),104
hsl(281, 63%, 46%),rgb(144, 43, 191),134
hsl(272, 77%, 31%),rgb(83, 18, 139),91

Generated: 2026-08-26 08:31:31
```
