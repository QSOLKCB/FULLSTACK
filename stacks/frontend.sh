install_frontend() {
  color "🎨 Installing Frontend Stack..."
  sudo pacman -S --noconfirm --needed nodejs npm
  sudo npm install -g vite react tailwindcss pnpm
  log "Frontend tools installed."
}

