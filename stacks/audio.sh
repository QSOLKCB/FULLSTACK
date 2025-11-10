install_audio() {
  [[ "$AUDIO" == false ]] && return
  color "🎧 Installing Audio Stack..."
  sudo pacman -S --noconfirm --needed pipewire pipewire-pulse wireplumber ardour easyeffects carla helvum
  log "Audio stack installed."
}
