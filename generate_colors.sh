#!/usr/bin/env bash

# Eight Colors Random Generator
# Generates 8 random colors every 4 hours

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TIMESTAMP=$(date '+%m_%d_%Y_%H_%M')
OUTPUT_FILE="${SCRIPT_DIR}/${TIMESTAMP}_colors"

# Generate random number in range
rand_range() {
    local min=$1
    local max=$2
    echo $(( RANDOM % (max - min + 1) + min ))
}

# HSL to RGB conversion
hsl_to_rgb() {
    local h=$1
    local s=$2
    local l=$3

    # Normalize HSL to 0-1 range
    local h_norm=$(awk "BEGIN {printf \"%.4f\", $h / 360.0}")
    local s_norm=$(awk "BEGIN {printf \"%.4f\", $s / 100.0}")
    local l_norm=$(awk "BEGIN {printf \"%.4f\", $l / 100.0}")

    if (( $(awk "BEGIN {print ($s_norm == 0) ? 1 : 0}") )); then
        local r=$l_norm
        local g=$l_norm
        local b=$l_norm
    else
        local q=$(awk "BEGIN {printf \"%.4f\", ($l_norm < 0.5) ? $l_norm * (1 + $s_norm) : $l_norm + $s_norm - $l_norm * $s_norm}")
        local p=$(awk "BEGIN {printf \"%.4f\", 2 * $l_norm - $q}")

        local h_temp
        h_temp=$(awk "BEGIN {printf \"%.4f\", $h_norm + 1.0/3.0}")
        local t_r=$(awk "BEGIN {
            h = $h_temp
            if (h < 0) h += 1
            if (h > 1) h -= 1
            if (6 * h < 1) print $p + ($q - $p) * 6 * h
            else if (2 * h < 1) print $q
            else if (3 * h < 2) print $p + ($q - $p) * (2.0/3.0 - h) * 6
            else print $p
        }")

        h_temp=$(awk "BEGIN {printf \"%.4f\", $h_norm}")
        local t_g=$(awk "BEGIN {
            h = $h_temp
            if (h < 0) h += 1
            if (h > 1) h -= 1
            if (6 * h < 1) print $p + ($q - $p) * 6 * h
            else if (2 * h < 1) print $q
            else if (3 * h < 2) print $p + ($q - $p) * (2.0/3.0 - h) * 6
            else print $p
        }")

        h_temp=$(awk "BEGIN {printf \"%.4f\", $h_norm - 1.0/3.0}")
        local t_b=$(awk "BEGIN {
            h = $h_temp
            if (h < 0) h += 1
            if (h > 1) h -= 1
            if (6 * h < 1) print $p + ($q - $p) * 6 * h
            else if (2 * h < 1) print $q
            else if (3 * h < 2) print $p + ($q - $p) * (2.0/3.0 - h) * 6
            else print $p
        }")

        local r=$t_r
        local g=$t_g
        local b=$t_b
    fi

    R=$(awk "BEGIN {printf \"%d\", $r * 255}")
    G=$(awk "BEGIN {printf \"%d\", $g * 255}")
    B=$(awk "BEGIN {printf \"%d\", $b * 255}")
}

# RGB to ANSI 256 color
rgb_to_ansi() {
    local r=$1
    local g=$2
    local b=$3

    # Check if it matches one of the 16 standard colors
    local gray=$(( (r + g + b) / 3 ))

    # Calculate the closest ANSI 256 color
    local ansi_r=$(( (r * 5 + 128) / 256 ))
    local ansi_g=$(( (g * 5 + 128) / 256 ))
    local ansi_b=$(( (b * 5 + 128) / 256 ))

    [ $ansi_r -gt 5 ] && ansi_r=5
    [ $ansi_g -gt 5 ] && ansi_g=5
    [ $ansi_b -gt 5 ] && ansi_b=5

    echo $(( 16 + 36 * ansi_r + 6 * ansi_g + ansi_b ))
}

# Generate 8 colors
declare -a HUES SATS LITS RS GS BS ANSI_COLORS

for i in {0..7}; do
    HUES[$i]=$(rand_range 0 359)
    SATS[$i]=$(rand_range 40 100)
    LITS[$i]=$(rand_range 30 70)

    hsl_to_rgb ${HUES[$i]} ${SATS[$i]} ${LITS[$i]}
    RS[$i]=$R
    GS[$i]=$G
    BS[$i]=$B
    ANSI_COLORS[$i]=$(rgb_to_ansi ${RS[$i]} ${GS[$i]} ${BS[$i]})
