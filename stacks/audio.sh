install_audio() {
  echo "🎧 Installing Audio Stack..."
  sudo pacman -S --noconfirm --needed pipewire wireplumber ardour easyeffects
}

