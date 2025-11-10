#!/usr/bin/env bash
set -euo pipefail

LOGFILE="$HOME/fullstack_$(date +%Y%m%d_%H%M).log"
exec > >(tee -a "$LOGFILE") 2>&1

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

echo "🧠 Starting FULLSTACK installation..."
echo "Lite: $LITE | AI: $AI | Audio: $AUDIO | Ask: $ASK"

# --- Helper functions ---
require() { command -v "$1" >/dev/null 2>&1 || { echo "Missing $1"; exit 1; }; }

install_core() {
  echo "==> Installing Core Developer Stack..."
  sudo pacman -S --noconfirm --needed git neovim zsh docker python nodejs npm
}

install_audio() {
  [[ "$AUDIO" == false ]] && return
  echo "==> Installing Audio Stack..."
  sudo pacman -S --noconfirm --needed pipewire pipewire-pulse wireplumber ardour easyeffects
}

install_ai() {
  [[ "$AI" == false ]] && return
  echo "==> Installing AI Stack..."
  python -m venv ~/ai_env
  source ~/ai_env/bin/activate
  pip install --upgrade pip torch librosa
}

install_frontend() {
  echo "==> Installing Frontend Stack..."
  sudo npm install -g vite react tailwindcss pnpm
}

main() {
  require sudo
  require pacman
  install_core
  install_frontend
  install_audio
  install_ai
  echo "✅ Installation complete!"
}

main "$@"
