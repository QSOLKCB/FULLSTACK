install_science() {
  color "🔬 Installing Science Stack..."
  sudo pacman -S --noconfirm --needed python-numpy python-scipy python-pandas python-matplotlib python-seaborn \
  python-sympy python-jupyterlab r octave gnuplot texlive-core texlive-latexextra geogebra freecad
  log "Science stack installed."
}

