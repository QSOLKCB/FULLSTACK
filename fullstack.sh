#!/usr/bin/env bash
set -euo pipefail

# Logging
LOGFILE="$HOME/fullstack_$(date +%Y%m%d_%H%M).log"
exec > >(tee -a "$LOGFILE") 2>&1

# Load utilities
source utils.sh

# Flags
LITE=false
AI=true
AUDIO=true
ASK=false

# Parse arguments
for arg in "$@"; do
  case $arg in
    --lite) LITE=true ;;
    --no-ai) AI=false ;;
    --no-audio) AUDIO=false ;;
    --ask) ASK=true ;;
  esac
done

color "🧠 Starting FULLSTACK installation..."
color "Lite: $LITE | AI: $AI | Audio: $AUDIO | Ask: $ASK"

check_cmd sudo
check_cmd pacman

# Load all stacks
for stack in stacks/*.sh; do
  source "$stack"
done

install_devtools
install_frontend
install_audio
install_science
install_ai

color "✅ Installation complete!"
