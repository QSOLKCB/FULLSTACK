install_devtools() {
  color "🧰 Installing Core Developer Tools..."
  sudo pacman -S --noconfirm --needed git neovim zsh docker podman htop btop base-devel
  log "Dev tools installed."
}

