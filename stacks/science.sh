#!/usr/bin/env bash
# ====================================================================
# QSOL-IMC :: Science Stack (VENV Edition)
# Scientific computing, data analysis, and publishing environment
# ====================================================================

install_science() {
  color "🔬 Installing Science Stack..."

  # --- Core system packages ---
  sudo pacman -S --noconfirm --needed \
    python python-pip \
    r octave gnuplot \
    texlive-core texlive-latexextra \
    geogebra freecad

  # --- Create or reuse a dedicated virtual environment ---
  VENV_DIR="$HOME/science_env"
  if [ ! -d "$VENV_DIR" ]; then
    color "🧪 Creating Python virtual environment at $VENV_DIR"
    python -m venv "$VENV_DIR"
  else
    color "♻️  Re-using existing virtual environment"
  fi

  # --- Activate environment ---
  source "$VENV_DIR/bin/activate"
  color "✅ Virtual environment activated: $VENV_DIR"

  # --- Upgrade pip inside the venv ---
  pip install --upgrade pip wheel setuptools

  # --- Install scientific Python packages inside the venv ---
  color "📦 Installing Python scientific packages (numpy, scipy, etc.)..."
  pip install numpy scipy pandas matplotlib seaborn sympy jupyterlab

  # --- Verify installations ---
  color "🧠 Running quick sanity checks..."
  python -c "import numpy, pandas, matplotlib; print('Python stack OK')" || warn "Python module check failed"
  jupyter --version || warn "Jupyter not found inside venv"
  r --version | head -n 1 || warn "R not found in PATH"

  # --- Inform user how to activate later ---
  color "💡 To use the Science environment in the future:"
  echo "    source \"$VENV_DIR/bin/activate\""

  deactivate
  log "Science stack installed with venv at $VENV_DIR"
  color "✅ Science Stack (VENV Edition) installation complete!"
}