done

# Get current date and hour
CURRENT_DATE=$(date '+%Y-%m-%d %H:%M:%S')
CURRENT_HOUR=$(date '+%H')

# Create output
{
    echo "====================================================================="
    echo "  Eight Colors - ${CURRENT_DATE}"
    echo "====================================================================="
    echo ""

    # Column widths (content only, not counting borders)
    W_NUM=3
    W_HSL=20
    W_RGB=20
    W_HEX=9
    W_ANSI=4

    # Print a centered cell (left-padded text with right border)
    cell() {
        local text="$1"
        local width=$2
        local len=${#text}
        local pad=$(( (width - len) / 2 ))
        local pad_right=$(( width - len - pad ))
        printf "%*s%s%*s|" "$pad" "" "$text" "$pad_right" ""
    }

    # Row start
    row_start() {
        printf "|"
    }

    # Separator line
    sep() {
        printf "+"
        for w in "$@"; do
            printf '%*s+' "$((w + 2))" '' | tr ' ' '-'
        done
        printf "\n"
    }

    # Header row
    row_start
    cell "Num" $W_NUM
    cell "HSL" $W_HSL
    cell "RGB" $W_RGB
    cell "Hex" $W_HEX
    cell "ANSI" $W_ANSI
    printf "\n"
    sep $W_NUM $W_HSL $W_RGB $W_HEX $W_ANSI

    # Table rows
    for i in {0..7}; do
        hsl="hsl(${HUES[$i]}, ${SATS[$i]}%, ${LITS[$i]}%)"
        rgb="rgb(${RS[$i]}, ${GS[$i]}, ${BS[$i]})"
        hex=$(printf "#%02X%02X%02X" ${RS[$i]} ${GS[$i]} ${BS[$i]})
        ansi=${ANSI_COLORS[$i]}

        row_start
        cell "$((i+1))" $W_NUM
        cell "$hsl" $W_HSL
        cell "$rgb" $W_RGB
        cell "$hex" $W_HEX
        cell "$ansi" $W_ANSI
        printf "\n"
    done
    sep $W_NUM $W_HSL $W_RGB $W_HEX $W_ANSI

    echo ""
    echo "CSV Format (HSL, RGB, ANSI):"
    echo "HSL,RGB,ANSI"

    for i in {0..7}; do
        hsl="hsl(${HUES[$i]}, ${SATS[$i]}%, ${LITS[$i]}%)"
        rgb="rgb(${RS[$i]}, ${GS[$i]}, ${BS[$i]})"
        ansi=${ANSI_COLORS[$i]}
        echo "${hsl},${rgb},${ansi}"
    done

    echo ""
    echo "Generated: ${CURRENT_DATE}"
} > "${OUTPUT_FILE}"

echo "Colors saved to ${OUTPUT_FILE}"

# Update README.md with the latest palette
README="${SCRIPT_DIR}/README.md"

# Build the palette block from the output file (header through end)
PALETTE_BLOCK=$(cat "${OUTPUT_FILE}")

# If README exists, update the palette section; otherwise create it
if [[ -f "${README}" ]]; then
    # Remove old palette section if present
    if grep -q '## Latest Palette' "${README}"; then
        sed -i '/## Latest Palette/,$ d' "${README}"
    fi
    # Append new palette section
    {
        echo ""
        echo "## Latest Palette"
        echo ""
        echo '```'
        echo "${PALETTE_BLOCK}"
        echo '```'
    } >> "${README}"
else
    {
        echo "# Eight Colors Random Generator"
        echo ""
        echo "Generates 8 random colors with HSL, RGB, Hex, and ANSI values every 4 hours via GitHub Actions."
        echo ""
        echo "## How It Works"
        echo ""
        echo "A shell script generates 8 random colors by picking random HSL values, converting to RGB, and calculating the closest ANSI 256 color code."
        echo ""
        echo "## Output"
        echo ""
        echo "Each run creates a file named \`MM_DD_YYYY_HH_MM_colors\`."
        echo ""
        echo "## Latest Palette"
        echo ""
        echo '```'
        echo "${PALETTE_BLOCK}"
        echo '```'
    } > "${README}"
fi
