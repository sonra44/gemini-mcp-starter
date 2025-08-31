#!/usr/bin/env bash
# Launch Gemini CLI with project settings
set -e

# Navigate to repository root (script is located in scripts/ directory)
SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
cd "$SCRIPT_DIR/.." || exit 1

# Start Gemini CLI
exec gemini
