install_ai() {
  [[ "$AI" == false ]] && return
  color "🤖 Installing AI Stack..."
  check_cmd python
  python -m venv ~/ai_env
  source ~/ai_env/bin/activate
  pip install --upgrade pip
  pip install torch tensorflow librosa scikit-learn jupyterlab
  log "AI stack installed."
}

