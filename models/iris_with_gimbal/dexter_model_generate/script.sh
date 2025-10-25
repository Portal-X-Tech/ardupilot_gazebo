#!/usr/bin/env bash
set -euo pipefail

# Usage: ./convert_sdf.sh [INPUT.xacro] [OUTPUT.sdf]
FINAL_SDF=${1:-model.sdf}
INPUT_XACRO=${2:-model.sdf.xacro}
TMP_SDF=$(mktemp)

echo "→ Expanding Xacro: $INPUT_XACRO → $TMP_SDF"
xacro "$INPUT_XACRO" > "$TMP_SDF"

echo "→ Stripping xacro namespace and prefixes → $FINAL_SDF"
sed -e 's/\s*xmlns:xacro="[^"]*"//g' \
    -e 's/xacro://g' \
    "$TMP_SDF" > "$FINAL_SDF"

rm "$TMP_SDF"
echo "✅ Conversion complete: $FINAL_SDF"
