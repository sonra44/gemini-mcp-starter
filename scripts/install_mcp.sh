#!/usr/bin/env bash
# install dependencies for Gemini MCP starter
set -e

# install ripgrep if not present
if ! command -v rg >/dev/null 2>&1; then
  echo "Installing ripgrep via apt-get..."
  sudo apt-get update && sudo apt-get install -y ripgrep
fi

# install Gemini CLI if not present
if ! command -v gemini >/dev/null 2>&1; then
  echo "Installing Gemini CLI via npm..."
  npm install -g @google/gemini-cli
fi

# Prewarm MCP servers to ensure they are installed when running npx later
npx mcp-ripgrep --help >/dev/null 2>&1 || true
npx mcp-knowledge-graph --help >/dev/null 2>&1 || true
npx @cyanheads/git-mcp-server --help >/dev/null 2>&1 || true

echo "Dependencies installed."
